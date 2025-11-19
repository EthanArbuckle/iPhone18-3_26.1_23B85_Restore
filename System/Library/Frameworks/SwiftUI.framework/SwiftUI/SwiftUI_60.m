void *assignWithTake for UIKitSearchBarAdaptor(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  type metadata accessor for Binding<SearchFieldState>(0);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  *(v8 + 1) = *(a2 + v7 + 2);
  v8[8] = *(a2 + v7 + 8);
  *(v8 + 1) = *(a2 + v7 + 4);
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v12 = type metadata accessor for AttributedString();
  (*(*(v12 - 8) + 40))(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v13 = v10[11];
  v14 = &v8[v13];
  v15 = &v9[v13];
  *v14 = *v15;
  v14[4] = v15[4];
  v16 = type metadata accessor for SearchFieldConfiguration(0);
  v17 = v16[6];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = *(a1 + v17 + 8);
  if (v20 == 255)
  {
    goto LABEL_5;
  }

  v21 = v19[8];
  if (v21 == 255)
  {
    outlined destroy of PlatformItemCollection(v18);
LABEL_5:
    *v18 = *v19;
    *(v18 + 8) = v19[8];
    goto LABEL_6;
  }

  v22 = *v18;
  *v18 = *v19;
  *(v18 + 8) = v21 & 1;
  outlined consume of PlatformItemCollection.Storage(v22, v20 & 1);
LABEL_6:
  *(a1 + v16[7]) = *(a2 + v16[7]);
  v23 = v16[8];
  v24 = a1 + v23;
  v25 = a2 + v23;
  LOBYTE(v23) = *(a2 + v23 + 16);
  v26 = *v24;
  v27 = *(v24 + 1);
  v28 = v24[16];
  *v24 = *v25;
  v24[16] = v23;
  outlined consume of Text.Storage(v26, v27, v28);
  *(v24 + 3) = *(v25 + 3);

  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

unint64_t lazy protocol witness table accessor for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault()
{
  result = lazy protocol witness table cache variable for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault;
  if (!lazy protocol witness table cache variable for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault;
  if (!lazy protocol witness table cache variable for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault;
  if (!lazy protocol witness table cache variable for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault;
  if (!lazy protocol witness table cache variable for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault;
  if (!lazy protocol witness table cache variable for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault;
  if (!lazy protocol witness table cache variable for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault;
  if (!lazy protocol witness table cache variable for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault;
  if (!lazy protocol witness table cache variable for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIKitSearchBarAdaptor.Location and conformance UIKitSearchBarAdaptor.Location()
{
  result = lazy protocol witness table cache variable for type UIKitSearchBarAdaptor.Location and conformance UIKitSearchBarAdaptor.Location;
  if (!lazy protocol witness table cache variable for type UIKitSearchBarAdaptor.Location and conformance UIKitSearchBarAdaptor.Location)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitSearchBarAdaptor.Location and conformance UIKitSearchBarAdaptor.Location);
  }

  return result;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance LazySearchSuggestionsKey()
{

  return sub_18C0AFE48();
}

uint64_t instantiation function for generic protocol witness table for _DisabledPickerContent<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for _DisabledPickerContent(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (v6 <= 7 && (v5 + 1) <= 0x18 && (*(v4 + 80) & 0x100000) == 0)
  {
    (*(v4 + 16))(a1);
    *(v3 + v5) = *(a2 + v5);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 16) & ~v6));
  }

  return v3;
}

uint64_t assignWithCopy for _DisabledPickerContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *(*(v5 + 40) + a1) = *(*(v5 + 40) + a2);
  return a1;
}

uint64_t initializeWithTake for _DisabledPickerContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *(*(v5 + 32) + a1) = *(*(v5 + 32) + a2);
  return a1;
}

uint64_t assignWithTake for _DisabledPickerContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *(*(v5 + 24) + a1) = *(*(v5 + 24) + a2);
  return a1;
}

uint64_t _RowVisitationContext.wantsClippedBackground.getter(uint64_t a1)
{
  type metadata accessor for DeleteInteraction?(0, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v9 - v4;
  v9[1] = *(v1 + *(a1 + 40));
  ViewTraitCollection.moveInteraction.getter(v9 - v4);
  v6 = type metadata accessor for MoveInteraction();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of DeleteInteraction?(v5, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction);
    return 0;
  }

  else
  {
    v7 = v5[16];
    outlined destroy of MoveInteraction(v5, type metadata accessor for MoveInteraction);
  }

  return v7;
}

Swift::Bool __swiftcall _RowVisitationContext.canHandleDropInsert(items:)(Swift::OpaquePointer items)
{

  v2 = ViewTraitCollection.insertInteraction(for:)(0);

  if (v2 == 1)
  {
    return 0;
  }

  v4 = OnInsertInteraction.canInsert(_:)(items);
  outlined consume of OnInsertInteraction?(v2);
  return v4;
}

uint64_t _RowVisitationContext.intelligenceDataSourceItemID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[0] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  _RowVisitationContext.selectionValue(respectSelectionDisabled:)(0, a1, v7);
  if ((*(v8 + 48))(v7, 1, AssociatedTypeWitness) == 1)
  {
    (*(v5 + 8))(v7, v4);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v13 = *(AssociatedConformanceWitness + 24);
    v14 = swift_checkMetadataState();
    v13(v25, v14, AssociatedConformanceWitness);
    v23 = v25[0];
    v24 = v25[1];
    v15 = _ViewList_ID.allExplicitIDs.getter();

    v17 = *(v15 + 16);
    v18 = v21[0];
    if (v17)
    {
      v19 = 0;
      while (v19 < *(v15 + 16))
      {
        v20 = *(v15 + 8 * v19 + 32);
        v21[1] = v20;
        lazy protocol witness table accessor for type UniqueID and conformance UniqueID();

        AnyHashable2.as<A>(type:)();
        if (v22)
        {

          v25[0] = v20;
          lazy protocol witness table accessor for type AnyHashable2 and conformance AnyHashable2();
          return AnyHashable.init<A>(_:)();
        }

        if (v17 == ++v19)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      *(v18 + 32) = 0;
      *v18 = 0u;
      *(v18 + 16) = 0u;
    }
  }

  else
  {
    (*(v8 + 32))(v11, v7, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    _convertToAnyHashable<A>(_:)();
    return (*(v8 + 8))(v11, AssociatedTypeWitness);
  }

  return result;
}

uint64_t protocol witness for ListCellContent.viewListID.getter in conformance _ViewList_View@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  a1[1] = v2;
}

unint64_t lazy protocol witness table accessor for type AnyHashable2 and conformance AnyHashable2()
{
  result = lazy protocol witness table cache variable for type AnyHashable2 and conformance AnyHashable2;
  if (!lazy protocol witness table cache variable for type AnyHashable2 and conformance AnyHashable2)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyHashable2 and conformance AnyHashable2);
  }

  return result;
}

uint64_t outlined consume of OnInsertInteraction?(uint64_t result)
{
  if (result != 1)
  {
    return outlined consume of OnInsertConfiguration?(result);
  }

  return result;
}

uint64_t outlined consume of OnInsertConfiguration?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for _RowVisitationContext(void *a1, void *a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v37 = *(v3 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = swift_getAssociatedTypeWitness();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v6;
  v8 = *(v5 + 64);
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  if (*(v10 + 84))
  {
    v12 = *(v10 + 64);
  }

  else
  {
    v12 = *(v10 + 64) + 1;
  }

  v13 = v11 | v6 | *(v3 + 80) & 0xF8;
  if (((*(v10 + 80) | v6 | *(v3 + 80)) & 0x100000) != 0 || ((v14 = ((v37 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v15 = v8 + 7, ((-9 - v11 - ((v15 + ((v14 + v7) & ~v7)) & 0xFFFFFFFFFFFFFFF8)) | v11) - v12 - 3 >= 0xFFFFFFFFFFFFFFE7) ? (v16 = v13 > 7) : (v16 = 1), v16))
  {
    v30 = *a2;
    *a1 = *a2;
    v19 = (v30 + (((v13 | 7) + 16) & ~(v13 | 7)));
  }

  else
  {
    v33 = v4;
    __n = v12;
    v17 = v9;
    v18 = a2;
    v19 = a1;
    (*(v3 + 16))(a1, v18, AssociatedTypeWitness);
    *((a1 + v37 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v18 + v37 + 7) & 0xFFFFFFFFFFFFFFF8);
    v20 = v14 | v7;
    v21 = (a1 + (v14 | v7)) & ~v7;
    v22 = (v18 + v20) & ~v7;
    (*(v5 + 16))(v21, v22, v33);
    v23 = ((v15 + v22) & 0xFFFFFFFFFFFFFFF8);
    v25 = *v23;
    v24 = v23 + 1;
    v26 = ((v15 + v21) & 0xFFFFFFFFFFFFFFF8);
    *v26 = v25;
    v27 = (v26 + 1);
    v28 = *(v10 + 48);

    if (v28(v24, 1, v17))
    {
      v29 = __n;
      memcpy(v27, v24, __n);
    }

    else
    {
      (*(v10 + 16))(v27, v24, v17);
      (*(v10 + 56))(v27, 0, 1, v17);
      v29 = __n;
    }

    v31 = &v27[v29];
    *v31 = *(v24 + v29);
    v31[1] = *(v24 + v29 + 1);
    v31[2] = *(v24 + v29 + 2);
  }

  return v19;
}

uint64_t assignWithCopy for _RowVisitationContext(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 24;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 40) + 7;
  *((v6 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v7 = v6 & 0xFFFFFFFFFFFFFFF8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = v9 + 24;
  v11 = *(v9 + 80);
  v12 = v7 + v11 + 8;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  (*(v9 + 24))(v13, v14, v8);
  v15 = *(v10 + 40) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;

  v18 = swift_getAssociatedTypeWitness();
  v19 = *(v18 - 8);
  v20 = *(v19 + 80);
  v21 = ((v16 + v20 + 8) & ~v20);
  v22 = ((v17 + v20 + 8) & ~v20);
  v23 = *(v19 + 48);
  LODWORD(v16) = v23(v21, 1, v18);
  v24 = v23(v22, 1, v18);
  if (v16)
  {
    if (!v24)
    {
      (*(v19 + 16))(v21, v22, v18);
      (*(v19 + 56))(v21, 0, 1, v18);
      goto LABEL_12;
    }

    v25 = *(v19 + 84);
    v26 = *(v19 + 64);
  }

  else
  {
    if (!v24)
    {
      (*(v19 + 24))(v21, v22, v18);
      goto LABEL_12;
    }

    (*(v19 + 8))(v21, v18);
    v25 = *(v19 + 84);
    v26 = *(v19 + 64);
  }

  if (v25)
  {
    v27 = v26;
  }

  else
  {
    v27 = v26 + 1;
  }

  memcpy(v21, v22, v27);
LABEL_12:
  if (*(v19 + 84))
  {
    v28 = *(v19 + 64);
  }

  else
  {
    v28 = *(v19 + 64) + 1;
  }

  v29 = &v21[v28];
  v30 = &v22[v28];
  *v29 = *v30;
  v29[1] = v30[1];
  v29[2] = v30[2];
  return a1;
}

uint64_t initializeWithTake for _RowVisitationContext(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 32;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 32) + 7;
  *((v6 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v7 = v6 & 0xFFFFFFFFFFFFFFF8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = v9 + 32;
  v11 = *(v9 + 80);
  v12 = v7 + v11 + 8;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  (*(v9 + 32))(v13, v14, v8);
  v15 = *(v10 + 32) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = swift_getAssociatedTypeWitness();
  v19 = *(v18 - 8);
  v20 = *(v19 + 80);
  v21 = ((v16 + v20 + 8) & ~v20);
  v22 = ((v17 + v20 + 8) & ~v20);
  if ((*(v19 + 48))(v22, 1, v18))
  {
    v23 = *(v19 + 84);
    v24 = *(v19 + 64);
    if (v23)
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 + 1;
    }

    memcpy(v21, v22, v25);
  }

  else
  {
    (*(v19 + 32))(v21, v22, v18);
    v27 = *(v19 + 56);
    v26 = v19 + 56;
    v27(v21, 0, 1, v18);
    v23 = *(v26 + 28);
    v24 = *(v26 + 8);
  }

  if (v23)
  {
    v28 = v24;
  }

  else
  {
    v28 = v24 + 1;
  }

  v29 = &v21[v28];
  v30 = &v22[v28];
  *v29 = *v30;
  v29[1] = v30[1];
  v29[2] = v30[2];
  return a1;
}

uint64_t assignWithTake for _RowVisitationContext(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 40;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 24) + 7;
  *((v6 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v7 = v6 & 0xFFFFFFFFFFFFFFF8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = v9 + 40;
  v11 = *(v9 + 80);
  v12 = v7 + v11 + 8;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  (*(v9 + 40))(v13, v14, v8);
  v15 = *(v10 + 24) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;

  v18 = swift_getAssociatedTypeWitness();
  v19 = *(v18 - 8);
  v20 = *(v19 + 80);
  v21 = ((v16 + v20 + 8) & ~v20);
  v22 = ((v17 + v20 + 8) & ~v20);
  v23 = *(v19 + 48);
  LODWORD(v16) = v23(v21, 1, v18);
  v24 = v23(v22, 1, v18);
  if (v16)
  {
    if (!v24)
    {
      (*(v19 + 32))(v21, v22, v18);
      (*(v19 + 56))(v21, 0, 1, v18);
      goto LABEL_12;
    }

    v25 = *(v19 + 84);
    v26 = *(v19 + 64);
  }

  else
  {
    if (!v24)
    {
      (*(v19 + 40))(v21, v22, v18);
      goto LABEL_12;
    }

    (*(v19 + 8))(v21, v18);
    v25 = *(v19 + 84);
    v26 = *(v19 + 64);
  }

  if (v25)
  {
    v27 = v26;
  }

  else
  {
    v27 = v26 + 1;
  }

  memcpy(v21, v22, v27);
LABEL_12:
  if (*(v19 + 84))
  {
    v28 = *(v19 + 64);
  }

  else
  {
    v28 = *(v19 + 64) + 1;
  }

  v29 = &v21[v28];
  v30 = &v22[v28];
  *v29 = *v30;
  v29[1] = v30[1];
  v29[2] = v30[2];
  return a1;
}

void *initializeBufferWithCopyOfBuffer for ListContentVisitor(void *a1, char *a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v6 > v11)
  {
    v11 = v6;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v4 + 64);
  v14 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = v14 + 8;
  v16 = *(v8 + 80);
  v17 = (v16 + ((((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16;
  v18 = *(v8 + 64);
  if (v10)
  {
    v19 = *(v8 + 64);
  }

  else
  {
    v19 = v18 + 1;
  }

  v20 = v17 + v19;
  v21 = *(v5 + 80);
  v22 = v21 & 0xF8 | 7;
  v23 = v22 | v16;
  v24 = (v21 | v16) & 0x100000;
  v25 = ((-4 - v22 - (v17 + v19)) | v22) - v15;
  if (v23 == 7 && v24 == 0 && v25 >= 0xFFFFFFFFFFFFFFE7)
  {
    __dst = a1;
    __n = v19;
    v49 = v7;
    if (v6 == v12)
    {
      if ((*(v5 + 48))(a2, v6, AssociatedTypeWitness))
      {
LABEL_21:
        memcpy(a1, a2, v20 + 3);
        v30 = __n;
LABEL_33:
        v45 = v17 + v30 + 10;
        v46 = (a1 + v45) & 0xFFFFFFFFFFFFFFF8;
        v47 = &a2[v45] & 0xFFFFFFFFFFFFFFF8;
        (*(v5 + 16))(v46, v47, AssociatedTypeWitness);
        v29 = __dst;
        *((v13 + 7 + v46) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 7 + v47) & 0xFFFFFFFFFFFFFFF8);
        return v29;
      }
    }

    else
    {
      v50 = v17;
      v31 = a2 + 7;
      v32 = &a2[v15 + 7] & 0xFFFFFFFFFFFFFFF8;
      if ((v11 & 0x80000000) != 0)
      {
        if (v10 >= 2 && (*(v9 + 48))(((v32 + 103) & 0xFFFFFFFFFFFFFFF8) + 8) >= 2)
        {
          memcpy(a1, a2, v20 + 3);
          v30 = v18;
          v17 = v50;
          goto LABEL_33;
        }

LABEL_29:
        (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
        *((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&v31[v13] & 0xFFFFFFFFFFFFFFF8);
        v34 = (a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
        v35 = *(v32 + 24);
        *(v34 + 24) = v35;
        *(v34 + 32) = *(v32 + 32);
        (**(v35 - 8))(v34, v32);
        *(v34 + 40) = *(v32 + 40);
        *(v34 + 48) = *(v32 + 48);
        *(v34 + 56) = *(v32 + 56);
        *(v34 + 60) = *(v32 + 60);
        *(v34 + 64) = *(v32 + 64);
        *(v34 + 72) = *(v32 + 72);
        *(v34 + 80) = *(v32 + 80);
        v36 = *(v32 + 88);
        *(v34 + 88) = v36;
        v37 = ((v32 + 103) & 0xFFFFFFFFFFFFFFF8);
        v39 = *v37;
        v38 = v37 + 1;
        v40 = ((v34 + 103) & 0xFFFFFFFFFFFFFFF8);
        *v40 = v39;
        v41 = (v40 + 1);
        v42 = *(v9 + 48);

        v43 = v36;

        if (v42(v38, 1, v49))
        {
          v30 = __n;
          memcpy(v41, v38, __n);
          v17 = v50;
        }

        else
        {
          (*(v9 + 16))(v41, v38, v49);
          (*(v9 + 56))(v41, 0, 1, v49);
          v17 = v50;
          v30 = __n;
        }

        v44 = &v41[v30];
        *v44 = *(v38 + v30);
        v44[1] = *(v38 + v30 + 1);
        v44[2] = *(v38 + v30 + 2);
        a1 = __dst;
        goto LABEL_33;
      }

      v33 = *(v32 + 24);
      if (v33 >= 0xFFFFFFFF)
      {
        LODWORD(v33) = -1;
      }

      v17 = v50;
      if (v33 != -1)
      {
        goto LABEL_21;
      }
    }

    v50 = v17;
    v31 = a2 + 7;
    v32 = &a2[v15 + 7] & 0xFFFFFFFFFFFFFFF8;
    goto LABEL_29;
  }

  v28 = *a2;
  *a1 = *a2;
  v29 = (v28 + ((v23 + 16) & ~v23));

  return v29;
}

uint64_t destroy for ListContentVisitor(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v26 = v3;
  v4 = *(v3 + 84);
  v5 = swift_getAssociatedTypeWitness();
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v4 > v9)
  {
    v9 = v4;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = (*(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = v11 + 8;
  v13 = *(v6 + 80);
  v14 = ~v13;
  v25 = *(*(v5 - 8) + 64);
  if (v4 != v10)
  {
    v16 = (a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((v9 & 0x80000000) != 0)
    {
      if (v8 >= 2)
      {
        v15 = v13 + 8;
        v19 = (*(v6 + 48))((v13 + 8 + ((v16 + 103) & 0xFFFFFFFFFFFFFFF8)) & v14, v8, v5);
        v18 = v26;
        if (v19 >= 2)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v18 = v26;
      }

      goto LABEL_19;
    }

    v17 = *(v16 + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if (v17 != -1)
    {
      goto LABEL_10;
    }

LABEL_15:
    v16 = (a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = v26;
LABEL_19:
    (*(v18 + 8))(a1, AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_1(v16);

    v15 = v13 + 8;
    v20 = v13 + 8 + ((v16 + 103) & 0xFFFFFFFFFFFFFFF8);
    if (!(*(v7 + 48))(v20 & v14, 1, v5))
    {
      (*(v7 + 8))(v20 & v14, v5);
    }

    goto LABEL_21;
  }

  if (!(*(v26 + 48))(a1, v4, AssociatedTypeWitness))
  {
    goto LABEL_15;
  }

LABEL_10:
  v15 = v13 + 8;
LABEL_21:
  v18 = v26;
LABEL_22:
  v21 = *(v18 + 8);
  v22 = *(v18 + 80) & 0xF8 | 7;
  if (v8)
  {
    v23 = a1;
  }

  else
  {
    v23 = a1 + 1;
  }

  return v21((v23 + v25 + v22 + ((v15 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8)) & v14) + 3) & ~v22, AssociatedTypeWitness);
}

void *initializeWithCopy for ListContentVisitor(void *a1, char *a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v51 = swift_getAssociatedTypeWitness();
  v8 = *(v51 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v7 > v10)
  {
    v10 = v7;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v5 + 64);
  v54 = v12 + 7;
  v13 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = v13 + 8;
  v15 = *(v8 + 80);
  v16 = v15 + 8;
  v53 = (v15 + 8 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8)) & ~v15;
  v52 = *(*(v51 - 8) + 64);
  v49 = ~v15;
  v50 = *(v51 - 8);
  if (v7 == v11)
  {
    v17 = AssociatedTypeWitness;
    if ((*(v6 + 48))(a2, v7, AssociatedTypeWitness))
    {
LABEL_10:
      v18 = 3;
      if (!v9)
      {
        v18 = 4;
      }

      v20 = v52;
      v19 = v53;
      v21 = v18 + v52 + v53;
      v22 = a1;
      v23 = a2;
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  v24 = a2;
  v25 = a2 + 7;
  v26 = &v25[v14] & 0xFFFFFFFFFFFFFFF8;
  if ((v10 & 0x80000000) == 0)
  {
    v27 = *(v26 + 24);
    if (v27 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    a2 = v24;
    v17 = AssociatedTypeWitness;
    if (v27 != -1)
    {
      goto LABEL_10;
    }

LABEL_18:
    v23 = a2;
    v25 = a2 + 7;
    v26 = &v25[v14] & 0xFFFFFFFFFFFFFFF8;
    goto LABEL_22;
  }

  if (v9 >= 2)
  {
    v28 = (*(v8 + 48))((v16 + ((v26 + 103) & 0xFFFFFFFFFFFFFFF8)) & ~v15, v9, v51);
    v23 = v24;
    v17 = AssociatedTypeWitness;
    if (v28 >= 2)
    {
      v20 = v52;
      v19 = v53;
      v21 = v52 + v53 + 3;
      v22 = a1;
      a2 = v23;
LABEL_13:
      memcpy(v22, v23, v21);
      goto LABEL_31;
    }
  }

  else
  {
    v23 = v24;
    v17 = AssociatedTypeWitness;
  }

LABEL_22:
  v46 = v9;
  v47 = v17;
  v48 = v23;
  (*(v6 + 16))(a1);
  *((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&v25[v12] & 0xFFFFFFFFFFFFFFF8);
  v29 = (a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = *(v26 + 24);
  *(v29 + 24) = v30;
  *(v29 + 32) = *(v26 + 32);
  (**(v30 - 8))(v29, v26);
  *(v29 + 40) = *(v26 + 40);
  *(v29 + 48) = *(v26 + 48);
  *(v29 + 56) = *(v26 + 56);
  *(v29 + 60) = *(v26 + 60);
  *(v29 + 64) = *(v26 + 64);
  *(v29 + 72) = *(v26 + 72);
  *(v29 + 80) = *(v26 + 80);
  v31 = *(v26 + 88);
  *(v29 + 88) = v31;
  v32 = ((v29 + 103) & 0xFFFFFFFFFFFFFFF8);
  v33 = ((v26 + 103) & 0xFFFFFFFFFFFFFFF8);
  *v32 = *v33;
  v34 = ((v32 + v16) & v49);
  v35 = ((v33 + v16) & v49);
  v36 = *(v50 + 48);

  v37 = v31;

  if (v36(v35, 1, v51))
  {
    LODWORD(v9) = v46;
    v20 = v52;
    if (v46)
    {
      v38 = v52;
    }

    else
    {
      v38 = v52 + 1;
    }

    memcpy(v34, v35, v38);
  }

  else
  {
    (*(v50 + 16))(v34, v35, v51);
    (*(v50 + 56))(v34, 0, 1, v51);
    LODWORD(v9) = v46;
    v20 = v52;
    if (v46)
    {
      v38 = v52;
    }

    else
    {
      v38 = v52 + 1;
    }
  }

  v39 = &v34[v38];
  *v39 = *(v35 + v38);
  v39[1] = *(v35 + v38 + 1);
  v39[2] = *(v35 + v38 + 2);
  a2 = v48;
  v17 = v47;
  v19 = v53;
LABEL_31:
  v40 = 3;
  if (!v9)
  {
    v40 = 4;
  }

  v41 = *(v6 + 80) & 0xF8 | 7;
  v42 = v40 + v20 + v41 + v19;
  v43 = (a1 + v42) & ~v41;
  v44 = &a2[v42] & ~v41;
  (*(v6 + 16))(v43, v44, v17);
  *((v54 + v43) & 0xFFFFFFFFFFFFFFF8) = *((v54 + v44) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithCopy for ListContentVisitor(void *a1, char *a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v77 = swift_getAssociatedTypeWitness();
  v8 = *(v77 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v7 > v10)
  {
    v10 = v7;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v5 + 64);
  v79 = v12 + 7;
  v13 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = v13 + 8;
  v76 = *(v77 - 8);
  v15 = *(v8 + 80);
  v75 = ~v15;
  v16 = v15 + 8;
  v81 = *(v76 + 64);
  v80 = *(v8 + 84);
  v78 = (v15 + 8 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8)) & ~v15;
  if (v7 == v11)
  {
    v74 = *(v5 + 64);
    v17 = v13 + 8;
    v18 = v15 + 8;
    v19 = *(v5 + 48);
    v20 = v19(a1, v7, AssociatedTypeWitness);
    v21 = v19(a2, v7, AssociatedTypeWitness);
    v9 = v80;
    v16 = v18;
    v14 = v17;
    v12 = v74;
    if (v20)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  v26 = (a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v10 & 0x80000000) == 0)
  {
    v27 = *(v26 + 24);
    v28 = *((&a2[v14 + 7] & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v28 >= 0xFFFFFFFF)
    {
      LODWORD(v28) = -1;
    }

    v21 = v28 + 1;
    if (v27 <= 0xFFFFFFFE)
    {
LABEL_10:
      if (v21)
      {
        v22 = v81;
        if (!v9)
        {
          v22 = v81 + 1;
        }

        goto LABEL_13;
      }

LABEL_38:
      (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
      *((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v12 + 7] & 0xFFFFFFFFFFFFFFF8);
      v51 = (a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
      v52 = &a2[v14 + 7] & 0xFFFFFFFFFFFFFFF8;
      v53 = *(v52 + 24);
      *(v51 + 24) = v53;
      *(v51 + 32) = *(v52 + 32);
      (**(v53 - 8))(v51, v52);
      *(v51 + 40) = *(v52 + 40);
      *(v51 + 48) = *(v52 + 48);
      *(v51 + 56) = *(v52 + 56);
      *(v51 + 60) = *(v52 + 60);
      *(v51 + 64) = *(v52 + 64);
      *(v51 + 72) = *(v52 + 72);
      *(v51 + 80) = *(v52 + 80);
      v54 = *(v52 + 88);
      *(v51 + 88) = v54;
      v55 = ((v51 + 103) & 0xFFFFFFFFFFFFFFF8);
      v56 = ((v52 + 103) & 0xFFFFFFFFFFFFFFF8);
      *v55 = *v56;
      __dst = ((v55 + v16) & v75);
      v57 = ((v56 + v16) & v75);
      v58 = *(v76 + 48);

      v59 = v54;

      if (v58(v57, 1, v77))
      {
        v9 = v80;
        v25 = v81;
        if (v80)
        {
          v60 = v81;
        }

        else
        {
          v60 = v81 + 1;
        }

        v61 = __dst;
        memcpy(__dst, v57, v60);
      }

      else
      {
        v61 = __dst;
        (*(v76 + 16))(__dst, v57, v77);
        (*(v76 + 56))(__dst, 0, 1, v77);
        v9 = v80;
        v25 = v81;
        if (v80)
        {
          v60 = v81;
        }

        else
        {
          v60 = v81 + 1;
        }
      }

      v62 = &v61[v60];
      *v62 = *(v57 + v60);
      v62[1] = *(v57 + v60 + 1);
      v62[2] = *(v57 + v60 + 2);
      v24 = AssociatedTypeWitness;
      v23 = v78;
      goto LABEL_53;
    }

LABEL_18:
    if (v21)
    {
      goto LABEL_19;
    }

LABEL_25:
    (*(v6 + 24))(a1, a2, AssociatedTypeWitness);
    *((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v12 + 7] & 0xFFFFFFFFFFFFFFF8);
    v32 = (a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = &a2[v14 + 7] & 0xFFFFFFFFFFFFFFF8;
    __swift_assign_boxed_opaque_existential_1(v32, v33);
    *(v32 + 40) = *(v33 + 40);

    *(v32 + 48) = *(v33 + 48);

    *(v32 + 56) = *(v33 + 56);
    *(v32 + 60) = *(v33 + 60);
    *(v32 + 64) = *(v33 + 64);

    *(v32 + 72) = *(v33 + 72);
    *(v32 + 80) = *(v33 + 80);
    v34 = *(v32 + 88);
    v35 = *(v33 + 88);
    *(v32 + 88) = v35;
    v36 = v35;

    v37 = ((v32 + 103) & 0xFFFFFFFFFFFFFFF8);
    v38 = ((v33 + 103) & 0xFFFFFFFFFFFFFFF8);
    *v37 = *v38;

    v39 = ((v37 + v16) & v75);
    v40 = ((v38 + v16) & v75);
    v41 = *(v76 + 48);
    v42 = v41(v39, 1, v77);
    v43 = v41(v40, 1, v77);
    if (v42)
    {
      v9 = v80;
      v23 = v78;
      if (!v43)
      {
        (*(v76 + 16))(v39, v40, v77);
        (*(v76 + 56))(v39, 0, 1, v77);
LABEL_48:
        v25 = v81;
        v24 = AssociatedTypeWitness;
LABEL_49:
        if (v9)
        {
          v63 = v25;
        }

        else
        {
          v63 = v25 + 1;
        }

        v64 = &v39[v63];
        v65 = &v40[v63];
        *v64 = *v65;
        v64[1] = v65[1];
        v64[2] = v65[2];
        goto LABEL_53;
      }
    }

    else
    {
      v9 = v80;
      v23 = v78;
      if (!v43)
      {
        (*(v76 + 24))(v39, v40, v77);
        goto LABEL_48;
      }

      (*(v76 + 8))(v39, v77);
    }

    v25 = v81;
    if (v9)
    {
      v50 = v81;
    }

    else
    {
      v50 = v81 + 1;
    }

    memcpy(v39, v40, v50);
    v24 = AssociatedTypeWitness;
    goto LABEL_49;
  }

  if (v9 < 2)
  {
    goto LABEL_25;
  }

  v44 = a2;
  v45 = *(v8 + 48);
  v46 = v15 + 8;
  v47 = v45((v16 + ((v26 + 103) & 0xFFFFFFFFFFFFFFF8)) & v75, v80, v77);
  v73 = v44;
  v48 = &v44[v14];
  v9 = v80;
  v49 = v45((v46 + ((((v48 + 7) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8)) & v75, v80, v77);
  if (v47 >= 2)
  {
    v22 = v81;
    a2 = v73;
    v16 = v46;
    v6 = v5;
    if (v49 >= 2)
    {
LABEL_13:
      v23 = v78;
      memcpy(a1, a2, v78 + v22 + 3);
      v25 = v81;
      v24 = AssociatedTypeWitness;
      goto LABEL_53;
    }

    goto LABEL_38;
  }

  a2 = v73;
  v16 = v46;
  v6 = v5;
  if (v49 < 2)
  {
    goto LABEL_25;
  }

LABEL_19:
  (*(v6 + 8))(a1);
  v29 = (a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v29);

  v30 = v16 + ((v29 + 103) & 0xFFFFFFFFFFFFFFF8);
  if (!(*(v76 + 48))(v30 & v75, 1, v77))
  {
    (*(v76 + 8))(v30 & v75, v77);
  }

  v9 = v80;
  v31 = 3;
  if (!v80)
  {
    v31 = 4;
  }

  v25 = v81;
  v23 = v78;
  memcpy(a1, a2, v31 + v81 + v78);
  v24 = AssociatedTypeWitness;
LABEL_53:
  v66 = 3;
  if (!v9)
  {
    v66 = 4;
  }

  v67 = *(v6 + 80) & 0xF8 | 7;
  v68 = v66 + v25 + v67 + v23;
  v69 = (a1 + v68) & ~v67;
  v70 = &a2[v68] & ~v67;
  (*(v6 + 24))(v69, v70, v24);
  *((v79 + v69) & 0xFFFFFFFFFFFFFFF8) = *((v79 + v70) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *initializeWithTake for ListContentVisitor(void *a1, char *a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  v44 = swift_getAssociatedTypeWitness();
  v7 = *(v44 - 8);
  v8 = v7;
  v49 = *(v7 + 84);
  v9 = v49 - 1;
  if (!v49)
  {
    v9 = 0;
  }

  if (v6 > v9)
  {
    v9 = v6;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v4 + 64);
  v12 = v11 + 7;
  v13 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = v13 + 8;
  v15 = *(v7 + 80);
  v16 = v15 + 8;
  v17 = (v15 + 8 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8)) & ~v15;
  v47 = *(*(v44 - 8) + 64);
  v43 = ~v15;
  if (v6 != v10)
  {
    v46 = (v15 + 8 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8)) & ~v15;
    v48 = AssociatedTypeWitness;
    v22 = a2 + 7;
    v23 = &a2[v14 + 7] & 0xFFFFFFFFFFFFFFF8;
    if ((v9 & 0x80000000) != 0)
    {
      if (v49 >= 2)
      {
        v25 = v44;
        if ((*(v7 + 48))((v16 + ((v23 + 103) & 0xFFFFFFFFFFFFFFF8)) & ~v15) >= 2)
        {
          v17 = v46;
          v20 = v47;
          v21 = a1;
          memcpy(a1, a2, v47 + v46 + 3);
          AssociatedTypeWitness = v48;
          v18 = v49;
          goto LABEL_29;
        }

        goto LABEL_20;
      }

LABEL_19:
      v25 = v44;
LABEL_20:
      v45 = v11 + 7;
      (*(v5 + 32))(a1, a2, v48);
      *((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&v22[v11] & 0xFFFFFFFFFFFFFFF8);
      v26 = ((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
      v27 = *(v23 + 32);
      v28 = *(v23 + 48);
      v29 = *(v23 + 80);
      v26[4] = *(v23 + 64);
      v26[5] = v29;
      v26[2] = v27;
      v26[3] = v28;
      v30 = *(v23 + 16);
      *v26 = *v23;
      v26[1] = v30;
      v31 = ((v26 + 103) & 0xFFFFFFFFFFFFFFF8);
      v32 = ((v23 + 103) & 0xFFFFFFFFFFFFFFF8);
      *v31 = *v32;
      v33 = ((v31 + v16) & v43);
      v34 = ((v32 + v16) & v43);
      if ((*(v8 + 48))(v34, 1, v25))
      {
        v18 = v49;
        v20 = v47;
        if (v49)
        {
          v35 = v47;
        }

        else
        {
          v35 = v47 + 1;
        }

        memcpy(v33, v34, v35);
      }

      else
      {
        (*(v8 + 32))(v33, v34, v25);
        (*(v8 + 56))(v33, 0, 1, v25);
        v18 = v49;
        v20 = v47;
        if (v49)
        {
          v35 = v47;
        }

        else
        {
          v35 = v47 + 1;
        }
      }

      v36 = &v33[v35];
      *v36 = *(v34 + v35);
      v36[1] = *(v34 + v35 + 1);
      v36[2] = *(v34 + v35 + 2);
      v21 = a1;
      AssociatedTypeWitness = v48;
      v12 = v45;
      v17 = v46;
      goto LABEL_29;
    }

    v24 = *(v23 + 24);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    v17 = (v15 + 8 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8)) & ~v15;
    if (v24 != -1)
    {
      goto LABEL_10;
    }

LABEL_17:
    v46 = v17;
    v48 = AssociatedTypeWitness;
    v22 = a2 + 7;
    v23 = &a2[v14 + 7] & 0xFFFFFFFFFFFFFFF8;
    goto LABEL_19;
  }

  if (!(*(v5 + 48))(a2, v6, AssociatedTypeWitness))
  {
    goto LABEL_17;
  }

LABEL_10:
  v18 = v49;
  v19 = 3;
  if (!v49)
  {
    v19 = 4;
  }

  v20 = v47;
  v21 = a1;
  memcpy(a1, a2, v19 + v47 + v17);
LABEL_29:
  v37 = 3;
  if (!v18)
  {
    v37 = 4;
  }

  v38 = *(v5 + 80) & 0xF8 | 7;
  v39 = v37 + v20 + v38 + v17;
  v40 = (v21 + v39) & ~v38;
  v41 = &a2[v39] & ~v38;
  (*(v5 + 32))(v40, v41, AssociatedTypeWitness);
  *((v12 + v40) & 0xFFFFFFFFFFFFFFF8) = *((v12 + v41) & 0xFFFFFFFFFFFFFFF8);
  return v21;
}

void *assignWithTake for ListContentVisitor(void *a1, void *a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v79 = swift_getAssociatedTypeWitness();
  v8 = *(v79 - 8);
  v80 = *(v8 + 84);
  v9 = v80 - 1;
  if (!v80)
  {
    v9 = 0;
  }

  if (v7 > v9)
  {
    v9 = v7;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v76 = *(v5 + 64);
  v11 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = v11 + 8;
  v78 = *(v79 - 8);
  v13 = *(v8 + 80);
  v14 = ~v13;
  v15 = v13 + 8;
  v83 = (v13 + 8 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8)) & ~v13;
  v82 = *(v78 + 64);
  v77 = ~v13;
  if (v7 == v10)
  {
    v16 = v11 + 8;
    v17 = v13 + 8;
    v18 = *(v6 + 48);
    v19 = v18(a1, v7, AssociatedTypeWitness);
    v20 = v18(a2, v7, AssociatedTypeWitness);
    v15 = v17;
    v12 = v16;
    v21 = a2;
    v22 = v80;
    v23 = v6;
    if (v19)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  v28 = (a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v9 & 0x80000000) == 0)
  {
    v29 = *(v28 + 24);
    v21 = a2;
    v30 = *(((a2 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v30 >= 0xFFFFFFFF)
    {
      LODWORD(v30) = -1;
    }

    v20 = v30 + 1;
    v22 = *(v8 + 84);
    v23 = v6;
    if (v29 <= 0xFFFFFFFE)
    {
LABEL_10:
      v24 = v82;
      if (v20)
      {
        if (v22)
        {
          v25 = v82;
        }

        else
        {
          v25 = v82 + 1;
        }

        goto LABEL_14;
      }

      goto LABEL_40;
    }

LABEL_19:
    v14 = v77;
    v31 = v78;
    if (v20)
    {
LABEL_20:
      (*(v23 + 8))(a1, AssociatedTypeWitness);
      v32 = (a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
      __swift_destroy_boxed_opaque_existential_1(v32);

      v33 = v15 + ((v32 + 103) & 0xFFFFFFFFFFFFFFF8);
      if (!(*(v31 + 48))(v33 & v14, 1, v79))
      {
        (*(v31 + 8))(v33 & v14, v79);
      }

      v34 = 3;
      if (!v22)
      {
        v34 = 4;
      }

      v24 = v82;
      v26 = v83;
      v27 = v34 + v82 + v83;
      goto LABEL_25;
    }

LABEL_27:
    (*(v23 + 40))(a1, v21, AssociatedTypeWitness);
    v81 = v21;
    *((a1 + v76 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v21 + v76 + 7) & 0xFFFFFFFFFFFFFFF8);
    v35 = (a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v21 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    __swift_destroy_boxed_opaque_existential_1(v35);
    v37 = *v36;
    v38 = *(v36 + 16);
    *(v35 + 32) = *(v36 + 32);
    *v35 = v37;
    *(v35 + 16) = v38;
    *(v35 + 40) = *(v36 + 40);

    *(v35 + 48) = *(v36 + 48);

    *(v35 + 56) = *(v36 + 56);
    *(v35 + 60) = *(v36 + 60);
    *(v35 + 64) = *(v36 + 64);

    *(v35 + 72) = *(v36 + 72);
    *(v35 + 80) = *(v36 + 80);
    v39 = *(v35 + 88);
    *(v35 + 88) = *(v36 + 88);

    v40 = ((v35 + 103) & 0xFFFFFFFFFFFFFFF8);
    v41 = ((v36 + 103) & 0xFFFFFFFFFFFFFFF8);
    *v40 = *v41;

    v42 = ((v40 + v15) & v14);
    v43 = ((v41 + v15) & v14);
    v44 = *(v31 + 48);
    v45 = v44(v42, 1, v79);
    v46 = v44(v43, 1, v79);
    if (v45)
    {
      v26 = v83;
      if (!v46)
      {
        (*(v78 + 32))(v42, v43, v79);
        (*(v78 + 56))(v42, 0, 1, v79);
LABEL_50:
        v21 = v81;
        v24 = v82;
LABEL_51:
        if (v22)
        {
          v65 = v24;
        }

        else
        {
          v65 = v24 + 1;
        }

        v66 = &v42[v65];
        v67 = &v43[v65];
        *v66 = *v67;
        v66[1] = v67[1];
        v66[2] = v67[2];
        goto LABEL_55;
      }
    }

    else
    {
      v26 = v83;
      if (!v46)
      {
        (*(v78 + 40))(v42, v43, v79);
        goto LABEL_50;
      }

      (*(v78 + 8))(v42, v79);
    }

    v24 = v82;
    if (v22)
    {
      v50 = v82;
    }

    else
    {
      v50 = v82 + 1;
    }

    memcpy(v42, v43, v50);
    v21 = v81;
    goto LABEL_51;
  }

  v22 = *(v8 + 84);
  v21 = a2;
  v23 = v6;
  v31 = *(v79 - 8);
  if (v80 < 2)
  {
    goto LABEL_27;
  }

  v75 = AssociatedTypeWitness;
  v47 = ~v13;
  v48 = *(v8 + 48);
  v74 = v48((v15 + ((v28 + 103) & 0xFFFFFFFFFFFFFFF8)) & ~v13, v80, v79);
  v49 = v48((v15 + ((((v21 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8)) & v47, v80, v79);
  if (v74 < 2)
  {
    v14 = v77;
    v31 = v78;
    AssociatedTypeWitness = v75;
    if (v49 >= 2)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

  v24 = v82;
  v25 = v82;
  AssociatedTypeWitness = v75;
  if (v49 >= 2)
  {
LABEL_14:
    v26 = v83;
    v27 = v83 + v25 + 3;
LABEL_25:
    memcpy(a1, v21, v27);
    goto LABEL_55;
  }

LABEL_40:
  (*(v23 + 32))(a1, v21, AssociatedTypeWitness);
  v51 = v15;
  v52 = v21;
  *((a1 + v76 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v21 + v76 + 7) & 0xFFFFFFFFFFFFFFF8);
  v53 = ((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  v54 = ((v21 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  v55 = v54[2];
  v56 = v54[3];
  v57 = v54[5];
  v53[4] = v54[4];
  v53[5] = v57;
  v53[2] = v55;
  v53[3] = v56;
  v58 = v54[1];
  *v53 = *v54;
  v53[1] = v58;
  v59 = ((v53 + 103) & 0xFFFFFFFFFFFFFFF8);
  v60 = ((v54 + 103) & 0xFFFFFFFFFFFFFFF8);
  *v59 = *v60;
  v61 = ((v59 + v51) & v77);
  v62 = ((v60 + v51) & v77);
  if ((*(v78 + 48))(v62, 1, v79))
  {
    if (v22)
    {
      v63 = v24;
    }

    else
    {
      v63 = v24 + 1;
    }

    memcpy(v61, v62, v63);
  }

  else
  {
    (*(v78 + 32))(v61, v62, v79);
    (*(v78 + 56))(v61, 0, 1, v79);
    if (v22)
    {
      v63 = v24;
    }

    else
    {
      v63 = v24 + 1;
    }
  }

  v64 = &v61[v63];
  *v64 = *(v62 + v63);
  v64[1] = *(v62 + v63 + 1);
  v64[2] = *(v62 + v63 + 2);
  v21 = v52;
  v26 = v83;
LABEL_55:
  v68 = 3;
  if (!v22)
  {
    v68 = 4;
  }

  v69 = *(v23 + 80) & 0xF8 | 7;
  v70 = v68 + v24 + v69 + v26;
  v71 = (a1 + v70) & ~v69;
  v72 = (v21 + v70) & ~v69;
  (*(v23 + 40))(v71, v72, AssociatedTypeWitness);
  *((v76 + 7 + v71) & 0xFFFFFFFFFFFFFFF8) = *((v76 + 7 + v72) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for ListContentVisitor(int *a1, unsigned int a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v6 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  if (v6 <= v12 - 1)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = v6;
  }

  v14 = *(v7 + 80);
  v15 = *(v7 + 64);
  if (v9)
  {
    v16 = 3;
  }

  else
  {
    v16 = 4;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = (*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = v17 + 8;
  v19 = v16 + v15;
  v20 = *(v5 + 80) & 0xF8 | 7;
  v21 = v19 + v20 + ((v14 + 8 + ((((v17 + 15) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8)) & ~v14);
  if (v13 >= a2)
  {
    goto LABEL_37;
  }

  v22 = (v21 & ~v20) + v18;
  v23 = v22 & 0xFFFFFFF8;
  if ((v22 & 0xFFFFFFF8) != 0)
  {
    v24 = 2;
  }

  else
  {
    v24 = a2 - v13 + 1;
  }

  if (v24 >= 0x10000)
  {
    v25 = 4;
  }

  else
  {
    v25 = 2;
  }

  if (v24 < 0x100)
  {
    v25 = 1;
  }

  if (v24 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26 <= 1)
  {
    if (!v26)
    {
      goto LABEL_37;
    }

    v27 = *(a1 + v22);
    if (!v27)
    {
      goto LABEL_37;
    }

LABEL_34:
    v28 = v27 - 1;
    if (v23)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    return v13 + (v29 | v28) + 1;
  }

  if (v26 == 2)
  {
    v27 = *(a1 + v22);
    if (v27)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v27 = *(a1 + v22);
    if (v27)
    {
      goto LABEL_34;
    }
  }

LABEL_37:
  if (v12 - 1 < v6)
  {
    v30 = *(v5 + 48);

    return v30((a1 + v21) & ~v20, v6, AssociatedTypeWitness);
  }

  if (v6 == v12)
  {
    v32 = (*(v5 + 48))(a1, v6, AssociatedTypeWitness);
    v33 = v32 != 0;
    result = (v32 - 1);
    if (result != 0 && v33)
    {
      return result;
    }

    return 0;
  }

  v34 = (a1 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v11 & 0x80000000) != 0)
  {
    if (v9 >= 2)
    {
      v36 = (*(v8 + 48))((v14 + 8 + ((v34 + 103) & 0xFFFFFFFFFFFFFFF8)) & ~v14);
      if (v36 >= 2)
      {
        v37 = v36 - 1;
        v33 = v37 != 0;
        result = v37 - 1;
        if (result != 0 && v33)
        {
          return result;
        }
      }
    }

    return 0;
  }

  v35 = *(v34 + 24);
  if (v35 >= 0xFFFFFFFF)
  {
    LODWORD(v35) = -1;
  }

  result = v35;
  if (v35 == 0 || v35 == -1)
  {
    return 0;
  }

  return result;
}

void storeEnumTagSinglePayload for ListContentVisitor(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = 0;
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  if (v8 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v8;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = v16 - 1;
  if (v8 <= v16 - 1)
  {
    v18 = v16 - 1;
  }

  else
  {
    v18 = v8;
  }

  v19 = (*(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = v19 + 8;
  v21 = (v13 + 8 + ((((v19 + 15) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8)) & ~v13;
  if (!v11)
  {
    ++v14;
  }

  v22 = v21 + v14;
  v23 = *(v7 + 80) & 0xF8 | 7;
  v24 = v22 + v23 + 3;
  v25 = (v24 & ~v23) + v20;
  if (v18 < a3)
  {
    if (v25)
    {
      v26 = 2;
    }

    else
    {
      v26 = a3 - v18 + 1;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v9 = v27;
    }

    else
    {
      v9 = 0;
    }
  }

  if (a2 > v18)
  {
    if (v25)
    {
      v28 = 1;
    }

    else
    {
      v28 = a2 - v18;
    }

    if (v25)
    {
      v29 = ~v18 + a2;
      bzero(a1, (v24 & ~v23) + v20);
      *a1 = v29;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        *&a1[v25] = v28;
      }

      else
      {
        *&a1[v25] = v28;
      }
    }

    else if (v9)
    {
      a1[v25] = v28;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *&a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    *&a1[v25] = 0;
  }

  else if (v9)
  {
    a1[v25] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  if (!a2)
  {
    return;
  }

LABEL_44:
  if (v17 < v8)
  {
    v30 = (&a1[v24] & ~v23);
    if (v8 < a2)
    {
      if (v20)
      {
        v31 = (&a1[v24] & ~v23);
        bzero(v30, v20);
        *v31 = ~v8 + a2;
      }

      return;
    }

    v36 = *(v7 + 56);
    v37 = a2;
    goto LABEL_63;
  }

  v32 = (v22 + 3);
  if (v17 < a2)
  {
    if (v32 <= 3)
    {
      v33 = ~(-1 << (8 * v32));
    }

    else
    {
      v33 = -1;
    }

    if (!v32)
    {
      return;
    }

    v34 = v33 & (a2 - v16);
    if (v32 <= 3)
    {
      v35 = v32;
    }

    else
    {
      v35 = 4;
    }

    bzero(a1, v32);
    if (v35 <= 2)
    {
      if (v35 == 1)
      {
LABEL_58:
        *a1 = v34;
        return;
      }

LABEL_78:
      *a1 = v34;
      return;
    }

    goto LABEL_79;
  }

  if (a2 >= v16)
  {
    if (v32 <= 3)
    {
      v38 = ~(-1 << (8 * v32));
    }

    else
    {
      v38 = -1;
    }

    if (!v32)
    {
      return;
    }

    v34 = v38 & (a2 - v16);
    if (v32 <= 3)
    {
      v35 = v32;
    }

    else
    {
      v35 = 4;
    }

    bzero(a1, v32);
    if (v35 <= 2)
    {
      if (v35 == 1)
      {
        goto LABEL_58;
      }

      goto LABEL_78;
    }

LABEL_79:
    if (v35 == 3)
    {
      *a1 = v34;
      a1[2] = BYTE2(v34);
    }

    else
    {
      *a1 = v34;
    }

    return;
  }

  if (v8 == v16)
  {
    v36 = *(v7 + 56);
    v30 = a1;
    v37 = (a2 + 1);
LABEL_63:

    v36(v30, v37, v8, AssociatedTypeWitness);
    return;
  }

  v39 = &a1[v20 + 7] & 0xFFFFFFFFFFFFFFF8;
  if ((v15 & 0x80000000) != 0)
  {
    if (v11 >= 2)
    {
      v40 = *(v10 + 56);

      v40((v13 + 8 + ((v39 + 103) & 0xFFFFFFFFFFFFFFF8)) & ~v13, (a2 + 2));
    }
  }

  else if (a2 + 1 < 0)
  {
    *(v39 + 88) = 0;
    *(v39 + 72) = 0u;
    *(v39 + 56) = 0u;
    *(v39 + 40) = 0u;
    *(v39 + 24) = 0u;
    *(v39 + 8) = 0u;
    *v39 = (a2 - 0x7FFFFFFF);
  }

  else
  {
    *(v39 + 24) = a2;
  }
}

void *closure #1 in UISplitViewControllerVisibilityEngine.adoptInspectorVisibility(from:isVisible:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v4 = a4 & 1;
  v7 = a1;
  v8 = a2;
  v9 = a3;
  type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<Bool>);
  result = MEMORY[0x18D00ACC0](&v6);
  if (v6 != v4)
  {
    LOBYTE(v7) = v4;
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

UISplitViewControllerDisplayMode __swiftcall UISplitViewControllerVisibilityEngine.displayModeForExpanding(proposed:)(UISplitViewControllerDisplayMode proposed)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v1 + 8);
  v6 = *(v1 + 9);
  v7 = v1[6];
  v8 = *(v1 + 80);
  if (v7 >= 2)
  {
    v9 = objc_opt_self();

    v10 = [v9 mainScreen];
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v53.origin.x = v12;
    v53.origin.y = v14;
    v53.size.width = v16;
    v53.size.height = v18;
    Width = CGRectGetWidth(v53);
    v54.origin.x = v12;
    v54.origin.y = v14;
    v54.size.width = v16;
    v54.size.height = v18;
    if (CGRectGetHeight(v54) >= Width)
    {
      v20 = 1194.0;
    }

    else
    {
      v20 = 1024.0;
    }

    v55.origin.x = v12;
    v55.origin.y = v14;
    v55.size.width = v16;
    v55.size.height = v18;
    v21 = CGRectGetWidth(v55);
    v50 = v4;
    v51 = v3;
    v52 = v5;
    type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>);
    v23 = v22;
    MEMORY[0x18D00ACC0](&v49);
    v24 = v49 >> 14;
    if (v24 < 2 || v24 != 2 && v49 == 49152)
    {
      v25 = 16640;
    }

    else
    {
      v25 = -32512;
    }

    v49 = v25 | (v21 >= v20);
    if ((proposed - 2) > 4)
    {
      v26 = 0;
    }

    else
    {
      v26 = qword_18CD72128[proposed - 2];
    }

    AnyNavigationSplitVisibility.Kind.adoptingVisibleLeadingColumnCount(_:)(v26, &v50);
    v27 = v50;
    v28 = v50 >> 14;
    if (v28 == 2 || v28 == 1)
    {
      v29 = BYTE1(v50) & 1;
    }

    else
    {
      v30 = [v9 mainScreen];
      [v30 bounds];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      v56.origin.x = v32;
      v56.origin.y = v34;
      v56.size.width = v36;
      v56.size.height = v38;
      v39 = CGRectGetWidth(v56);
      v57.origin.x = v32;
      v57.origin.y = v34;
      v57.size.width = v36;
      v57.size.height = v38;
      if (CGRectGetHeight(v57) >= v39)
      {
        v40 = 1194.0;
      }

      else
      {
        v40 = 1024.0;
      }

      v58.origin.x = v32;
      v58.origin.y = v34;
      v58.size.width = v36;
      v58.size.height = v38;
      v27 = CGRectGetWidth(v58) >= v40;
      LOBYTE(v29) = 1;
    }

    LOBYTE(v49) = v27;
    HIBYTE(v49) = v29;
    v7(&v50, &v49);
    v41 = v50;
    if ((v50 & 0xFF00) != 0x200)
    {
      v50 = v4;
      v51 = v3;
      v52 = v5;
      MEMORY[0x18D00ACC0](&v49, v23);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v7);
      v46 = v49 >> 14;
      v43 = v8;
      if (v46 < 2 || v46 != 2 && v49 == 49152)
      {
        v47 = 0x4000;
      }

      else
      {
        v47 = 0x8000;
      }

      LOWORD(v50) = v41 & 0x1FF | v47;
      v42 = proposed;
      return AnyNavigationSplitVisibility.Kind.displayMode(proposed:behavior:)(v42, 0, v43);
    }

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v7);
  }

  if ((v6 & 0xFF00) == 0x200)
  {
    v50 = v4;
    v51 = v3;
    v52 = v5;
    type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>);
    MEMORY[0x18D00ACC0](&v49);
    v42 = proposed;
    v43 = v8;
    return AnyNavigationSplitVisibility.Kind.displayMode(proposed:behavior:)(v42, 0, v43);
  }

  v50 = v4;
  v51 = v3;
  v52 = v5;
  type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>);
  MEMORY[0x18D00ACC0](&v49);
  v44 = v49 >> 14;
  if (v44 < 2 || v44 != 2 && v49 == 49152)
  {
    v45 = UISplitViewControllerDisplayModeOneBesideSecondary;
  }

  else
  {
    v45 = UISplitViewControllerDisplayModeTwoBesideSecondary;
  }

  if (v6 == 1)
  {
    v45 = UISplitViewControllerDisplayModeOneBesideSecondary;
  }

  if (v6)
  {
    return v45;
  }

  else
  {
    return 1;
  }
}

SwiftUI::NavigationSplitViewVisibility_optional __swiftcall UISplitViewControllerVisibilityEngine.updateSplitViewController(_:isAnimated:)(UISplitViewController *_, Swift::Bool isAnimated)
{
  v4 = isAnimated;
  v74 = v2;
  v75 = _;
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v65[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v65[-v9];
  v12 = *v3;
  v11 = *(v3 + 8);
  LODWORD(v13) = *(v3 + 16);
  v14 = *(v3 + 18);
  if ((v14 & 0xFF00) == 0x200)
  {
    v71 = *v3;
    v73 = v11;
    v70 = v13;
    v72 = v4;
    v15 = *(v3 + 24);
    v16 = *(v3 + 32);
    v17 = *(v3 + 48);
    v18 = *(v3 + 56);
    v19 = *(v3 + 64);
    static Log.splitViewVisibility.getter();
    v20 = type metadata accessor for Logger();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v7, 1, v20) == 1)
    {
      outlined destroy of Logger?(v7);
      v22 = v75;
      v23 = v70;
      v24 = v73;
LABEL_46:
      aBlock = v71;
      v77 = v24;
      LOWORD(v78) = v23;
      type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>);
      MEMORY[0x18D00ACC0](&v82);
      LOWORD(v83) = v82;
      return AnyNavigationSplitVisibility.Kind.updateSplitViewController(_:isAnimated:)(v22, v72, v74);
    }

    v68 = v21;
    v69 = v20;
    v28 = v71;

    outlined copy of Binding<Int>?(v15, v16);
    outlined copy of NavigationEventHandlers?(v17, v18, v19);
    v67 = v7;
    v29 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    v30 = v28;

    outlined consume of Binding<NavigationSplitViewColumn>?(v15, v16);
    v31 = v66;
    outlined consume of NavigationEventHandlers?(v17, v18, v19);
    if (!os_log_type_enabled(v29, v31))
    {

      v22 = v75;
      v23 = v70;
      v24 = v73;
      v36 = v67;
LABEL_45:
      (*(v68 + 8))(v36, v69);
      goto LABEL_46;
    }

    v32 = v29;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v82 = v34;
    *v33 = 136315138;
    aBlock = v30;
    v77 = v73;
    v23 = v70;
    LOWORD(v78) = v70;
    type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>);
    MEMORY[0x18D00ACC0](&v83);
    v35 = v83 >> 14;
    v22 = v75;
    if (v35 > 1)
    {
      v36 = v67;
      if (v35 != 2)
      {
        v39 = 0xE700000000000000;
        v37 = 0x646E756F626E75;
        goto LABEL_44;
      }
    }

    else
    {
      v36 = v67;
      if (!v35)
      {
        LOBYTE(aBlock) = v83;
        v37 = String.init<A>(describing:)();
        v39 = v38;
LABEL_44:
        v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v82);

        *(v33 + 4) = v64;
        _os_log_impl(&dword_18BD4A000, v32, v31, "updating SVC to %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x18D0110E0](v34, -1, -1);
        MEMORY[0x18D0110E0](v33, -1, -1);

        v24 = v73;
        goto LABEL_45;
      }
    }

    if (v83)
    {
      if (v83 == 1)
      {
        v37 = 0x6F43656C62756F64;
      }

      else
      {
        v37 = 7105633;
      }

      if (v83 == 1)
      {
        v39 = 0xEC0000006E6D756CLL;
      }

      else
      {
        v39 = 0xE300000000000000;
      }
    }

    else
    {
      v37 = 0x6E4F6C6961746564;
      v39 = 0xEA0000000000796CLL;
    }

    goto LABEL_44;
  }

  v25 = *(v3 + 80);
  static Log.splitViewVisibility.getter();
  v26 = type metadata accessor for Logger();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v10, 1, v26) == 1)
  {
    outlined destroy of Logger?(v10);
  }

  else
  {
    LODWORD(v69) = v25;
    v72 = v4;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v71 = v12;
      v73 = v11;
      v70 = v13;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      aBlock = v43;
      *v42 = 136315138;
      if (v14)
      {
        if (v14 == 1)
        {
          v44 = 0x6F43656C62756F64;
        }

        else
        {
          v44 = 7105633;
        }

        if (v14 == 1)
        {
          v45 = 0xEC0000006E6D756CLL;
        }

        else
        {
          v45 = 0xE300000000000000;
        }
      }

      else
      {
        v44 = 0x6E4F6C6961746564;
        v45 = 0xEA0000000000796CLL;
      }

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &aBlock);

      *(v42 + 4) = v13;
      _os_log_impl(&dword_18BD4A000, v40, v41, "updating SVC to %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x18D0110E0](v43, -1, -1);
      MEMORY[0x18D0110E0](v42, -1, -1);

      LOWORD(v13) = v70;
      v11 = v73;
      v12 = v71;
    }

    else
    {
    }

    (*(v27 + 8))(v10, v26);
    LOBYTE(v4) = v72;
    LOBYTE(v25) = v69;
  }

  aBlock = v12;
  v77 = v11;
  LOWORD(v78) = v13;
  type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>);
  MEMORY[0x18D00ACC0](&v82);
  v46 = v82 >> 14;
  v47 = v75;
  v48 = v46 >= 2 && (v46 == 2 || v82 != 49152);
  v49 = [(UISplitViewController *)v75 preferredDisplayMode];
  v50 = objc_opt_self();
  v51 = (v14 >> 8) & 1;
  if (v4)
  {
    v52 = swift_allocObject();
    *(v52 + 16) = v47;
    *(v52 + 24) = v14;
    *(v52 + 25) = v51;
    *(v52 + 26) = v25;
    *(v52 + 27) = v48;
    v80 = partial apply for closure #1 in NavigationSplitViewVisibility.updateSplitViewController(_:isAnimated:behavior:isThreeColumn:);
    v81 = v52;
    aBlock = MEMORY[0x1E69E9820];
    v77 = 1107296256;
    v78 = thunk for @escaping @callee_guaranteed () -> ();
    v79 = &block_descriptor_19;
    v53 = _Block_copy(&aBlock);
    v54 = v47;

    [v50 animateWithDuration:v53 animations:0.5];
    _Block_release(v53);
    v55 = 0;
  }

  else
  {
    v56 = swift_allocObject();
    *(v56 + 16) = v47;
    *(v56 + 24) = v14;
    *(v56 + 25) = v51;
    *(v56 + 26) = v25;
    *(v56 + 27) = v48;
    v57 = swift_allocObject();
    v55 = partial apply for closure #2 in NavigationSplitViewVisibility.updateSplitViewController(_:isAnimated:behavior:isThreeColumn:);
    *(v57 + 16) = partial apply for closure #2 in NavigationSplitViewVisibility.updateSplitViewController(_:isAnimated:behavior:isThreeColumn:);
    *(v57 + 24) = v56;
    v80 = partial apply for thunk for @callee_guaranteed () -> ();
    v81 = v57;
    aBlock = MEMORY[0x1E69E9820];
    v77 = 1107296256;
    v78 = thunk for @escaping @callee_guaranteed () -> ();
    v79 = &block_descriptor_2;
    v58 = _Block_copy(&aBlock);
    v59 = v47;

    [v50 performWithoutAnimation_];
    _Block_release(v58);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      return v61;
    }
  }

  v62 = [(UISplitViewController *)v47 preferredDisplayMode];
  v61 = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v55);
  v63 = v14 & 0x1FF;
  if (v62 == v49)
  {
    v63 = 512;
  }

  *v74 = v63;
  return v61;
}

Swift::Bool_optional __swiftcall UISplitViewControllerVisibilityEngine.updateSplitViewControllerInspectorIfNeeded(_:isAnimated:)(UISplitViewController *_, Swift::Bool isAnimated)
{
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 32);
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = *(v2 + 40);
  v21 = *(v2 + 24);
  v22 = v8;
  v23 = v9 & 1;
  type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<Bool>);
  MEMORY[0x18D00ACC0]((&v20 + 7));
  v10 = HIBYTE(v20);
  static Log.splitViewVisibility.getter();
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of Logger?(v7);
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = v10;
      _os_log_impl(&dword_18BD4A000, v13, v14, "updating SVC inspector is presented to %{BOOL}d", v15, 8u);
      MEMORY[0x18D0110E0](v15, -1, -1);
    }

    (*(v12 + 8))(v7, v11);
  }

  v16 = [(UISplitViewController *)_ isShowingColumn:4];
  if (v10)
  {
    if ((v16 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_12:
    LOBYTE(v10) = 2;
    return v10;
  }

  if (!v16)
  {
    goto LABEL_12;
  }

LABEL_11:
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = isAnimated;
  *(v18 + 32) = 4;

  static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)();

  return v10;
}

unint64_t UISplitViewControllerVisibilityEngine.description.getter()
{
  result = 0xD00000000000001DLL;
  if (v0[6] <= 1)
  {
    if ((*(v0 + 9) & 0xFF00) == 0x200)
    {
      v2 = *v0;
      v3 = v0[1];
      v4 = *(v0 + 8);
      _StringGuts.grow(_:)(32);
      v9 = 0;
      v10 = 0xE000000000000000;
      MEMORY[0x18D00C9B0](0xD00000000000001ELL, 0x800000018CD3FB80);
      v6 = v2;
      v7 = v3;
      v8 = v4;
      type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>);
      MEMORY[0x18D00ACC0](&v5);
      specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v5);
      return v9;
    }

    else
    {
      _StringGuts.grow(_:)(31);
      MEMORY[0x18D00C9B0](0xD00000000000001DLL, 0x800000018CD3FBA0);
      _print_unlocked<A, B>(_:_:)();
      return 0;
    }
  }

  return result;
}

uint64_t AnyNavigationSplitVisibility.Kind.updateSplitViewController(_:isAnimated:)@<X0>(uint64_t result@<X0>, char a2@<W1>, __int16 *a3@<X8>)
{
  v5 = result;
  v7 = *v3;
  v8 = v7 >> 14;
  if (v7 >> 14 > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_32;
    }

    v12 = [result isShowingColumn_];
    if (!v7)
    {
      if (v12)
      {
        v18 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v19 = swift_allocObject();
        *(v19 + 16) = v18;
        v15 = a2 & 1;
        *(v19 + 24) = a2 & 1;
        *(v19 + 32) = 0;

        static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)();

        result = [v5 isShowingColumn_];
        if ((result & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        result = [v5 isShowingColumn_];
        if (!result)
        {
          goto LABEL_32;
        }

        v15 = a2 & 1;
      }

      goto LABEL_34;
    }

    if (v7 == 1)
    {
      if (!v12)
      {
        result = [v5 isShowingColumn_];
        if (result)
        {
          goto LABEL_32;
        }

        v15 = a2 & 1;
        goto LABEL_34;
      }

      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      v15 = a2 & 1;
      *(v14 + 24) = a2 & 1;
      *(v14 + 32) = 0;

      static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)();

      result = [v5 isShowingColumn_];
      if ((result & 1) == 0)
      {
LABEL_34:
        v24 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v25 = swift_allocObject();
        *(v25 + 16) = v24;
        *(v25 + 24) = v15;
        *(v25 + 32) = 1;

        static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)();

LABEL_35:
      }
    }

    else
    {
      if (v12)
      {
        result = [v5 isShowingColumn_];
        if (result)
        {
          goto LABEL_32;
        }

        v15 = a2 & 1;
        goto LABEL_34;
      }

      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      v15 = a2 & 1;
      *(v23 + 24) = a2 & 1;
      *(v23 + 32) = 0;

      static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)();

      result = [v5 isShowingColumn_];
      if ((result & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_36:
    v11 = v7 & 0x1FF;
    goto LABEL_37;
  }

  if (v8)
  {
    result = [result isShowingColumn_];
    if (v7 - 1 >= 2)
    {
      if ((result & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else if (result)
    {
      goto LABEL_32;
    }

    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = a2 & 1;
    *(v17 + 32) = 0;

    static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)();

    goto LABEL_35;
  }

  if (!*v3)
  {
    goto LABEL_32;
  }

  if (*v3 != 1)
  {
    result = [result isShowingColumn_];
    if (result)
    {
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      *(v21 + 24) = a2 & 1;
      *(v21 + 32) = 0;

      static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)();

      v11 = 0;
      goto LABEL_37;
    }

LABEL_32:
    v11 = 512;
    goto LABEL_37;
  }

  result = [result isShowingColumn_];
  if (result)
  {
    goto LABEL_32;
  }

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a2 & 1;
  *(v10 + 32) = 0;

  static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)();

  v11 = 1;
LABEL_37:
  *a3 = v11;
  return result;
}

uint64_t AnyNavigationSplitVisibility.Kind.adoptingVisibleLeadingColumnCount(_:)@<X0>(uint64_t result@<X0>, __int16 *a2@<X8>)
{
  v3 = *v2;
  v4 = v3 >> 14;
  if (v3 >> 14 > 1)
  {
    if (v4 == 2)
    {
      if (result == 1)
      {
        v8 = -32767;
      }

      else
      {
        v8 = -32766;
      }

      if (!result)
      {
        v8 = 0x8000;
      }

      *a2 = v8;
    }

    else
    {
      if (v3 == 49152)
      {
        v9 = -16384;
      }

      else
      {
        v9 = -16383;
      }

      *a2 = v9;
    }
  }

  else
  {
    if (result)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    if (result)
    {
      v6 = 16386;
    }

    else
    {
      v6 = 0x4000;
    }

    if (v4)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    *a2 = v7;
  }

  return result;
}

uint64_t AnyNavigationSplitVisibility.description.getter()
{
  v1 = *v0 >> 14;
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      return 0x646E756F626E75;
    }
  }

  else if (!v1)
  {
    return String.init<A>(describing:)();
  }

  if (!*v0)
  {
    return 0x6E4F6C6961746564;
  }

  if (*v0 == 1)
  {
    return 0x6F43656C62756F64;
  }

  return 7105633;
}

id partial apply for closure #2 in NavigationSplitViewVisibility.updateSplitViewController(_:isAnimated:behavior:isThreeColumn:)()
{
  if (*(v0 + 24))
  {
    if (*(v0 + 24) == 1)
    {
      v1 = 2;
    }

    else if (*(v0 + 27))
    {
      v1 = 4;
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    v1 = 1;
  }

  return [*(v0 + 16) setPreferredDisplayMode_];
}

uint64_t assignWithCopy for UISplitViewControllerVisibilityEngine(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 18);
  v4 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (v4)
    {
      *(a1 + 24) = *(a2 + 24);

      *(a1 + 32) = *(a2 + 32);

      *(a1 + 40) = *(a2 + 40);
    }

    else
    {
      outlined destroy of Binding<Bool>(a1 + 24);
      v5 = *(a2 + 40);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
  }

  else
  {
    v6 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v6;
  }

  v8 = (a1 + 48);
  v7 = *(a1 + 48);
  v10 = (a2 + 48);
  v9 = *(a2 + 48);
  if (v7 == 1)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        v11 = *v10;
        *(a1 + 64) = *(a2 + 64);
LABEL_32:
        *v8 = v11;
        goto LABEL_33;
      }

      v14 = *(a2 + 56);
      *(a1 + 48) = v9;
      *(a1 + 56) = v14;
    }

    else
    {
      *v8 = *v10;
    }

    v15 = *(a2 + 64);
    if (!v15)
    {
      *(a1 + 64) = *(a2 + 64);
      goto LABEL_33;
    }

LABEL_29:
    v18 = *(a2 + 72);
    *(a1 + 64) = v15;
    *(a1 + 72) = v18;

    goto LABEL_33;
  }

  if (v9 != 1)
  {
    if (v7)
    {
      if (v9)
      {
        v13 = *(a2 + 56);
        *(a1 + 48) = v9;
        *(a1 + 56) = v13;

        goto LABEL_25;
      }
    }

    else if (v9)
    {
      v16 = *(a2 + 56);
      *(a1 + 48) = v9;
      *(a1 + 56) = v16;

      goto LABEL_25;
    }

    *v8 = *v10;
LABEL_25:
    v8 = (a1 + 64);
    v15 = *(a2 + 64);
    if (*(a1 + 64))
    {
      if (v15)
      {
        v17 = *(a2 + 72);
        *(a1 + 64) = v15;
        *(a1 + 72) = v17;

        goto LABEL_33;
      }
    }

    else if (v15)
    {
      goto LABEL_29;
    }

    v11 = *(a2 + 64);
    goto LABEL_32;
  }

  outlined destroy of NavigationEventHandlers(a1 + 48);
  v12 = *(a2 + 64);
  *v8 = *v10;
  *(a1 + 64) = v12;
LABEL_33:
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t outlined destroy of Binding<Bool>(uint64_t a1)
{
  type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<Bool>);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t assignWithTake for UISplitViewControllerVisibilityEngine(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  if (*(a1 + 32))
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      *(a1 + 24) = *(a2 + 24);

      *(a1 + 32) = v4;

      *(a1 + 40) = *(a2 + 40);
      goto LABEL_6;
    }

    outlined destroy of Binding<Bool>(a1 + 24);
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
LABEL_6:
  v6 = (a1 + 48);
  v5 = *(a1 + 48);
  v8 = (a2 + 48);
  v7 = *(a2 + 48);
  if (v5 != 1)
  {
    if (v7 == 1)
    {
      outlined destroy of NavigationEventHandlers(a1 + 48);
      goto LABEL_9;
    }

    if (v5)
    {
      if (v7)
      {
        v11 = *(a2 + 56);
        *(a1 + 48) = v7;
        *(a1 + 56) = v11;

        goto LABEL_18;
      }
    }

    else if (v7)
    {
      v12 = *(a2 + 56);
      *(a1 + 48) = v7;
      *(a1 + 56) = v12;
      goto LABEL_18;
    }

    *v6 = *v8;
LABEL_18:
    v13 = *(a2 + 64);
    if (*(a1 + 64))
    {
      if (v13)
      {
        v14 = *(a2 + 72);
        *(a1 + 64) = v13;
        *(a1 + 72) = v14;

        goto LABEL_10;
      }
    }

    else if (v13)
    {
      v15 = *(a2 + 72);
      *(a1 + 64) = v13;
      *(a1 + 72) = v15;
      goto LABEL_10;
    }

    *(a1 + 64) = *(a2 + 64);
    goto LABEL_10;
  }

LABEL_9:
  v9 = *(a2 + 64);
  *v6 = *v8;
  *(a1 + 64) = v9;
LABEL_10:
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for UISplitViewControllerVisibilityEngine(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t storeEnumTagSinglePayload for UISplitViewControllerVisibilityEngine(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static ViewBasedUIButton.makeButton(configuration:content:showsTitle:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for UIButton.Configuration();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v10 = UIButton.init(configuration:primaryAction:)();
  ViewBasedUIButton.configureContentHost(_:showsTitle:)(a2, a3);
  return v10;
}

id static ViewBasedUIButton.makeButton(type:content:showsTitle:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = [swift_getObjCClassFromMetadata() buttonWithType_];
  ViewBasedUIButton.configureContentHost(_:showsTitle:)(a2, a3);
  return v5;
}

Swift::Void __swiftcall ViewBasedUIButton.setShowsTitle(_:)(Swift::Bool a1)
{
  if (a1)
  {
    v2 = *(v1 + direct field offset for ViewBasedUIButton.contentHost);
    if (v2)
    {
      v3 = v2;
      v4 = _UIHostingView.viewGraph.getter();

      swift_beginAccess();
      v5 = *(v4 + 361);
      *(v4 + 361) = v5 | 2;
      if ((v5 | 2) != v5)
      {
        GraphHost.uninstantiate(immediately:)(0);
      }
    }
  }
}

void ViewBasedUIButton.setRootView(_:transaction:)(uint64_t a1)
{
  v2 = *(v1 + direct field offset for ViewBasedUIButton.contentHost);
  if (v2)
  {
    v4 = v2;
    _UIHostingView.setRootView(_:transaction:)(a1);
  }
}

uint64_t ViewBasedUIButton.sizeThatFits(_:)()
{
  v1 = *(v0 + direct field offset for ViewBasedUIButton.contentHost);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for _UIHostingView();
  v2 = v1;
  swift_getWitnessTable();
  ViewRendererHost.sizeThatFits(_:)();
  v4 = v3;

  return v4;
}

void ViewBasedUIButton.identifiedViewTree()(uint64_t a1@<X8>)
{
  v3 = *(v1 + direct field offset for ViewBasedUIButton.contentHost);
  if (!v3)
  {
    *(a1 + 160) = 0;
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
    v18 = 2;
    goto LABEL_11;
  }

  type metadata accessor for _UIHostingView();
  v4 = v3;
  swift_getWitnessTable();
  ViewRendererHost.preferenceValue<A>(_:)();
  outlined init with copy of _IdentifiedViewTree(v20, v19);
  if (v19[168] != 2 || (v5 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(*&v19[40], *&v19[104]), vorrq_s8(*&v19[72], *&v19[136])), vorrq_s8(vorrq_s8(*&v19[56], *&v19[120]), vorrq_s8(*&v19[88], *&v19[152]))), vorrq_s8(*&v19[8], *&v19[24])), *&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | *v19))
  {
    outlined destroy of _IdentifiedViewTree(v19);
    outlined init with copy of _IdentifiedViewTree(v20, v19);
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
    }

    outlined destroy of _IdentifiedViewTree(v20);
    *(v6 + 2) = v8 + 1;
    v9 = &v6[176 * v8];
    v11 = *&v19[16];
    v10 = *&v19[32];
    *(v9 + 2) = *v19;
    *(v9 + 3) = v11;
    *(v9 + 4) = v10;
    v12 = *&v19[96];
    v14 = *&v19[48];
    v13 = *&v19[64];
    *(v9 + 7) = *&v19[80];
    *(v9 + 8) = v12;
    *(v9 + 5) = v14;
    *(v9 + 6) = v13;
    v16 = *&v19[128];
    v15 = *&v19[144];
    v17 = *&v19[112];
    *(v9 + 185) = *&v19[153];
    *(v9 + 10) = v16;
    *(v9 + 11) = v15;
    *(v9 + 9) = v17;
    if (*(v6 + 2))
    {
      goto LABEL_7;
    }

LABEL_10:

    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    v18 = 2;
    *(a1 + 8) = 0u;
    *a1 = 0;
    goto LABEL_11;
  }

  outlined destroy of _IdentifiedViewTree(v20);

  outlined destroy of _IdentifiedViewTree(v19);
  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_10;
  }

LABEL_7:
  v18 = 1;
  *a1 = v6;
LABEL_11:
  *(a1 + 168) = v18;
}

Swift::String_optional __swiftcall ViewBasedUIButton.menuTitle()()
{
  v1 = type metadata accessor for PlatformItemList.Item();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(v0 + direct field offset for ViewBasedUIButton.contentHost);
  if (v4)
  {
    type metadata accessor for _UIHostingView();
    v5 = v4;
    swift_getWitnessTable();
    v6 = ViewRendererHost.platformItemList.getter();
    PlatformItemList.mergedContentItem.getter(v6, v3);

    v7 = v3[112];
    if (v7 || (v7 = *v3) != 0)
    {
      v9 = [v7 string];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v10;
    }

    else
    {

      v8 = 0;
      v4 = 0;
    }

    outlined destroy of PlatformItemList.Item(v3);
  }

  else
  {
    v8 = 0;
  }

  v11 = v8;
  v12 = v4;
  result.value._object = v12;
  result.value._countAndFlagsBits = v11;
  return result;
}

uint64_t UIKitButtonBase.delegate.setter(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC7SwiftUI15UIKitButtonBase_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id UIKitButtonBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIKitButtonBase();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void ViewBasedUIButton.configureContentHost(_:showsTitle:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x70);
  v7 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x78);
  v8 = objc_allocWithZone(type metadata accessor for UIKitButtonContentHost());
  v9 = specialized UIKitButtonContentHost.init(rootView:)(a1);
  if (a2)
  {
    v10 = _UIHostingView.viewGraph.getter();
    swift_beginAccess();
    v11 = *(v10 + 361);
    *(v10 + 361) = v11 | 2;
    if ((v11 | 2) != v11)
    {
      GraphHost.uninstantiate(immediately:)(0);
    }
  }

  v12 = v9;
  _UIHostingView.viewGraph.getter();
  static _ProposedSize.unspecified.getter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v6;
  v14[3] = v7;
  v14[4] = v13;
  swift_beginAccess();
  type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>();
  ViewGraphGeometryObservers.addObserver(for:exclusive:callback:)();
  swift_endAccess();

  v15 = *(v3 + direct field offset for ViewBasedUIButton.contentHost);
  *(v3 + direct field offset for ViewBasedUIButton.contentHost) = v12;
  v16 = v12;

  v17 = [v3 _effectiveContentView];
  v18 = v16;
  [v17 addSubview_];
  [v17 bounds];
  [v18 setFrame_];

  [v18 setAutoresizingMask_];
}

void *UIKitButtonContentHost.__allocating_init(rootView:)(uint64_t a1)
{
  v3 = specialized UIKitButtonContentHost.__allocating_init(rootView:)(a1);
  (*(*(*(v1 + 1792) - 8) + 8))(a1);
  return v3;
}

void closure #1 in ViewBasedUIButton.configureContentHost(_:showsTitle:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      [Strong invalidateIntrinsicContentSize];
    }
  }
}

uint64_t @objc ViewBasedUIButton.isHighlighted.getter(void *a1)
{
  v1 = a1;
  v2 = ViewBasedUIButton.isHighlighted.getter();

  return v2 & 1;
}

id ViewBasedUIButton.isHighlighted.getter()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_isHighlighted);
}

void @objc ViewBasedUIButton.isHighlighted.setter(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  ViewBasedUIButton.isHighlighted.setter(a3);
}

void ViewBasedUIButton.isHighlighted.setter(char a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_setHighlighted_, a1 & 1);
  ViewBasedUIButton.isHighlighted.didset();
}

void ViewBasedUIButton.isHighlighted.didset()
{
  v1 = &v0[direct field offset for ViewBasedUIButton.isPressed];
  v2 = *&v0[direct field offset for ViewBasedUIButton.isPressed + 8];
  if (v2)
  {
    v3 = v0;
    v4 = v1[16];
    v5 = *v1;

    v9.receiver = v3;
    v9.super_class = swift_getObjectType();
    objc_msgSendSuper2(&v9, sel_isHighlighted);
    v6 = static Animation.coreAnimationDefault(duration:)();
    ObjectType = swift_getObjectType();
    v9.receiver = v3;
    v9.super_class = ObjectType;
    LOBYTE(v3) = objc_msgSendSuper2(&v9, sel_isHighlighted);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v5;
    *(v8 + 32) = v2;
    *(v8 + 40) = v4 & 1;
    *(v8 + 41) = v3;

    onNextMainRunLoop(do:)();
  }
}

double @objc ViewBasedUIButton.intrinsicContentSize.getter(void *a1)
{
  v1 = a1;
  ViewBasedUIButton.intrinsicContentSize.getter();
  v3 = v2;

  return v3;
}

id ViewBasedUIButton.intrinsicContentSize.getter()
{
  v1 = *&v0[direct field offset for ViewBasedUIButton.contentHost];
  if (v1)
  {
    return [v1 intrinsicContentSize];
  }

  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v3, sel_intrinsicContentSize);
}

id ViewBasedUIButton._baselineOffsets(at:)(double a1, double a2)
{
  v3 = *&v2[direct field offset for ViewBasedUIButton.contentHost];
  if (v3)
  {
    return [v3 _baselineOffsetsAtSize_];
  }

  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v7, sel__baselineOffsetsAtSize_, a1, a2);
}

double @objc ViewBasedUIButton._baselineOffsets(at:)(void *a1, double a2, double a3)
{
  v5 = a1;
  ViewBasedUIButton._baselineOffsets(at:)(a2, a3);
  v7 = v6;

  return v7;
}

Class @objc ViewBasedUIButton.automationElements.getter(void *a1)
{
  v1 = a1;
  v2 = ViewBasedUIButton.automationElements.getter();

  if (v2)
  {
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

id ViewBasedUIButton.automationElements.getter()
{
  result = *(v0 + direct field offset for ViewBasedUIButton.contentHost);
  if (result)
  {
    result = [result automationElements];
    if (result)
    {
      v2 = result;
      v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      return v3;
    }
  }

  return result;
}

Swift::Void __swiftcall ViewBasedUIButton.didUpdateFocus(in:with:)(UIFocusUpdateContext in, UIFocusAnimationCoordinator with)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_didUpdateFocusInContext_withAnimationCoordinator_, in.super.isa, with.super.isa);
  v5 = *&v2[direct field offset for ViewBasedUIButton.contentHost];
  if (v5)
  {
    type metadata accessor for _UIHostingView();
    v6 = v5;
    swift_getWitnessTable();
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }
}

void @objc ViewBasedUIButton.didUpdateFocus(in:with:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  ViewBasedUIButton.didUpdateFocus(in:with:)(v6, v7);
}

id ViewBasedUIButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[direct field offset for ViewBasedUIButton.contentHost] = 0;
  v10 = &v4[direct field offset for ViewBasedUIButton.isPressed];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 0;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id ViewBasedUIButton.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[direct field offset for ViewBasedUIButton.contentHost] = 0;
  v4 = &v1[direct field offset for ViewBasedUIButton.isPressed];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t ViewBasedUIButton.__ivar_destroyer()
{
  v1 = *(v0 + direct field offset for ViewBasedUIButton.isPressed);
  v2 = *(v0 + direct field offset for ViewBasedUIButton.isPressed + 8);

  return outlined consume of Binding<NavigationSplitViewColumn>?(v1, v2);
}

uint64_t @objc ViewBasedUIButton.__ivar_destroyer(uint64_t a1)
{
  v2 = *(a1 + direct field offset for ViewBasedUIButton.isPressed);
  v3 = *(a1 + direct field offset for ViewBasedUIButton.isPressed + 8);

  return outlined consume of Binding<NavigationSplitViewColumn>?(v2, v3);
}

uint64_t UIKitButtonContentHost.appendViewGraphFeatures()()
{
  _UIHostingView.viewGraph.getter();
  lazy protocol witness table accessor for type ButtonContentViewGraph and conformance ButtonContentViewGraph();
  ViewGraph.append<A>(feature:)();
}

id UIKitButtonContentHost.hitTest(_:with:)(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  if (!a1)
  {
    return 0;
  }

  v8 = ObjectType;
  if ([a1 type] != 11)
  {
    return 0;
  }

  v10.receiver = v3;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, sel_hitTest_withEvent_, a1, a2, a3);
}

id @objc UIKitButtonContentHost.hitTest(_:with:)(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  v11 = UIKitButtonContentHost.hitTest(_:with:)(a5, a2, a3);

  return v11;
}

unint64_t lazy protocol witness table accessor for type ButtonContentViewGraph and conformance ButtonContentViewGraph()
{
  result = lazy protocol witness table cache variable for type ButtonContentViewGraph and conformance ButtonContentViewGraph;
  if (!lazy protocol witness table cache variable for type ButtonContentViewGraph and conformance ButtonContentViewGraph)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonContentViewGraph and conformance ButtonContentViewGraph);
  }

  return result;
}

uint64_t protocol witness for ViewGraphFeature.modifyViewInputs(inputs:graph:) in conformance ButtonContentViewGraph()
{
  lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
  PropertyList.subscript.getter();
  return PropertyList.subscript.setter();
}

void *specialized UIKitButtonContentHost.init(rootView:)(uint64_t a1)
{
  v1 = specialized _UIHostingView.init(rootView:)(a1);
  _UIHostingView.safeAreaRegions.setter();

  return v1;
}

uint64_t SystemTabView.BodyContent.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  outlined init with copy of _VariadicView_Children(v3 + 88, v43);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = *&v43[16];
  *(v7 + 32) = *v43;
  *(v7 + 48) = v8;
  v9 = v45;
  *(v7 + 64) = v44;
  *(v7 + 80) = v9;
  v33 = v5;
  v34 = v6;
  v35 = partial apply for implicit closure #2 in implicit closure #1 in SystemTabView.BodyContent.body.getter;
  v36 = v7;
  type metadata accessor for Binding();
  type metadata accessor for Optional();
  type metadata accessor for Binding<Int?>();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for thunk for @callee_guaranteed (@in_guaranteed Binding<A>) -> (@owned Binding<Int?>), v32, MEMORY[0x1E69E73E0], v10, v11, &v39);

  if (v40)
  {
    v12 = v41;
    v13 = v39;
    v14 = v42;
  }

  else
  {
    type metadata accessor for Int?(0, &lazy cache variable for type metadata for State<AnyHashable>, MEMORY[0x1E69E69B8], MEMORY[0x1E6981790]);
    State.projectedValue.getter();
    outlined init with copy of _VariadicView_Children(v3 + 88, v43);
    type metadata accessor for ChildIndexProjection();
    v15 = swift_allocObject();
    v16 = *&v43[16];
    v15[1] = *v43;
    v15[2] = v16;
    v17 = v45;
    v15[3] = v44;
    v15[4] = v17;
    v13 = specialized Binding.projecting<A>(_:)(v15);
    v12 = v18;
    v14 = v19;

    outlined destroy of Binding<AnyHashable>(&v37);
  }

  v20 = specialized Environment.wrappedValue.getter(*v3, *(v3 + 8), *(v3 + 16) | (*(v3 + 17) << 8));
  if (v21)
  {
    v23 = v20;
    v24 = v21;
    v25 = v22;
  }

  else
  {
    v26 = *(v3 + 80);
    LOBYTE(v37) = *(v3 + 72);
    v38 = v26;
    type metadata accessor for Int?(0, &lazy cache variable for type metadata for State<Visibility>, MEMORY[0x1E697DB50], MEMORY[0x1E6981790]);
    State.projectedValue.getter();
    v24 = *&v43[8];
    v23 = *v43;
    v25 = v43[16];
  }

  outlined init with copy of _VariadicView_Children(v3 + 88, a2 + 48);
  KeyPath = swift_getKeyPath();
  v37 = 0;
  BindingOperations.NilCoalescing.init(defaultValue:)();
  v31 = *v43;
  *v43 = KeyPath;
  *&v43[8] = v31;
  v39 = v12;
  LOBYTE(v40) = v14 & 1;

  swift_getAtKeyPath();
  if (v38)
  {
    v28 = v31;
  }

  else
  {
    v28 = v37;
  }

  type metadata accessor for ComposedProjection<WritableKeyPath<Int?, Int?>, BindingOperations.NilCoalescing<Int>>();
  lazy protocol witness table accessor for type WritableKeyPath<Int?, Int?> and conformance WritableKeyPath<A, B>(&lazy protocol witness table cache variable for type ComposedProjection<WritableKeyPath<Int?, Int?>, BindingOperations.NilCoalescing<Int>> and conformance ComposedProjection<A, B>, type metadata accessor for ComposedProjection<WritableKeyPath<Int?, Int?>, BindingOperations.NilCoalescing<Int>>);
  v29 = dispatch thunk of AnyLocation.projecting<A>(_:)();

  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  result = swift_getKeyPath();
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = result;
  *(a2 + 40) = 0;
  *(a2 + 112) = v13;
  *(a2 + 120) = v29;
  *(a2 + 128) = v28;
  *(a2 + 136) = v23;
  *(a2 + 144) = v24;
  *(a2 + 152) = v25;
  *(a2 + 153) = 2;
  return result;
}

uint64_t SystemTabView.BodyContent.init(clientSidebarVisibility:children:selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 17) = HIBYTE(a3) & 1;
  AnyHashable.init<A>(_:)();
  *(a6 + 24) = v14;
  *(a6 + 40) = v15;
  v9 = a4[1];
  *(a6 + 88) = *a4;
  *(a6 + 104) = v9;
  v10 = a4[3];
  *(a6 + 120) = a4[2];
  *(a6 + 56) = v16;
  *(a6 + 64) = 0;
  *(a6 + 72) = 0;
  *(a6 + 80) = 0;
  *(a6 + 136) = v10;
  v11 = *(type metadata accessor for SystemTabView.BodyContent() + 48);
  type metadata accessor for Binding();
  v12 = type metadata accessor for Optional();
  return (*(*(v12 - 8) + 32))(a6 + v11, a5, v12);
}

Swift::Void __swiftcall TabViewCoordinator_Phone.cacheChild(_:childID:for:)(UIViewController *_, Swift::String childID, Swift::String a3)
{
  v4 = v3;
  object = a3._object;
  countAndFlagsBits = a3._countAndFlagsBits;
  v7 = childID._object;
  v37 = _;
  v38 = childID._countAndFlagsBits;
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.tabView.getter();
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of Binding<TabViewCustomization>?(v10, type metadata accessor for Logger?);
  }

  else
  {
    v36 = countAndFlagsBits;

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v40 = v16;
      *v15 = 136315394;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v7, &v40);
      *(v15 + 12) = 2080;
      *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, object, &v40);
      _os_log_impl(&dword_18BD4A000, v13, v14, "Caching child id %s in group id %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x18D0110E0](v16, -1, -1);
      MEMORY[0x18D0110E0](v15, -1, -1);
    }

    (*(v12 + 8))(v10, v11);
    countAndFlagsBits = v36;
  }

  v17 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_groupHostCache;
  swift_beginAccess();
  v18 = *(v4 + v17);
  if (*(v18 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object), (v20 & 1) != 0))
  {
    v21 = (*(v18 + 56) + 32 * v19);
    v22 = *v21;
    v23 = v21[1];
    v25 = v21[2];
    v24 = v21[3];
  }

  else
  {
    v23 = _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSS_So16UIViewControllerCSaySS_AItGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v25 = v26;
    v24 = v27;
    v22 = 10;
  }

  v40 = v22;
  v41 = v23;
  v42 = v25;
  v43 = v24;
  swift_endAccess();
  v28 = *(v24 + 16);
  v29 = v37;
  if (v22 <= v28)
  {
    TabItemGroup.HostCache.removeOldestKey()();
  }

  specialized OrderedDictionary.subscript.setter(v29, v38, v7);
  v31 = v40;
  v30 = v41;
  v32 = v42;
  v33 = v43;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(v4 + v17);
  *(v4 + v17) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v30, v32, v33, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);

  *(v4 + v17) = v39;
  swift_endAccess();
}

uint64_t TabViewCoordinator_Phone.updatePopoverPresentation(presentations:presenter:host:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    if (a3)
    {
      *(result + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_host + 8) = lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>();
      swift_unknownObjectWeakAssign();
    }

    swift_unknownObjectWeakAssign();
    PreferenceValues.init()();
    v8 = swift_allocObject();
    v9 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_nextPopoverSeed;
    v10 = *(v3 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_nextPopoverSeed);
    *(v8 + 16) = a1;
    v14 = partial apply for closure #1 in TabViewCoordinator_Phone.updatePopoverPresentation(presentations:presenter:host:);
    v15 = v8;
    LODWORD(v16) = v10;

    PreferenceValues.modifyValue<A>(for:transform:)();

    ++*(v3 + v9);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v12 = Strong, v13 = [Strong parentViewController], v12, v13))
    {

      v14 = v17;
      UIKitPopoverBridge.preferencesDidChange(_:)(&v14);
    }

    else
    {
      *&v7[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_delayedPopoverPreferences] = v17;
    }
  }

  return result;
}

Swift::Void __swiftcall TabViewCoordinator_Phone.dismissPresentationIfNeeded()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabs);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v14;
    v4 = v1 + 32;
    do
    {
      outlined init with copy of TabEntry(v4, v13);
      v5 = TabEntry.presentationCount.getter();
      outlined destroy of TabEntry(v13);
      v14 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        v3 = v14;
      }

      *(v3 + 16) = v7 + 1;
      *(v3 + 8 * v7 + 32) = v5;
      v4 += 288;
      --v2;
    }

    while (v2);
  }

  v8 = *(v3 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = 32;
    do
    {
      v11 = *(v3 + v10);
      v12 = __OFADD__(v9, v11);
      v9 += v11;
      if (v12)
      {
        __break(1u);
        return;
      }

      v10 += 8;
      --v8;
    }

    while (v8);

    if (!v9)
    {
      goto LABEL_15;
    }

    if (v9 >= 2)
    {
      MEMORY[0x18D009810](0xD00000000000008FLL, 0x800000018CD3FFC0);
    }
  }

  else
  {

LABEL_15:
    TabViewCoordinator_Phone.updatePopoverPresentation(presentations:presenter:host:)(MEMORY[0x1E69E7CC0], 0, 0);
  }
}

Swift::Void __swiftcall TabViewCoordinator_Phone.tabBarController(_:didSelect:)(UITabBarController *_, UIViewController *didSelect)
{
  type metadata accessor for Binding<SearchFieldState>?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<SearchFieldState>(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;

    if (v14 == didSelect)
    {
      type metadata accessor for TabHostingController(0);
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = v15;
        v48 = _;
        v17 = didSelect;
        v49 = v16;
        v50 = v17;
        v18 = [v16 childViewControllers];
        v47[1] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
        v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v19 >> 62)
        {
          v20 = __CocoaSet.count.getter();
        }

        else
        {
          v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v21 = v50;
        if (v20 != 1)
        {
          goto LABEL_15;
        }

        v21 = [v49 childViewControllers];

        v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        if ((v22 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x18D00E9C0](0, v22);
        }

        else
        {
          if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_33;
          }

          v23 = *(v22 + 32);
        }

        v21 = v23;

        objc_opt_self();
        v24 = swift_dynamicCastObjCClass();
        if (!v24)
        {
          goto LABEL_15;
        }

        v47[0] = v24;
        v25 = [v24 viewControllers];
        v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (!(v26 >> 62))
        {
          v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_13;
        }

LABEL_33:
        v27 = __CocoaSet.count.getter();
LABEL_13:

        if (v27 >= 2)
        {

          goto LABEL_17;
        }

LABEL_15:

        v28 = [v49 contentScrollView];
        if (!v28)
        {
          _ = v48;
          v21 = v50;
          goto LABEL_19;
        }

        v21 = v28;
        [(UIViewController *)v28 contentOffset];
        v30 = v29;
        [(UIViewController *)v21 adjustedContentInset];
        [(UIViewController *)v21 setContentOffset:1 animated:v30, -v31];
LABEL_17:
        _ = v48;

LABEL_19:
      }
    }
  }

  if (*(v2 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_searchIndex + 8) == 1)
  {
    v32 = swift_unknownObjectWeakLoadStrong();
    if (!v32 || (v33 = v32, v32, v33 != didSelect))
    {
      v34 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_searchState;
      swift_beginAccess();
      outlined init with copy of Binding<TabViewCustomization>?(v2 + v34, v7, type metadata accessor for Binding<SearchFieldState>?);
      if ((*(v10 + 48))(v7, 1, v9) == 1)
      {
        v35 = type metadata accessor for Binding<SearchFieldState>?;
        v36 = v7;
      }

      else
      {
        v37 = outlined init with take of Binding<SearchFieldState>(v7, v12);
        MEMORY[0x1EEE9AC00](v37);
        v47[-2] = v12;
        v52 = 17;
        MEMORY[0x1EEE9AC00](v38);
        v47[-2] = partial apply for closure #1 in TabViewCoordinator_Phone.tabBarController(_:didSelect:);
        v47[-1] = v39;
        static Update.dispatchImmediately<A>(reason:_:)();
        v35 = type metadata accessor for Binding<SearchFieldState>;
        v36 = v12;
      }

      outlined destroy of Binding<TabViewCustomization>?(v36, v35);
    }
  }

  v40 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_selectionCache;
  swift_beginAccess();
  v41 = *(v2 + v40);

  v54.value._rawValue = v41;
  v53 = TabViewCoordinator_Phone.updatedSelection(didSelect:viewController:selectionCache:)(_, didSelect, v54);
  value = v53.value;
  LOBYTE(v40) = v53.is_nil;

  if ((v40 & 1) == 0)
  {
    v51 = 17;
    v43 = *(v2 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_selected);
    v44 = *(v2 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_selected + 8);
    v45 = *(v2 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_selected + 16);
    v46 = swift_allocObject();
    v46[2] = v43;
    v46[3] = v44;
    v46[4] = v45;
    v46[5] = value;
    swift_retain_n();
    swift_retain_n();
    static Update.enqueueAction(reason:_:)();
  }

  swift_unknownObjectWeakAssign();
}

uint64_t closure #1 in TabViewCoordinator_Phone.tabBarController(_:didSelect:)()
{
  v0 = type metadata accessor for SearchFieldState(0);
  v1 = v0 - 8;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<SearchFieldState>(0);
  MEMORY[0x18D00ACC0]();
  v4 = v3[2];
  v5 = v3[3];
  outlined destroy of Binding<TabViewCustomization>?(v3, type metadata accessor for SearchFieldState);
  *v3 = 2;
  v3[1] = specialized static SearchSuggestionsPlacement.Role.initial.getter() & 1;
  *(v3 + 1) = 2;
  *(v3 + 1) = 0;
  v3[8] = 1;
  AttributedString.init()();
  v3[*(v1 + 48)] = 0;
  v6 = *(v1 + 52);
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v7 = &v3[v6];
  v8 = byte_1EAB095CC;
  *v7 = static SearchFocusUpdate.empty;
  v7[4] = v8;
  v3[2] = v4;
  v3[3] = v5;
  dispatch thunk of AnyLocation.set(_:transaction:)();
  return outlined destroy of Binding<TabViewCustomization>?(v3, type metadata accessor for SearchFieldState);
}

Swift::Void __swiftcall TabViewCoordinator_Phone.tabBarControllerDidEndEditing(_:)(UITabBarController *a1)
{
  type metadata accessor for Binding<TabViewCustomization>?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.tabView.getter();
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of Binding<TabViewCustomization>?(v6, type metadata accessor for Logger?);
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_18BD4A000, v9, v10, "tabBarControllerDidEndEditing", v11, 2u);
      MEMORY[0x18D0110E0](v11, -1, -1);
    }

    (*(v8 + 8))(v6, v7);
  }

  v12 = [(UITabBarController *)a1 viewControllers];
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v14 = v12;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v32 = v13;
  if (v15 >> 62)
  {
LABEL_27:
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  while (v16 != v17)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x18D00E9C0](v17, v15);
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v19 = *(v15 + 8 * v17 + 32);
    }

    v20 = v19;
    v21 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v22 = [v19 _uip_tabElement];

    ++v17;
    if (v22)
    {
      MEMORY[0x18D00CC30]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v18 = v32;
      v17 = v21;
    }
  }

  if (v18 >> 62)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _UITab);

    v23 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _UITab);
    v23 = v18;
  }

  v24 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_customization;
  v25 = v31;
  swift_beginAccess();
  v26 = v25 + v24;
  v27 = v30;
  outlined init with copy of Binding<TabViewCustomization>?(v26, v30, type metadata accessor for Binding<TabViewCustomization>?);
  v28 = *(v25 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabCache);

  TabViewCoordinator_Phone.mayHaveCustomizedTabBarVisibility(of:customization:tabCache:)(v23, v27, v28);

  outlined destroy of Binding<TabViewCustomization>?(v27, type metadata accessor for Binding<TabViewCustomization>?);
}

Class @objc TabViewCoordinator_Phone.tabBarController(_:sidebar:itemsForBeginning:tab:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = *&a1[OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabCache];

  v9 = a6;
  v10 = a1;
  TabViewCoordinator_Phone.dragSessionItems(for:tabCache:)(v9, v8);

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem);
  v11.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v11.super.isa;
}

id @objc TabViewCoordinator_Phone.tabBarController(_:sidebar:leadingSwipeActionsConfigurationFor:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v9 = *&a1[OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabCache];

  v10 = a5;
  v11 = a1;
  v12 = TabViewCoordinator_Phone.swipeActionsConfiguration(for:edge:tabCache:)(v10, a6, v9);

  return v12;
}

void TabViewCoordinator_Phone.__ivar_destroyer()
{

  MEMORY[0x18D011290](v0 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_lastSelection);
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration + 32);
  outlined consume of Binding<NavigationSplitViewColumn>?(*(v0 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration + 8), *(v0 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration + 16));
  outlined consume of TabSidebarAccessoryViewConfiguration?(v1);
  outlined destroy of Binding<TabViewCustomization>?(v0 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_customization, type metadata accessor for Binding<TabViewCustomization>?);
  MEMORY[0x18D011290](v0 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_popoverBridge);
  outlined destroy of Binding<TabViewCustomization>?(v0 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_searchState, type metadata accessor for Binding<SearchFieldState>?);
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_currentTabDropTarget);
}

uint64_t type metadata accessor for TabViewCoordinator_Phone()
{
  result = type metadata singleton initialization cache for TabViewCoordinator_Phone;
  if (!type metadata singleton initialization cache for TabViewCoordinator_Phone)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TabViewCoordinator_Phone()
{
  type metadata accessor for Binding<TabViewCustomization>?(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Binding<SearchFieldState>?(319);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t outlined consume of TabSidebarAccessoryViewConfiguration?(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void specialized OrderedDictionary.subscript.setter(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = *(v8 + 16);
  if (*v3)
  {

    v10 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a2, a3, v8 + 32, v9, (v7 + 16));
    v12 = v11;
    v14 = v13;

    if ((v12 & 1) == 0)
    {

      if (!a1)
      {
        goto LABEL_25;
      }

LABEL_19:
      v20 = v3[2];
      v18 = v3 + 2;
      v19 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v18 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v19);
        *v18 = v19;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v10 < *(v19 + 16))
      {
        v22 = v19 + 8 * v10;
        v23 = *(v22 + 32);
        *(v22 + 32) = a1;

        specialized ContiguousArray._endMutation()();
        return;
      }

      __break(1u);
      return;
    }
  }

  else if (v9)
  {
    v10 = 0;
    v15 = (v8 + 40);
    while (1)
    {
      v16 = *(v15 - 1) == a2 && *v15 == a3;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v10;
      v15 += 2;
      if (v9 == v10)
      {
        goto LABEL_13;
      }
    }

    if (!a1)
    {
      v14 = 0;
LABEL_25:
      specialized OrderedSet._removeExistingMember(at:in:)(v10, v14);

      v17 = specialized ContiguousArray.remove(at:)(v10);
      goto LABEL_26;
    }

    goto LABEL_19;
  }

LABEL_13:
  if (a1)
  {
    specialized OrderedSet._appendNew(_:in:)(a2, a3);

    v24 = a1;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v17 = v24;
LABEL_26:

    return;
  }
}

uint64_t specialized OrderedDictionary.removeValue(forKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v6 + 16);
  if (!*v2)
  {
    if (v7)
    {
      v8 = 0;
      for (i = (v6 + 40); ; i += 2)
      {
        v14 = *(i - 1) == a1 && *i == a2;
        if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        if (v7 == ++v8)
        {
          return 0;
        }
      }

      v12 = 0;
      goto LABEL_14;
    }

    return 0;
  }

  v8 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, a2, v6 + 32, v7, (v5 + 16));
  v10 = v9;
  v12 = v11;

  if (v10)
  {
    return 0;
  }

LABEL_14:
  specialized OrderedSet._removeExistingMember(at:in:)(v8, v12);

  return specialized ContiguousArray.remove(at:)(v8);
}

uint64_t specialized OrderedSet._appendNew(_:in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((result & 1) == 0)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1);
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
    v7 = *v6;
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 16 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  v3[1] = v7;
  v13 = *v3;
  if (*v3)
  {
    swift_beginAccess();
    if (MEMORY[0x18D000D70](*(v13 + 16) & 0x3FLL) > v11)
    {
      result = swift_isUniquelyReferenced_native();
      v14 = *v3;
      if ((result & 1) == 0)
      {
        if (!v14)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v15 = _HashTable.copy()();

        *v3 = v15;
        v14 = v15;
      }

      if (v14)
      {
        return _HashTable.UnsafeHandle.subscript.setter();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v11 < 0xF)
  {
    return result;
  }

  return specialized OrderedSet._regenerateHashTable()();
}

uint64_t specialized OrderedSet._regenerateHashTable()()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x18D000DA0](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySSG_Tt2g5(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

uint64_t _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySSG_Tt2g5(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x18D000DA0](v6);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x18D000DB0](v8, a4);
    specialized _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(a1, (v10 + 16));
    return v10;
  }

  return result;
}

Swift::Int specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v7 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v7)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle._startIterator(bucket:)();
    result = _HashTable.BucketIterator.currentValue.getter();
    if ((v10 & 1) == 0)
    {
      v11 = (a3 + 16 * result);
      if (*v11 != a1 || v11[1] != a2)
      {
        while (1)
        {
          v13 = result;
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            break;
          }

          _HashTable.BucketIterator.advance()();
          result = _HashTable.BucketIterator.currentValue.getter();
          if ((v14 & 1) == 0)
          {
            v15 = (a3 + 16 * result);
            if (*v15 != a1 || v15[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v13;
      }
    }
  }

  return result;
}

uint64_t specialized OrderedSet._reserveCapacity(_:persistent:)(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v5 = result;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = MEMORY[0x18D000DA0](v5);
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = v12;
        swift_beginAccess();
        v12 = v16;
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = MEMORY[0x18D000DA0](v5);
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (v13 <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v13;
  }

  result = MEMORY[0x18D000DA0](*(v7 + 16));
  if (result <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = result;
  }

  if (v18 < v11)
  {
    if (v13 <= v18)
    {
      v15 = v18;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v19 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySSG_Tt2g5(v7, v15, 0, v13);

    *v3 = v19;
    return result;
  }

  if (!v10 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v20 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v20 = _HashTable.copy()();

  *v3 = v20;
  if (!v20)
  {
    goto LABEL_39;
  }

LABEL_35:
  result = swift_beginAccess();
  if ((*(v20 + 24) & 0x3FLL) != v13)
  {
    *(v20 + 24) = *(v20 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }

  return result;
}

unint64_t specialized OrderedSet._removeExistingMember(at:in:)(int64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    return specialized ContiguousArray.remove(at:)(a1);
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= MEMORY[0x18D000D80]())
  {
LABEL_16:
    v11 = specialized ContiguousArray.remove(at:)(a1);
    specialized OrderedSet._regenerateHashTable()();
    return v11;
  }

  result = swift_isUniquelyReferenced_native();
  v9 = *v2;
  if ((result & 1) == 0)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = _HashTable.copy()();

    *v2 = v10;
    v9 = v10;
  }

  if (v9)
  {

    result = specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)(a2, (v9 + 16), v9 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      specialized _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(a1, a1 + 1, v4, (v9 + 16));

      return specialized ContiguousArray.remove(at:)(a1);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized ContiguousArray.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
    *v1 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    specialized ContiguousArray._endMutation()();
    return v8;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v14 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  _HashTable.BucketIterator.advance()();
  if (v14)
  {
    v7 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
    while (1)
    {
      result = _HashTable.BucketIterator.currentValue.getter();
      if (v9)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (result >= *(*(a4 + 8) + 16))
      {
        goto LABEL_18;
      }

      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = 1 << *a2;
      if (__OFSUB__(v11, 1))
      {
        goto LABEL_19;
      }

      v12 = (v11 - 1) & v10;
      if (v6 >= v7)
      {
        break;
      }

      if (v12 < v7)
      {
        goto LABEL_12;
      }

LABEL_13:
      _HashTable.BucketIterator.currentValue.getter();
      v6 = a1;
      _HashTable.UnsafeHandle.subscript.setter();
LABEL_3:
      _HashTable.BucketIterator.advance()();
    }

    if (v12 < v7)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (v6 < v12)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  return _HashTable.UnsafeHandle.subscript.setter();
}

void specialized _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_58;
  }

  if (v5 >= 1)
  {
    v8 = *(a3 + 16);
    if (a1 < (v8 - v5) / 2)
    {
      if (MEMORY[0x18D000D70](*a4 & 0x3FLL) / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v8 < a1)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        if (a1)
        {
          v9 = 0;
          while (1)
          {
            Hasher.init(_seed:)();

            String.hash(into:)();
            Hasher._finalize()();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (_HashTable.UnsafeHandle._startIterator(bucket:)())
            {
              while (1)
              {
                v10 = _HashTable.BucketIterator.currentValue.getter();
                if ((v11 & 1) == 0 && v10 == v9)
                {
                  break;
                }

                _HashTable.BucketIterator.advance()();
              }
            }

            if (__OFADD__(v9, v5))
            {
              goto LABEL_55;
            }

            ++v9;
            _HashTable.BucketIterator.currentValue.setter();

            if (v9 == a1)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      _HashTable.UnsafeHandle._startIterator(bucket:)();
      v17 = _HashTable.BucketIterator.currentValue.getter();
      if ((v18 & 1) != 0 || v17 >= a1)
      {
LABEL_33:
        _HashTable.BucketIterator.advance()();
LABEL_18:
        v12 = a4[1];
        if (__OFSUB__(v12 >> 6, v5))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v13 = 1 << *a4;
        v14 = __OFSUB__(v13, 1);
        v15 = v13 - 1;
        if (v14)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v16 = (v15 & (((v12 >> 6) - v5) >> 63)) + (v12 >> 6) - v5;
        if (v16 < v15)
        {
          v15 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v16 - v15) << 6);
        return;
      }

      if (!__OFADD__(v17, v5))
      {
        _HashTable.BucketIterator.currentValue.setter();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      _HashTable.UnsafeHandle._startIterator(bucket:)();
      v19 = _HashTable.BucketIterator.currentValue.getter();
      if ((v20 & 1) == 0 && v19 >= v4)
      {
        if (__OFSUB__(v19, v5))
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      _HashTable.BucketIterator.advance()();
      return;
    }

    v4 = a2;
    if (__OFSUB__(v8, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if ((v8 - a2) >= MEMORY[0x18D000D70](*a4 & 0x3FLL) / 3)
    {
      goto LABEL_39;
    }

    if (v8 < v4)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v4 < 0)
    {
LABEL_65:
      __break(1u);
      return;
    }

    if (v8 != v4)
    {
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        Hasher._finalize()();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (_HashTable.UnsafeHandle._startIterator(bucket:)())
        {
          while (1)
          {
            v21 = _HashTable.BucketIterator.currentValue.getter();
            if ((v22 & 1) == 0 && v21 == v4)
            {
              break;
            }

            _HashTable.BucketIterator.advance()();
          }
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      while (++v4 != v8);
    }
  }
}

uint64_t specialized TabViewCoordinator_Phone.badgeValue(environment:badgeLabel:)(__int128 *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for Locale();
  MEMORY[0x1EEE9AC00](v8 - 8);
  type metadata accessor for _UIHostingView<TabItem.RootView>(0, &lazy cache variable for type metadata for IntegerFormatStyle<Int>, lazy protocol witness table accessor for type Int and conformance Int, MEMORY[0x1E69E6530], MEMORY[0x1E6968900]);
  MEMORY[0x1EEE9AC00](v9);
  v10 = 0;
  if (a4 >> 1 != 0xFFFFFFFF)
  {
    v14 = *a1;
    if ((a4 & 0x8000000000000000) != 0)
    {
      outlined copy of Text.Storage(a2, a3, a4 & 1);
    }

    else
    {
      *&v16 = a2;
      static Locale.autoupdatingCurrent.getter();
      lazy protocol witness table accessor for type Int and conformance Int();
      IntegerFormatStyle.init(locale:)();
      lazy protocol witness table accessor for type IntegerFormatStyle<Int> and conformance IntegerFormatStyle<A>();
      a2 = Text.init<A>(_:format:)();
      a3 = v11;
      LOBYTE(a4) = v12;
    }

    v16 = v14;
    v15[1] = 0;
    v15[2] = 0;
    MEMORY[0x18D009CB0](v15);
    v10 = Text.resolveString(in:with:idiom:)();
    outlined consume of Text.Storage(a2, a3, a4 & 1);
  }

  return v10;
}

id _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSS_So16UIViewControllerCSaySS_AItGTt0g5Tf4g_n(uint64_t a1)
{
  v15 = MEMORY[0x1E69E7CC0];
  _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfCSo16UIViewControllerC_Tt0g5(MEMORY[0x1E69E7CC0]);
  v2 = *(a1 + 16);
  specialized OrderedSet._reserveCapacity(_:persistent:)(v2, 0);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 32;
  while (1)
  {
    v6 = (v4 + 24 * v3);
    v8 = *v6;
    v7 = v6[1];
    v9 = v6[2];
    v10 = *(v15 + 16);
    if (v10)
    {
      break;
    }

LABEL_12:

    v13 = v9;
    ++v3;
    specialized OrderedSet._appendNew(_:in:)(v8, v7);
    v5 = v9;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();

    if (v3 == v2)
    {
      return 0;
    }
  }

  v11 = (v15 + 40);
  while (1)
  {
    v12 = *(v11 - 1) == v8 && *v11 == v7;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v11 += 2;
    if (!--v10)
    {
      goto LABEL_12;
    }
  }

  result = v9;
  __break(1u);
  __break(1u);
  return result;
}

uint64_t specialized TabViewCoordinator_Phone.didUseChild(_:childID:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_groupHostCache;
  swift_beginAccess();
  v11 = *(v4 + v10);
  if (!*(v11 + 16))
  {
    return swift_endAccess();
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  if ((v13 & 1) == 0)
  {
    return swift_endAccess();
  }

  v14 = (*(v11 + 56) + 32 * v12);
  v15 = v14[1];
  v22 = *v14;
  v23 = a3;
  v16 = v14[2];
  v17 = v14[3];
  swift_endAccess();

  v18 = specialized OrderedDictionary.subscript.getter(a1, a2, v15, v16, v17);
  if (v18)
  {
    v19 = v18;

    specialized OrderedDictionary.subscript.setter(v19, a1, a2);
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v5 + v10);
  *(v5 + v10) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v15, v16, v17, v23, a4, isUniquelyReferenced_nonNull_native);

  *(v5 + v10) = v24;
  swift_endAccess();
}

uint64_t specialized TabViewCoordinator_Phone._uip_tabBarController(_:dropSessionDidUpdate:withDestinationTab:)(void *a1)
{
  if (a1)
  {
    v2 = [a1 identifier];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = (v1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_currentTabDropTarget);
    v7 = *(v1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_currentTabDropTarget);
    if (!v7)
    {
      if (!v5)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v6 = (v1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_currentTabDropTarget);
    v7 = *(v1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_currentTabDropTarget);
    if (!v7)
    {
      goto LABEL_25;
    }

    v5 = 0;
    v3 = 0;
  }

  v8 = [v7 identifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (!v5)
  {
    if (!v11)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (!v11)
  {
LABEL_17:

LABEL_18:
    v14 = *v6;
    if (*v6)
    {
      v15 = *(v1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabCache);

      v16 = v14;
      TabViewCoordinator_Phone.updateTargeting(_:for:tabCache:)(0, v16, v15);
    }

    v17 = a1;
    if (a1)
    {
      v18 = *(v1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabCache);

      v19 = a1;
      TabViewCoordinator_Phone.updateTargeting(_:for:tabCache:)(1, v19, v18);

      v17 = a1;
    }

    *v6 = v17;
    goto LABEL_25;
  }

  if (v3 == v9 && v5 == v11)
  {

    goto LABEL_25;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v13 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_25:

  return MEMORY[0x1EEE66BB8]();
}

uint64_t specialized TabViewCoordinator_Phone._tabElementGroup(_:didSelect:)(void *a1)
{
  v3 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_selectionCache;
  swift_beginAccess();
  v4 = *(v1 + v3);

  specialized TabViewCoordinator_Phone.updatedSelection(didSelect:element:selectionCache:)(a1, v4);
  v6 = v5;
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    v10 = v1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_selected;
    v11 = *(v1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_selected);
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = swift_allocObject();
    v14[2] = v11;
    v14[3] = v12;
    v14[4] = v13;
    v14[5] = v6;
    swift_retain_n();
    swift_retain_n();
    static Update.enqueueAction(reason:_:)();
  }

  return result;
}

id specialized TabViewCoordinator_Phone.tabBarController(_:sidebarVisibilityWillChange:animator:)(void *a1)
{
  v2 = v1;
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Log.tabView.getter();
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of Binding<TabViewCustomization>?(v6, type metadata accessor for Logger?);
  }

  else
  {
    v9 = a1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = [v9 isHidden];

      _os_log_impl(&dword_18BD4A000, v10, v11, "tabBarController: sidebarVisibilityWillChange:\nisHidden:%{BOOL}d", v12, 8u);
      MEMORY[0x18D0110E0](v12, -1, -1);
    }

    else
    {

      v10 = v9;
    }

    (*(v8 + 8))(v6, v7);
  }

  result = [a1 isHidden];
  if (*(v2 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_sidebarConfiguration + 16))
  {
    if (result)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    v15[15] = v14;

    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

uint64_t outlined destroy of Binding<TabViewCustomization>?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata completion function for SystemTabView.BodyContent()
{
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SystemTabView.BodyContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 16) & ~v6) + *(v5 + 64);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-153 - v6) | v6 | 7) - v7 >= 0xFFFFFFFFFFFFFFE7)
  {
    v11 = *a2;
    v12 = *(a2 + 8);
    v13 = *(a2 + 17);
    v14 = *(a2 + 16);
    v36 = *(v5 + 84);
    outlined copy of Environment<Binding<Visibility>?>.Content(*a2, v12, v14, v13);
    *a1 = v11;
    *(a1 + 8) = v12;
    *(a1 + 16) = v14;
    *(a1 + 17) = v13;
    v16 = ((a1 + 25) & 0xFFFFFFFFFFFFFFF8);
    v17 = ((a2 + 25) & 0xFFFFFFFFFFFFFFF8);
    v18 = v17[3];
    v16[3] = v18;
    v16[4] = v17[4];
    (**(v18 - 8))(v16, v17);
    v16[5] = v17[5];
    v19 = (v16 + 55) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v17 + 55) & 0xFFFFFFFFFFFFFFF8;
    *v19 = *v20;
    *(v19 + 8) = *(v20 + 8);
    v21 = ((v19 + 23) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
    v23 = v22[3];
    v21[3] = v23;
    v21[4] = v22[4];
    v24 = **(v23 - 8);

    v24(v21, v22, v23);
    v25 = v22[5];
    v21[5] = v25;
    v21[6] = v22[6];
    v21[7] = v22[7];
    v26 = v21 + 71;
    v27 = ((v22 + 71) & 0xFFFFFFFFFFFFFFF8);
    v28 = ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
    v29 = v25;

    if (v36 < 0)
    {
      v32 = (*(v5 + 48))(v28 + 1);
      v31 = (v26 & 0xFFFFFFFFFFFFFFF8);
      if (v32)
      {
LABEL_13:
        memcpy(v31, ((v22 + 71) & 0xFFFFFFFFFFFFFFF8), v7);
        return a1;
      }
    }

    else
    {
      v30 = *v28;
      if (*v28 >= 0xFFFFFFFF)
      {
        LODWORD(v30) = -1;
      }

      v31 = (v26 & 0xFFFFFFFFFFFFFFF8);
      if (v30 != -1)
      {
        goto LABEL_13;
      }
    }

    *v31 = *v27;
    v33 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v33 = *v28;
    v34 = *(v5 + 16);

    v34(v33 + 1, v28 + 1, v4);
    return a1;
  }

  v10 = *a2;
  *a1 = *a2;
  a1 = v10 + ((v6 + 16) & ~(v6 | 7));

  return a1;
}

uint64_t outlined copy of Environment<Binding<Visibility>?>.Content(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return outlined copy of Binding<Int>?(a1, a2);
  }

  else
  {
  }
}

uint64_t destroy for SystemTabView.BodyContent(uint64_t a1, uint64_t a2)
{
  outlined consume of Environment<Binding<Visibility>?>.Content(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 17));
  v4 = (a1 + 25) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v4);

  v5 = (((v4 + 55) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v5);

  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + (v8 | 7) + 64) & ~(v8 | 7);
  v10 = ~v8;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = v7;
  if ((*(v7 + 84) & 0x80000000) != 0)
  {
    result = (*(v7 + 48))((v11 + v8 + 8) & v10);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v12 = *v11;
  if (*v11 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  result = (v12 + 1);
  if (v12 == -1)
  {
LABEL_7:

    v14 = *(v15 + 8);

    return v14((v11 + v8 + 8) & v10, v6);
  }

  return result;
}

uint64_t initializeWithCopy for SystemTabView.BodyContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 17);
  v9 = *(a2 + 16);
  outlined copy of Environment<Binding<Visibility>?>.Content(*a2, v7, v9, v8);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 17) = v8;
  v10 = ((a1 + 25) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((a2 + 25) & 0xFFFFFFFFFFFFFFF8);
  v12 = v11[3];
  v10[3] = v12;
  v10[4] = v11[4];
  (**(v12 - 8))(v10, v11);
  v10[5] = v11[5];
  v13 = (v10 + 55) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v11 + 55) & 0xFFFFFFFFFFFFFFF8;
  *v13 = *v14;
  *(v13 + 8) = *(v14 + 8);
  v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16[3];
  v15[3] = v17;
  v15[4] = v16[4];
  v18 = **(v17 - 8);

  v18(v15, v16, v17);
  v19 = v16[5];
  v15[5] = v19;
  v15[6] = v16[6];
  v15[7] = v16[7];
  v20 = *(a3 + 16);
  v21 = *(v20 - 8);
  v22 = *(v21 + 84);
  v23 = *(v21 + 80);
  v24 = *(v21 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v25 = ((v15 + v23 + 64) & v24);
  v26 = ((v16 + v23 + 64) & v24);
  v27 = ~v23;
  v35 = *(v21 + 64);
  v28 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
  v29 = v19;

  if ((v22 & 0x80000000) == 0)
  {
    v30 = *v28;
    if (*v28 >= 0xFFFFFFFF)
    {
      LODWORD(v30) = -1;
    }

    if (v30 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v25 = *v26;
    v31 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v31 = *v28;
    v32 = v31 + v23 + 8;
    v33 = *(v21 + 16);

    v33(v32 & v27, (v28 + v23 + 8) & v27, v20);
    return a1;
  }

  if (!(*(v21 + 48))((v28 + v23 + 8) & v27, v22, v20))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v25, v26, ((v23 + 16) & ~v23) + v35);
  return a1;
}

uint64_t assignWithCopy for SystemTabView.BodyContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 17);
  v9 = *(a2 + 16);
  outlined copy of Environment<Binding<Visibility>?>.Content(*a2, v7, v9, v8);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 17);
  *a1 = v6;
  *(a1 + 8) = v7;
  v13 = *(a1 + 16);
  *(a1 + 16) = v9;
  *(a1 + 17) = v8;
  outlined consume of Environment<Binding<Visibility>?>.Content(v10, v11, v13, v12);
  v14 = ((a1 + 25) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((a2 + 25) & 0xFFFFFFFFFFFFFFF8);
  __swift_assign_boxed_opaque_existential_1(v14, v15);
  v14[5] = v15[5];

  v16 = (v14 + 55) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 55) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);

  v18 = ((v16 + 23) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 23) & 0xFFFFFFFFFFFFFFF8);
  __swift_assign_boxed_opaque_existential_1(v18, v19);
  v20 = v19[5];
  v21 = v18[5];
  v18[5] = v20;
  v22 = v20;

  v18[6] = v19[6];

  v18[7] = v19[7];
  v23 = *(a3 + 16);
  v24 = *(v23 - 8);
  v25 = *(v24 + 84);
  v26 = *(v24 + 80);
  v27 = *(v24 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v28 = ((v18 + v26 + 64) & v27);
  v29 = ((v19 + v26 + 64) & v27);
  v30 = ~v26;
  v31 = (v26 + 16) & ~v26;
  v32 = *(v24 + 64);
  v33 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v25 & 0x80000000) != 0)
  {
    v48 = v29;
    v41 = *(v24 + 48);
    v47 = *(*(v23 - 8) + 64);
    v46 = v41((v33 + v26 + 8) & ~v26, v25, v23);
    v34 = ((v48 + 15) & 0xFFFFFFFFFFFFFFF8);
    v30 = ~v26;
    v36 = v41((v34 + v26 + 8) & ~v26, v25, v23);
    v32 = v47;
    v31 = (v26 + 16) & ~v26;
    v33 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
    v29 = v48;
    if (!v46)
    {
LABEL_5:
      v37 = v33;
      if (!v36)
      {
        *v28 = *v29;

        *v37 = *v34;

        (*(v24 + 24))((v37 + v26 + 8) & v30, (v34 + v26 + 8) & v30, v23);
        return a1;
      }

      v38 = v31;
      v39 = v32;

      (*(v24 + 8))((v37 + v26 + 8) & v30, v23);
      v40 = v38 + v39;
      goto LABEL_10;
    }
  }

  else
  {
    v34 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
    v35 = *v34;
    if (*v34 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v35) = -1;
    }

    v36 = v35 + 1;
    if (*v33 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v36)
  {
    *v28 = *v29;
    *v33 = *v34;
    v42 = v23;
    v43 = v33 + v26 + 8;
    v44 = *(v24 + 16);

    v44(v43 & v30, (v34 + v26 + 8) & v30, v42);
    return a1;
  }

  v40 = v31 + v32;
LABEL_10:
  memcpy(v28, v29, v40);
  return a1;
}

uint64_t initializeWithTake for SystemTabView.BodyContent(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[3];
  v10[2] = v11[2];
  v10[3] = v14;
  *v10 = v12;
  v10[1] = v13;
  v15 = *(a3 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 80);
  v18 = *(v16 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v19 = ((v10 + v17 + 64) & v18);
  v20 = ((v11 + v17 + 64) & v18);
  v21 = ~v17;
  v22 = *(v16 + 64);
  v23 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v16 + 84) & 0x80000000) == 0)
  {
    v24 = *v23;
    if (*v23 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    if (v24 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v19 = *v20;
    v25 = (v19 + 15);
    *(v25 & 0xFFFFFFFFFFFFFFF8) = *v23;
    (*(v16 + 32))((v17 + 8 + (v25 & 0xFFFFFFFFFFFFFFF8)) & v21, (v23 + v17 + 8) & v21, v15);
    return a1;
  }

  if (!(*(v16 + 48))((v23 + v17 + 8) & v21))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v19, v20, ((v17 + 16) & ~v17) + v22);
  return a1;
}

uint64_t assignWithTake for SystemTabView.BodyContent(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v18 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v18);
  v20 = *v19;
  v21 = *(v19 + 16);
  *(v18 + 32) = *(v19 + 32);
  *v18 = v20;
  *(v18 + 16) = v21;
  v22 = *(v18 + 40);
  *(v18 + 40) = *(v19 + 40);

  *(v18 + 48) = *(v19 + 48);

  *(v18 + 56) = *(v19 + 56);
  v23 = *(a3 + 16);
  v24 = *(v23 - 8);
  v25 = *(v24 + 84);
  v26 = *(v24 + 80);
  v27 = *(v24 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v28 = ((v26 + 64 + v18) & v27);
  v29 = ((v26 + 64 + v19) & v27);
  v30 = ~v26;
  v31 = (v26 + 16) & ~v26;
  v32 = *(v24 + 64);
  v33 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v25 & 0x80000000) != 0)
  {
    v44 = v29;
    v40 = *(v24 + 48);
    v43 = *(v24 + 64);
    v42 = v40((v33 + v26 + 8) & ~v26, v25, v23);
    v34 = ((v44 + 15) & 0xFFFFFFFFFFFFFFF8);
    v30 = ~v26;
    v36 = v40((v34 + v26 + 8) & ~v26, v25, v23);
    v32 = v43;
    v31 = (v26 + 16) & ~v26;
    v29 = v44;
    if (!v42)
    {
LABEL_5:
      if (!v36)
      {
        *v28 = *v29;

        *v33 = *v34;

        (*(v24 + 40))((v33 + v26 + 8) & v30, (v34 + v26 + 8) & v30, v23);
        return a1;
      }

      v37 = v31;
      v38 = v32;

      (*(v24 + 8))((v33 + v26 + 8) & v30, v23);
      v39 = v37 + v38;
      goto LABEL_10;
    }
  }

  else
  {
    v34 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
    v35 = *v34;
    if (*v34 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v35) = -1;
    }

    v36 = v35 + 1;
    if (*v33 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v36)
  {
    *v28 = *v29;
    *v33 = *v34;
    (*(v24 + 32))((v33 + v26 + 8) & v30, (v34 + v26 + 8) & v30, v23);
    return a1;
  }

  v39 = v31 + v32;
LABEL_10:
  memcpy(v28, v29, v39);
  return a1;
}

uint64_t getEnumTagSinglePayload for SystemTabView.BodyContent(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v12 = *(*(*(a3 + 16) - 8) + 64) - (((-17 - v8) | v8) + ((-153 - v8) | v10)) - 2;
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
        v20 = ((((((((v18 + 55) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 64) & ~v10) + 15) & 0xFFFFFFFFFFFFFFF8);
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

  if (*(*(*(a3 + 16) - 8) + 64) - (((-17 - v8) | v8) + ((-153 - v8) | v10)) != 2)
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

void storeEnumTagSinglePayload for SystemTabView.BodyContent(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v13 = v12 + ((v11 + 152) & ~(v11 | 7));
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
      v18 = (v17 >> (8 * (v12 + ((v11 - 104) & ~(v11 | 7))))) + 1;
      if (v13)
      {
        v21 = v17 & ~(-1 << (8 * (v12 + ((v11 - 104) & ~(v11 | 7)))));
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
    v23 = ((((((v22 + 55) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + (v11 | 7) + 64) & ~(v11 | 7));
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

uint64_t outlined destroy of Binding<AnyHashable>(uint64_t a1)
{
  type metadata accessor for Int?(0, &lazy cache variable for type metadata for Binding<AnyHashable>, MEMORY[0x1E69E69B8], MEMORY[0x1E6981948]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for ComposedProjection<WritableKeyPath<Int?, Int?>, BindingOperations.NilCoalescing<Int>>()
{
  if (!lazy cache variable for type metadata for ComposedProjection<WritableKeyPath<Int?, Int?>, BindingOperations.NilCoalescing<Int>>)
  {
    type metadata accessor for WritableKeyPath<Int?, Int?>();
    type metadata accessor for Int?(255, &lazy cache variable for type metadata for BindingOperations.NilCoalescing<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E697ECA8]);
    lazy protocol witness table accessor for type WritableKeyPath<Int?, Int?> and conformance WritableKeyPath<A, B>(&lazy protocol witness table cache variable for type WritableKeyPath<Int?, Int?> and conformance WritableKeyPath<A, B>, type metadata accessor for WritableKeyPath<Int?, Int?>);
    lazy protocol witness table accessor for type BindingOperations.NilCoalescing<Int> and conformance BindingOperations.NilCoalescing<A>();
    v0 = type metadata accessor for ComposedProjection();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ComposedProjection<WritableKeyPath<Int?, Int?>, BindingOperations.NilCoalescing<Int>>);
    }
  }
}

void type metadata accessor for WritableKeyPath<Int?, Int?>()
{
  if (!lazy cache variable for type metadata for WritableKeyPath<Int?, Int?>)
  {
    type metadata accessor for Int?(255, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for WritableKeyPath();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for WritableKeyPath<Int?, Int?>);
    }
  }
}

void type metadata accessor for Int?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type BindingOperations.NilCoalescing<Int> and conformance BindingOperations.NilCoalescing<A>()
{
  result = lazy protocol witness table cache variable for type BindingOperations.NilCoalescing<Int> and conformance BindingOperations.NilCoalescing<A>;
  if (!lazy protocol witness table cache variable for type BindingOperations.NilCoalescing<Int> and conformance BindingOperations.NilCoalescing<A>)
  {
    type metadata accessor for Int?(255, &lazy cache variable for type metadata for BindingOperations.NilCoalescing<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E697ECA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BindingOperations.NilCoalescing<Int> and conformance BindingOperations.NilCoalescing<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type WritableKeyPath<Int?, Int?> and conformance WritableKeyPath<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type AdaptableTabView and conformance AdaptableTabView()
{
  result = lazy protocol witness table cache variable for type AdaptableTabView and conformance AdaptableTabView;
  if (!lazy protocol witness table cache variable for type AdaptableTabView and conformance AdaptableTabView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdaptableTabView and conformance AdaptableTabView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<TabItem.RootView>(255, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView()
{
  result = lazy protocol witness table cache variable for type TabItem.RootView and conformance TabItem.RootView;
  if (!lazy protocol witness table cache variable for type TabItem.RootView and conformance TabItem.RootView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabItem.RootView and conformance TabItem.RootView);
  }

  return result;
}

void type metadata accessor for _UIHostingView<TabItem.RootView>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type IntegerFormatStyle<Int> and conformance IntegerFormatStyle<A>()
{
  result = lazy protocol witness table cache variable for type IntegerFormatStyle<Int> and conformance IntegerFormatStyle<A>;
  if (!lazy protocol witness table cache variable for type IntegerFormatStyle<Int> and conformance IntegerFormatStyle<A>)
  {
    type metadata accessor for _UIHostingView<TabItem.RootView>(255, &lazy cache variable for type metadata for IntegerFormatStyle<Int>, lazy protocol witness table accessor for type Int and conformance Int, MEMORY[0x1E69E6530], MEMORY[0x1E6968900]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntegerFormatStyle<Int> and conformance IntegerFormatStyle<A>);
  }

  return result;
}

id CellHostingView.__allocating_init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = specialized CellHostingView.init(rootView:)();
  (*(*(*(v2 + 226) - 8) + 8))(a1);
  return v5;
}

void type metadata accessor for _SemanticFeature<Semantics_v4>()
{
  if (!lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>)
  {
    v0 = type metadata accessor for _SemanticFeature();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CellViewGraph and conformance CellViewGraph()
{
  result = lazy protocol witness table cache variable for type CellViewGraph and conformance CellViewGraph;
  if (!lazy protocol witness table cache variable for type CellViewGraph and conformance CellViewGraph)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CellViewGraph and conformance CellViewGraph);
  }

  return result;
}

id specialized CellHostingView.init(rootView:)()
{
  v0 = specialized UIItemHostingView.init(rootView:)();
  _UIHostingView.isHiddenForReuse.setter(1);

  return v0;
}

double UIImage.resolveNamedImage(in:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
    }
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_So7UIColorCs5NeverOTg50121_s7SwiftUI13GraphicsImageVAAE012makePlatformD024fixedSymbolConfiguration16flattenMaskColor13colorResolverSo7UIImageCSgSb_v31AA0F8ItemListV0P0V0dlN0VSgtFSo7D9CSiXEfU0_0G2UI0lyZ0V0Y0V0j5ColorR0VAL17EnvironmentValuesVAL0iJ0VTf1cn_nTf4ngnd_n(uint64_t result, uint64_t a2)
{
  v10 = result;
  v2 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_23;
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v12 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (a2 < v10 || (v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_24;
    }

    for (i = 0; i < v2; ++i)
    {
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_21;
      }

      v5 = v10 + i;

      if (ShapeStyle.fallbackColor(in:level:)())
      {
        dispatch thunk of AnyColorBox.resolve(in:)();
        v6 = Color.Resolved.cgColor.getter();

        [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
      }

      else
      {

        v7 = objc_opt_self();
        if (v5)
        {
          if (v5 == 1)
          {
            v8 = [v7 secondaryLabelColor];
          }

          else
          {
            v8 = [v7 tertiaryLabelColor];
          }
        }

        else
        {
          v8 = [v7 labelColor];
        }

        v9 = v8;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      if (v5 >= a2)
      {
        goto LABEL_22;
      }

      if (v4 == v2)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t initializeWithCopy for PlatformTextViewEditorStorage(uint64_t a1)
{
  swift_unknownObjectWeakCopyInit();
  swift_unknownObjectWeakCopyInit();
  return a1;
}

uint64_t assignWithCopy for PlatformTextViewEditorStorage(uint64_t a1)
{
  swift_unknownObjectWeakCopyAssign();
  swift_unknownObjectWeakCopyAssign();
  return a1;
}

uint64_t initializeWithTake for PlatformTextViewEditorStorage(uint64_t a1)
{
  swift_unknownObjectWeakTakeInit();
  swift_unknownObjectWeakTakeInit();
  return a1;
}

uint64_t assignWithTake for PlatformTextViewEditorStorage(uint64_t a1)
{
  swift_unknownObjectWeakTakeAssign();
  swift_unknownObjectWeakTakeAssign();
  return a1;
}

void *specialized Sequence.compactMap<A>(_:)(void (*a1)(_OWORD *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v28 = *v6;
    a1(v24, &v28);
    if (v3)
    {
      break;
    }

    if (v25)
    {
      v22 = v26;
      *v23 = v27[0];
      *&v23[11] = *(v27 + 11);
      v18 = v24[6];
      v19 = v24[7];
      v20 = v24[8];
      v21 = v25;
      v14 = v24[2];
      v15 = v24[3];
      v16 = v24[4];
      v17 = v24[5];
      v12 = v24[0];
      v13 = v24[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
      }

      v9 = v7[2];
      v8 = v7[3];
      if (v9 >= v8 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
      }

      v7[2] = v9 + 1;
      v10 = &v7[26 * v9];
      v10[2] = v12;
      v10[5] = v15;
      v10[6] = v16;
      v10[3] = v13;
      v10[4] = v14;
      v10[9] = v19;
      v10[10] = v20;
      v10[7] = v17;
      v10[8] = v18;
      *(v10 + 219) = *&v23[11];
      v10[12] = v22;
      v10[13] = *v23;
      v10[11] = v21;
    }

    else
    {
      outlined destroy of AttributedTextSelection.Indices?(v24, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?);
    }

    ++v6;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

char *specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = (a3 + 56);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = *(v5 - 3);
    v9 = *(v5 - 2);
    v10 = *(v5 - 8);
    v11 = *v5;
    v19[0] = v8;
    v19[1] = v9;
    v20 = v10;
    v21 = v11;
    outlined copy of Text.Storage(v8, v9, v10);

    v22(&v17, v19);
    if (v3)
    {
      break;
    }

    outlined consume of Text.Storage(v8, v9, v10);

    v12 = v18;
    if (v18)
    {
      v13 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v15 = *(v6 + 2);
      v14 = *(v6 + 3);
      if (v15 >= v14 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v6);
      }

      *(v6 + 2) = v15 + 1;
      v7 = &v6[16 * v15];
      *(v7 + 4) = v13;
      *(v7 + 5) = v12;
    }

    v5 += 4;
    if (!--v4)
    {
      return v6;
    }
  }

  outlined consume of Text.Storage(v8, v9, v10);

  return v6;
}

void *specialized Sequence.compactMap<A>(_:)(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v29 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v27 = &v24 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = (a3 + 32);
  v24 = v14;
  v18 = (v14 + 48);
  v19 = MEMORY[0x1E69E7CC0];
  v25 = v11;
  v26 = a2;
  while (1)
  {
    v28 = *v17;
    a1(&v28);
    if (v3)
    {
      break;
    }

    if ((*v18)(v9, 1, v11) == 1)
    {
      outlined destroy of AttributedTextSelection.Indices?(v9, type metadata accessor for Range<AttributedString.Index>?);
    }

    else
    {
      v20 = v27;
      outlined init with take of AttributedTextSelection.TypingAttributes(v9, v27, type metadata accessor for Range<AttributedString.Index>);
      outlined init with take of AttributedTextSelection.TypingAttributes(v20, v29, type metadata accessor for Range<AttributedString.Index>);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      outlined init with take of AttributedTextSelection.TypingAttributes(v29, v19 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22, type metadata accessor for Range<AttributedString.Index>);
      v11 = v25;
    }

    ++v17;
    if (!--v16)
    {
      return v19;
    }
  }

  return v19;
}

char *specialized Sequence.compactMap<A>(_:)(void (*a1)(__int128 *__return_ptr, char *), uint64_t a2)
{
  v35 = a2;
  type metadata accessor for Range<AttributedString.Index>();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<RangeSet<AttributedString.Index>.Ranges>();
  v14 = v13 - 8;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v2, v9, v15);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, type metadata accessor for RangeSet<AttributedString.Index>.Ranges);
  dispatch thunk of Sequence.makeIterator()();
  v18 = *(v14 + 44);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, type metadata accessor for RangeSet<AttributedString.Index>.Ranges);
  dispatch thunk of Collection.endIndex.getter();
  for (i = MEMORY[0x1E69E7CC0]; *&v17[v18] != v33; i = v28)
  {
    v32 = i;
    while (1)
    {
      v20 = dispatch thunk of Collection.subscript.read();
      outlined init with copy of AttributedTextSelection.Indices(v21, v7, type metadata accessor for Range<AttributedString.Index>);
      v20(&v33, 0);
      dispatch thunk of Collection.formIndex(after:)();
      a1(&v33, v7);
      if (v3)
      {
        outlined destroy of AttributedTextSelection.Indices?(v7, type metadata accessor for Range<AttributedString.Index>);
        outlined destroy of AttributedTextSelection.Indices?(v17, type metadata accessor for IndexingIterator<RangeSet<AttributedString.Index>.Ranges>);
        i = v32;

        return i;
      }

      outlined destroy of AttributedTextSelection.Indices?(v7, type metadata accessor for Range<AttributedString.Index>);
      if ((v34 & 1) == 0)
      {
        break;
      }

      dispatch thunk of Collection.endIndex.getter();
      if (*&v17[v18] == v33)
      {
        i = v32;
        goto LABEL_14;
      }
    }

    v31 = v33;
    v22 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
    }

    v23 = v22;
    v24 = *(v22 + 2);
    v25 = v23;
    v26 = *(v23 + 3);
    v27 = v24 + 1;
    if (v24 >= v26 >> 1)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v24 + 1, 1, v25);
      v27 = v24 + 1;
      v25 = v29;
    }

    v28 = v25;
    *(v25 + 2) = v27;
    *&v25[16 * v24 + 32] = v31;
    dispatch thunk of Collection.endIndex.getter();
  }

LABEL_14:
  outlined destroy of AttributedTextSelection.Indices?(v17, type metadata accessor for IndexingIterator<RangeSet<AttributedString.Index>.Ranges>);
  return i;
}

void PlatformTextViewEditorStorage.selection.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v73 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedTextSelection.Indices?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v76 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributedTextSelection.Indices(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributeContainer();
  v11 = *(v10 - 8);
  v74 = v10;
  v75 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v66 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v78 = &v66 - v18;
  v19 = type metadata accessor for AttributedString();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_20;
  }

  v24 = Strong;
  v25 = [Strong textStorage];

  if (!v25)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  ObjectType = swift_getObjectType();
  v77 = &protocol descriptor for SwiftTextStorage;
  v27 = swift_conformsToProtocol2();
  if (!v27)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  (*(v27 + 16))(ObjectType, v27);

  v28 = swift_unknownObjectWeakLoadStrong();
  if (!v28)
  {
    v65 = *(v8 + 56);
    v65(a1, 1, 1, v7);
    outlined destroy of AttributedTextSelection.Indices?(a1, type metadata accessor for AttributedTextSelection.Indices?);
    v65(a1, 1, 1, v7);
    v64 = type metadata accessor for AttributedTextSelection(0);
    (*(v75 + 56))(a1 + *(v64 + 20), 1, 1, v74);
    v63 = 0;
LABEL_18:
    *(a1 + *(v64 + 24)) = v63;
    (*(v20 + 8))(v22, v19);
    return;
  }

  v29 = v28;
  v69 = v13;
  v79 = v8;
  v30 = UITextView.selectedRanges.getter();
  MEMORY[0x1EEE9AC00](v30);
  v72 = v31;
  *(&v66 - 2) = v31;
  v70 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in PlatformTextViewEditorStorage.selection.getter, (&v66 - 4), v30);

  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    goto LABEL_22;
  }

  v33 = v32;
  v34 = [v32 textStorage];

  if (!v34)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v66 = v20;
  v67 = v19;
  v71 = v7;
  v68 = a1;
  v35 = swift_getObjectType();
  v36 = swift_conformsToProtocol2();
  if (!v36)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v37 = *(*(v36 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  v40 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v42 = &v66 - v41;
  v82 = v34;
  (*(v37 + 56))(v35, v37, v40);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  UITextView.typingAttributes<A>(for:)(AssociatedTypeWitness, AssociatedConformanceWitness, v78);
  (*(v39 + 8))(v42, AssociatedTypeWitness);
  AttributedTextSelection.Indices.init(_:)(v70, v81);
  specialized AttributedTextSelection.Indices.typingAttributes<A>(in:)(v72, v16);
  v44 = swift_unknownObjectWeakLoadStrong();
  if (!v44)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v45 = v44;
  v46 = [v44 textStorage];

  v47 = v71;
  v48 = v75;
  if (!v46)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v49 = swift_getObjectType();
  v50 = swift_conformsToProtocol2();
  if (v50)
  {
    (*(v50 + 64))(v16, v49, v50);

    v51 = 1;
    v52 = v69;
    AttributeContainer.filter(inheritedByAddedText:)();
    v53 = *(v48 + 8);
    v54 = v74;
    v53(v16, v74);
    (*(v48 + 32))(v16, v52, v54);
    v55 = v76;
    outlined init with copy of AttributedTextSelection.Indices(v81, v76, type metadata accessor for AttributedTextSelection.Indices);
    v56 = *(v79 + 56);
    v57 = v55;
    v58 = v54;
    v79 += 56;
    v56(v57, 0, 1, v47);
    v59 = v78;
    if ((static AttributeContainer.== infix(_:_:)() & 1) == 0)
    {
      (*(v48 + 16))(v73, v59, v58);
      v51 = 0;
    }

    v60 = v73;
    (*(v48 + 56))(v73, v51, 1, v58);
    v61 = v58;
    v62 = [v29 selectionAffinity];

    v53(v16, v61);
    outlined destroy of AttributedTextSelection.Indices?(v81, type metadata accessor for AttributedTextSelection.Indices);
    v53(v59, v61);
    if (v62)
    {
      v63 = 2 * (v62 == 1);
    }

    else
    {
      v63 = 1;
    }

    a1 = v68;
    v56(v68, 1, 1, v71);
    outlined assign with take of AttributedTextSelection.Indices?(v76, a1);
    v64 = type metadata accessor for AttributedTextSelection(0);
    outlined init with take of AttributedTextSelection.TypingAttributes(v60, a1 + *(v64 + 20), type metadata accessor for AttributedTextSelection.TypingAttributes);
    v20 = v66;
    v19 = v67;
    v22 = v72;
    goto LABEL_18;
  }

LABEL_27:
  __break(1u);
}

uint64_t closure #1 in PlatformTextViewEditorStorage.selection.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AttributedString();
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3, v4);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
  return Range<>.init<A>(_:in:)();
}

uint64_t UITextView.typingAttributes<A>(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  AttributeContainer.init()();
  v7 = [v3 typingAttributes];
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  (*(a2 + 40))(v8, a3, 1, a1, a2);
}

void PlatformTextViewEditorStorage.selection.setter(uint64_t a1)
{
  v2 = type metadata accessor for AttributedTextSelection.Indices(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v63 = (v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributeContainer();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v62 - v12;
  v14 = type metadata accessor for AttributedString();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v28 = type metadata accessor for AttributedTextSelection;
    v29 = a1;
LABEL_14:
    outlined destroy of AttributedTextSelection.Indices?(v29, v28);
    return;
  }

  v67 = v8;
  v65 = v7;
  v18 = swift_unknownObjectWeakLoadStrong();
  if (!v18)
  {
    __break(1u);
    goto LABEL_24;
  }

  v19 = v18;
  v20 = [v18 textStorage];

  if (!v20)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  ObjectType = swift_getObjectType();
  v62[1] = &protocol descriptor for SwiftTextStorage;
  v22 = swift_conformsToProtocol2();
  if (!v22)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  (*(v22 + 16))(ObjectType, v22);

  v64 = a1;
  v23 = AttributedTextSelection.nsRanges(in:removingInvalid:)(v17, 1);
  v24 = *(v15 + 8);
  v24(v17, v14);
  v25 = v23;
  if (*(v23 + 16))
  {
    v26 = *(v23 + 32);
    v27 = *(v25 + 40);

    [Strong setSelectedRange_];
  }

  else
  {
  }

  v30 = type metadata accessor for AttributedTextSelection(0);
  outlined init with copy of AttributedTextSelection.Indices(v64 + *(v30 + 20), v6, type metadata accessor for AttributedTextSelection.TypingAttributes);
  v31 = v67;
  v32 = v65;
  if ((*(v67 + 48))(v6, 1, v65) == 1)
  {
    outlined destroy of AttributedTextSelection.Indices?(v6, type metadata accessor for AttributedTextSelection.TypingAttributes);
    v33 = swift_unknownObjectWeakLoadStrong();
    if (v33)
    {
      v34 = v33;
      v35 = [v33 textStorage];

      if (v35)
      {
        v36 = swift_getObjectType();
        v37 = swift_conformsToProtocol2();
        if (v37)
        {
          (*(v37 + 16))(v36, v37);

          v39 = v63;
          v38 = v64;
          AttributedTextSelection.indices(in:)(v17, v63);
          v24(v17, v14);
          PlatformTextViewEditorStorage.invalidateTypingAttributes(indices:)(v39);

          outlined destroy of AttributedTextSelection.Indices?(v38, type metadata accessor for AttributedTextSelection);
          v28 = type metadata accessor for AttributedTextSelection.Indices;
          v29 = v39;
          goto LABEL_14;
        }

        goto LABEL_30;
      }

      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v40 = *(v31 + 32);
  v40(v13, v6, v32);
  v41 = swift_unknownObjectWeakLoadStrong();
  if (!v41)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v42 = v41;
  v43 = [v41 textStorage];

  if (!v43)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v44 = swift_getObjectType();
  v45 = swift_conformsToProtocol2();
  if (!v45)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  (*(v45 + 64))(v13, v44, v45);

  AttributeContainer.filter(inheritedByAddedText:)();
  v46 = *(v67 + 8);
  v47 = v65;
  v67 += 8;
  v46(v13, v65);
  v40(v13, v10, v47);
  v48 = swift_unknownObjectWeakLoadStrong();
  if (!v48)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v49 = v48;
  v50 = [v48 textStorage];

  if (!v50)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v63 = v46;
  v51 = swift_getObjectType();
  v52 = swift_conformsToProtocol2();
  if (!v52)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v53 = *(*(v52 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  v56 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v58 = v62 - v57;
  v68 = v50;
  (*(v53 + 56))(v51, v53, v56);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v55 + 8))(v58, AssociatedTypeWitness);
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v61 = Strong;
  [Strong setTypingAttributes_];

  outlined destroy of AttributedTextSelection.Indices?(v64, type metadata accessor for AttributedTextSelection);
  v63(v13, v65);
}

void PlatformTextViewEditorStorage.invalidateTypingAttributes(indices:)(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributeContainer();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v35 - v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v42 = v3;
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      v40 = a1;
      v41 = v2;
      v17 = [v15 textStorage];

      if (v17)
      {
        v36 = v7;
        v37 = v6;
        v38 = v14;
        ObjectType = swift_getObjectType();
        v39 = &protocol descriptor for SwiftTextStorage;
        v19 = swift_conformsToProtocol2();
        if (v19)
        {
          v20 = *(*(v19 + 8) + 8);
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v35[1] = v35;
          v35[0] = *(AssociatedTypeWitness - 8);
          v22 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
          v24 = v35 - v23;
          v43 = v17;
          (*(v20 + 56))(ObjectType, v20, v22);

          v25 = swift_unknownObjectWeakLoadStrong();
          if (v25)
          {
            v26 = v25;
            v27 = [v25 textStorage];

            if (v27)
            {
              v28 = swift_getObjectType();
              v29 = swift_conformsToProtocol2();
              if (v29)
              {
                (*(v29 + 16))(v28, v29);

                specialized AttributedTextSelection.Indices.typingAttributes<A>(in:)(v5, v9);
                (*(v42 + 8))(v5, v41);
                AttributeContainer.filter(inheritedByAddedText:)();
                v30 = v37;
                v31 = *(v36 + 8);
                v31(v9, v37);
                AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
                (*(AssociatedConformanceWitness + 32))(v12, AssociatedTypeWitness, AssociatedConformanceWitness);
                v31(v12, v30);
                (*(v35[0] + 8))(v24, AssociatedTypeWitness);
                type metadata accessor for NSAttributedStringKey(0);
                lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
                isa = Dictionary._bridgeToObjectiveC()().super.isa;

                v34 = v38;
                [v38 setTypingAttributes_];

                return;
              }

LABEL_15:
              __break(1u);
              return;
            }

LABEL_14:
            __break(1u);
            goto LABEL_15;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void PlatformTextViewEditorStorage.typingAttributes.getter(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = [v4 textStorage];

      if (v6)
      {
        ObjectType = swift_getObjectType();
        v8 = swift_conformsToProtocol2();
        if (v8)
        {
          v9 = *(*(v8 + 8) + 8);
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v11 = *(AssociatedTypeWitness - 8);
          v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
          v14 = v16 - v13;
          v16[1] = v6;
          (*(v9 + 56))(ObjectType, v9, v12);

          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          UITextView.typingAttributes<A>(for:)(AssociatedTypeWitness, AssociatedConformanceWitness, a1);

          (*(v11 + 8))(v14, AssociatedTypeWitness);
          return;
        }

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  AttributeContainer.init()();
}

uint64_t outlined assign with take of AttributedTextSelection.Indices?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AttributedTextSelection.Indices?(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of AttributedTextSelection.TypingAttributes(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::Void __swiftcall PlatformTextViewEditorStorage.commit()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = swift_allocObject();
    *(v4 + 16) = partial apply for closure #1 in PlatformTextViewEditorStorage.commit();
    *(v4 + 24) = v3;
    v6[4] = partial apply for thunk for @callee_guaranteed () -> ();
    v6[5] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = thunk for @escaping @callee_guaranteed () -> ();
    v6[3] = &block_descriptor_4;
    v5 = _Block_copy(v6);

    [v2 performEditingTransactionUsingBlock_];

    _Block_release(v5);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }
}

void closure #1 in PlatformTextViewEditorStorage.commit()(uint64_t a1)
{
  outlined init with copy of PlatformTextViewEditorStorage(a1, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = Strong;
  v3 = [Strong textStorage];

  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  outlined destroy of PlatformTextViewEditorStorage(v4);
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    [v3 endEditing];

    return;
  }

LABEL_7:
  __break(1u);
}

void type metadata accessor for Range<AttributedString.Index>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AttributedString.Index();
    v7 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for IndexingIterator<RangeSet<AttributedString.Index>.Ranges>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<RangeSet<AttributedString.Index>.Ranges>)
  {
    type metadata accessor for RangeSet<AttributedString.Index>.Ranges(255);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, type metadata accessor for RangeSet<AttributedString.Index>.Ranges);
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<RangeSet<AttributedString.Index>.Ranges>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of AttributedTextSelection.Indices(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of PlatformTextViewEditorStorage(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyInit();
  swift_unknownObjectWeakCopyInit();
  return a2;
}

uint64_t outlined destroy of PlatformTextViewEditorStorage(uint64_t a1)
{
  MEMORY[0x18D011290]();
  MEMORY[0x18D011290](a1 + 8);
  return a1;
}

uint64_t outlined destroy of AttributedTextSelection.Indices?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for AttributedTextSelection.Indices?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>()
{
  if (!lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>)
  {
    lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor();
    v0 = type metadata accessor for _RowVisitationContext();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>);
    }
  }
}

uint64_t EnvironmentValues.allowsWindowActivationEvents.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<AllowsWindowActivationEventsKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AllowsWindowActivationEventsKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<AllowsWindowActivationEventsKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AllowsWindowActivationEventsKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

void type metadata accessor for EnvironmentPropertyKey<AllowsWindowActivationEventsKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsWindowActivationEventsKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsWindowActivationEventsKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<AllowsWindowActivationEventsKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<AllowsWindowActivationEventsKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AllowsWindowActivationEventsKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<AllowsWindowActivationEventsKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AllowsWindowActivationEventsKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t initializeWithCopy for TouchEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t assignWithCopy for TouchEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t assignWithTake for TouchEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t getEnumTagSinglePayload for TouchEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for TouchEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent()
{
  result = lazy protocol witness table cache variable for type TouchEvent and conformance TouchEvent;
  if (!lazy protocol witness table cache variable for type TouchEvent and conformance TouchEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TouchEvent and conformance TouchEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TouchEvent and conformance TouchEvent;
  if (!lazy protocol witness table cache variable for type TouchEvent and conformance TouchEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TouchEvent and conformance TouchEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TouchEvent and conformance TouchEvent;
  if (!lazy protocol witness table cache variable for type TouchEvent and conformance TouchEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TouchEvent and conformance TouchEvent);
  }

  return result;
}

uint64_t protocol witness for EventType.binding.setter in conformance TouchEvent(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

double protocol witness for EventType.init(_:) in conformance TouchEvent@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for EventType();
  if (swift_dynamicCast())
  {
    v2 = v9[4];
    *(a1 + 64) = v9[3];
    *(a1 + 80) = v2;
    *(a1 + 89) = *(&v9[4] + 9);
    v3 = v9[0];
    *a1 = v8;
    *(a1 + 16) = v3;
    v4 = v9[2];
    *(a1 + 32) = v9[1];
    *(a1 + 48) = v4;
  }

  else
  {
    v8 = 0uLL;
    *&v9[0] = 1;
    memset(v9 + 8, 0, 81);
    v6[4] = v9[3];
    v7[0] = v9[4];
    *(v7 + 9) = *(&v9[4] + 9);
    v6[2] = v9[1];
    v6[3] = v9[2];
    v6[0] = 0uLL;
    v6[1] = v9[0];
    outlined destroy of TouchEvent?(v6);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    *&v4 = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0;
  }

  return *&v4;
}

uint64_t protocol witness for HitTestableEventType.hitTestLocation.getter in conformance TouchEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent();

  return MEMORY[0x1EEDE1378](a1, a2, v4);
}

uint64_t protocol witness for HitTestableEventType.hitTestRadius.getter in conformance TouchEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent();

  return MEMORY[0x1EEDE1370](a1, a2, v4);
}

unint64_t type metadata accessor for EventType()
{
  result = lazy cache variable for type metadata for EventType;
  if (!lazy cache variable for type metadata for EventType)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for EventType);
  }

  return result;
}

uint64_t outlined destroy of TouchEvent?(uint64_t a1)
{
  type metadata accessor for TouchEvent?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for TouchEvent?()
{
  if (!lazy cache variable for type metadata for TouchEvent?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TouchEvent?);
    }
  }
}

BOOL specialized static TouchEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 40);
    v6 = *(a1 + 24);
    v7 = *(a1 + 56);
    v8.f64[0] = *(a1 + 72);
    v9 = *(a1 + 80);
    v11 = *(a1 + 88);
    v10 = *(a1 + 96);
    v12 = *(a1 + 104);
    v13 = *(a2 + 16);
    v14 = *(a2 + 40);
    v15 = *(a2 + 24);
    v16 = *(a2 + 56);
    v17.f64[0] = *(a2 + 72);
    v18 = *(a2 + 96);
    if (v4)
    {
      if (v13)
      {
        result = 0;
        v8.f64[1] = v11;
        v17.f64[1] = *(a2 + 88);
        if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v6, v15), vceqq_f64(v5, v14)), vuzp1q_s32(vceqq_f64(v7, v16), vceqq_f64(v8, v17))))) & 1) == 0 || v10 != v18 || v4 != v13)
        {
          return result;
        }

LABEL_13:
        if (v9 == *(a2 + 80))
        {
          return v12 == *(a2 + 104);
        }

        return result;
      }

LABEL_10:

      return 0;
    }

    if (v13)
    {
      goto LABEL_10;
    }

    result = 0;
    v8.f64[1] = v11;
    v17.f64[1] = *(a2 + 88);
    if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v6, v15), vceqq_f64(v5, v14)), vuzp1q_s32(vceqq_f64(v7, v16), vceqq_f64(v8, v17))))) & 1) != 0 && v10 == v18)
    {
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t outlined copy of ScrollViewBehavior.Phase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if ((a9 & 0xC00000) == 0x400000)
  {
    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a6, a7);
  }

  return result;
}

uint64_t destroy for ScrollViewBehavior(uint64_t a1)
{
  outlined consume of ScrollViewBehavior.Phase(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64) | (*(a1 + 66) << 16));
}

uint64_t outlined consume of ScrollViewBehavior.Phase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if ((a9 & 0xC00000) == 0x400000)
  {
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a6);
  }

  return result;
}

uint64_t initializeWithCopy for ScrollViewBehavior(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v13 = *(a2 + 66);
  v14 = *(a2 + 64);
  outlined copy of ScrollViewBehavior.Phase(*a2, v5, v6, v7, v8, v9, v10, v11, v14 | (v13 << 16));
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 66) = v13;
  *(a1 + 64) = v14;
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t assignWithCopy for ScrollViewBehavior(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v22 = *a2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v23 = *(a2 + 66);
  v11 = *(a2 + 64);
  outlined copy of ScrollViewBehavior.Phase(*a2, v4, v5, v6, v7, v8, v9, v10, v11 | (v23 << 16));
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64) | (*(a1 + 66) << 16);
  *a1 = v22;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 66) = v23;
  outlined consume of ScrollViewBehavior.Phase(v12, v13, v14, v15, v16, v17, v18, v19, v20);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t assignWithTake for ScrollViewBehavior(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 66);
  v5 = *(a2 + 64);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64) | (*(a1 + 66) << 16);
  v15 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v15;
  v16 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v16;
  *(a1 + 64) = v5;
  *(a1 + 66) = v4;
  outlined consume of ScrollViewBehavior.Phase(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t storeEnumTagSinglePayload for ScrollViewBehavior(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double _ScrollLayout.init(_:)@<D0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  swift_beginAccess();
  CGSize.inset(by:)();
  _ScrollLayout.init(contentOffset:size:visibleRect:)();

  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t ScrollViewBehavior.reloadContainers(node:)(char a1)
{
  LOBYTE(v2) = a1;

  v39 = v1;
  *(v1 + 72) = MEMORY[0x1E69E7CC0];
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      swift_beginAccess();
      if (*(v4 + 297) != 1)
      {
        break;
      }

      swift_beginAccess();
      v6 = *(v4 + 152);
      v7 = *(v6 + 16);
      if (v7)
      {

        v8 = (v6 + 56);
        do
        {
          v9 = *(v8 - 3);
          v10 = *(v8 - 2);
          v11 = *(v8 - 1);
          v12 = *v8;
          swift_unownedRetainStrong();
          swift_beginAccess();
          v13 = *(v9 + 148);
          swift_unownedRetain();

          if (v13 == v12)
          {
            swift_unownedRetainStrong();
            v14 = *(v9 + 336);
            v15 = *(v9 + 344);
            swift_beginAccess();
            CGSize.inset(by:)();
            v17 = v14 - v16;
            CGSize.inset(by:)();
            if (v17 < 0.0)
            {
              v19 = 0.0;
            }

            else
            {
              v19 = v17;
            }

            if (v15 - v18 < 0.0)
            {
              v20 = 0.0;
            }

            else
            {
              v20 = v15 - v18;
            }

            v21 = CGPoint.clamp(min:max:)(0, __PAIR128__(*&v20, *&v19));
            v2 &= 1u;
            *&v45[0] = v10;
            *(&v45[0] + 1) = v11;
            v45[1] = v21;
            v46 = v2;
            ScrollViewNode.commitScrollTransaction(_:value:)(v45, v21.x, v21.y);
          }

          v8 += 8;
          swift_unownedRelease();
          --v7;
        }

        while (v7);
      }

      else
      {
      }

      *&v44[15] = *(v4 + 143);
      v22 = *(v4 + 128);
      v43 = *(v4 + 112);
      *v44 = v22;
      v23 = *(v4 + 96);
      v42[0] = *(v4 + 80);
      v42[1] = v23;
      if (((v44[18] << 16) & 0xC00000) == 0x400000)
      {
        v24 = *(&v43 + 1);
        if (*(&v43 + 1))
        {
          v25 = *v44;
          v26 = swift_allocObject();
          *(v26 + 16) = v24;
          *(v26 + 24) = v25;
          v27 = swift_allocObject();
          *(v27 + 16) = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
          *(v27 + 24) = v26;
          v28 = swift_allocObject();
          *(v28 + 16) = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
          *(v28 + 24) = v27;
          v29 = swift_allocObject();
          *(v29 + 16) = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
          *(v29 + 24) = v28;
          *(v29 + 32) = 0;
          outlined init with copy of ScrollViewBehavior.Phase(v42, v40);
          outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v24, v25);

          static Update.enqueueAction(reason:_:)();

          outlined destroy of ScrollViewBehavior.Phase(v42);
        }
      }

      v30 = *(v4 + 128);
      v40[2] = *(v4 + 112);
      v41[0] = v30;
      *(v41 + 15) = *(v4 + 143);
      v31 = *(v4 + 96);
      v40[0] = *(v4 + 80);
      v40[1] = v31;
      *(v4 + 80) = 0u;
      *(v4 + 96) = 0u;
      *(v4 + 112) = 0u;
      *(v4 + 128) = 0u;
      *(v4 + 146) = 0x80;
      *(v4 + 144) = 0;
      ++*(v4 + 148);
      *(v4 + 152) = MEMORY[0x1E69E7CC0];
      swift_endAccess();
      outlined destroy of ScrollViewBehavior.Phase(v40);

      swift_beginAccess();
      v32 = *(v4 + 64);
      v33 = *(v4 + 72);
      v34 = *(v4 + 148);
      swift_unownedRetain();
      swift_unownedRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
      }

      v36 = *(v5 + 2);
      v35 = *(v5 + 3);
      if (v36 >= v35 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v5);
      }

      *(v5 + 2) = v36 + 1;
      v37 = &v5[32 * v36];
      *(v37 + 4) = v4;
      *(v37 + 5) = v32;
      *(v37 + 6) = v33;
      *(v37 + 14) = v34;
      *(v39 + 72) = v5;
      Strong = swift_weakLoadStrong();

      swift_unownedRelease();

      v4 = Strong;
      if (!Strong)
      {
        return result;
      }
    }
  }

  return result;
}

CGFloat ScrollViewBehavior.overflowContentOffset(_:node:)(uint64_t a1, double a2, double a3)
{
  v5 = v3;
  v9 = *(a1 + 336);
  v10 = *(a1 + 344);
  swift_beginAccess();
  CGSize.inset(by:)();
  v12 = v9 - v11;
  CGSize.inset(by:)();
  v14 = v10 - v13;
  if (v12 < 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v12;
  }

  if (v14 < 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v14;
  }

  v17 = CGPoint.clamp(min:max:)(0, __PAIR128__(*&v16, *&v15));
  v18 = v17.x - a2;
  v19 = v17.y - a3;
  v20 = *(v5 + 66);
  if (v20 <= 0x3F && (v20 & 1) == 0)
  {
    CGSize.inset(by:)();
    v18 = specialized static ScrollViewSupport.addRubberBandingToResidue(_:range:)(v18, v19, v21);
    v19 = v22;
  }

  if (v15 <= 0.0 && (*(a1 + 249) & 1) == 0)
  {
    v18 = 0.0;
  }

  if (v16 <= 0.0 && !*(a1 + 248))
  {
    v19 = 0.0;
  }

  v23 = *(v5 + 72);
  v24 = *(v23 + 2);
  if (v24)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_51:
      v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
    }

    v25 = 0;
    *(v5 + 72) = v23;
    v26 = v23 + 32;
    do
    {
      if (v24 == v25)
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (v25 >= *(v23 + 2))
      {
        goto LABEL_49;
      }

      v37 = *v26;
      v38 = *(v26 + 1);
      v39 = *(v26 + 2);
      v40 = *(v26 + 6);
      swift_unownedRetainStrong();
      swift_beginAccess();
      v41 = *(v37 + 148);
      swift_unownedRetain();

      if (v40 != v41)
      {
        v42 = *(v5 + 66);
        if (v42 > 0x3F || (v42 & 1) != 0)
        {
          swift_unownedRelease();
          return v17.x - v18;
        }

        swift_unownedRetainStrong();
        swift_beginAccess();
        v43 = *(v37 + 148);

        swift_unownedRetainStrong();
        swift_beginAccess();
        v38 = *(v37 + 64);
        v39 = *(v37 + 72);

        swift_unownedRetain();
        if (v25 >= *(v23 + 2))
        {
          goto LABEL_50;
        }

        *v26 = v37;
        *(v26 + 1) = v38;
        *(v26 + 2) = v39;
        *(v26 + 6) = v43;
        swift_unownedRelease();
        *(v5 + 72) = v23;
      }

      swift_unownedRetainStrong();

      swift_unownedRetainStrong();
      v44 = *(v37 + 336);
      v45 = *(v37 + 344);
      swift_beginAccess();
      CGSize.inset(by:)();
      v47 = v44 - v46;
      CGSize.inset(by:)();
      v49 = v48;

      if (v47 < 0.0)
      {
        v50 = 0.0;
      }

      else
      {
        v50 = v47;
      }

      if (v45 - v49 < 0.0)
      {
        v51 = 0.0;
      }

      else
      {
        v51 = v45 - v49;
      }

      v58 = v38;
      v52 = CGPoint.clamp(min:max:)(0, __PAIR128__(*&v51, *&v50));
      swift_unownedRetainStrong();
      swift_beginAccess();
      v53 = *(v37 + 64);
      v54 = *(v37 + 72);

      if (v53 == v52.x && v54 == v52.y)
      {
        swift_unownedRelease();
      }

      else
      {
        swift_unownedRetainStrong();
        v27 = v18;
        v57 = v19;
        v29 = *(v37 + 336);
        v28 = *(v37 + 344);
        swift_beginAccess();
        CGSize.inset(by:)();
        v31 = v29 - v30;
        v18 = v27;
        CGSize.inset(by:)();
        v33 = v28 - v32;
        v19 = v57;
        if (v31 < 0.0)
        {
          v34 = 0.0;
        }

        else
        {
          v34 = v31;
        }

        if (v33 < 0.0)
        {
          v35 = 0.0;
        }

        else
        {
          v35 = v33;
        }

        v36 = CGPoint.clamp(min:max:)(0, __PAIR128__(*&v35, *&v34));
        v4 &= 1u;
        v59[0] = v52;
        v59[1] = v36;
        v60 = v4;
        ScrollViewNode.commitScrollTransaction(_:value:)(v59, v36.x, v36.y);
        swift_unownedRelease();
      }

      ++v25;
      v18 = v18 - (v58 - v52.x);
      v19 = v19 - (v39 - v52.y);
      v26 += 32;
    }

    while (v24 != v25);
  }

  return v17.x - v18;
}