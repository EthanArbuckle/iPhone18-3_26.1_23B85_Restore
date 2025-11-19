uint64_t getEnumTagSinglePayload for ListRepresentable(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 24) - 8);
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

  v12 = v11 - 1;
  v13 = *(v8 + 80);
  if (v12 <= v7)
  {
    v14 = *(v6 + 84);
  }

  else
  {
    v14 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v13 | 7;
  v16 = (v13 | 7) + *(*(v5 - 8) + 64);
  if (v14 >= a2)
  {
    goto LABEL_30;
  }

  v17 = ((((((*(*(*(a3 + 24) - 8) + 64) + ((v13 + 16) & ~v13) + (v16 & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 150) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 40;
  v18 = a2 - v14;
  v19 = v17 & 0xFFFFFFF8;
  if ((v17 & 0xFFFFFFF8) != 0)
  {
    v20 = 2;
  }

  else
  {
    v20 = v18 + 1;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = *(a1 + v17);
      if (!v23)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v23 = *(a1 + v17);
      if (!v23)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v25 = v23 - 1;
    if (v19)
    {
      v25 = 0;
      v26 = *a1;
    }

    else
    {
      v26 = 0;
    }

    return v14 + (v26 | v25) + 1;
  }

  if (v22)
  {
    v23 = *(a1 + v17);
    if (v23)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v7 >= v12)
  {
    v30 = *(v6 + 48);

    return v30(a1, v7, v5);
  }

  else
  {
    v27 = ((((a1 + v16) & ~v15) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v10 & 0x80000000) != 0)
    {
      v29 = (*(v9 + 48))((v27 + v13 + 8) & ~v13);
    }

    else
    {
      v28 = *v27;
      if (v28 >= 0xFFFFFFFF)
      {
        LODWORD(v28) = -1;
      }

      v29 = v28 + 1;
    }

    if (v29 >= 2)
    {
      return v29 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void storeEnumTagSinglePayload for ListRepresentable(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = v11 - 1;
  if (v11 - 1 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = v11 - 1;
  }

  v14 = v10 | 7;
  v15 = ((v10 + 16) & ~v10) + *(v8 + 64);
  v16 = (v10 | 7) + *(*(v5 - 8) + 64);
  v17 = ((((((v15 + (v16 & ~(v10 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 150) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v13 >= a3)
  {
    v21 = 0;
    v22 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = a3 - v13;
    if (((((((v15 + (v16 & ~(v10 | 7)) + 7) & 0xFFFFFFF8) + 150) & 0xFFFFFFF8) + 17) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
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

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v17) = 0;
      }

      else if (v21)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if (v7 >= v12)
        {
          v30 = *(v6 + 56);

          v30();
        }

        else
        {
          v26 = (a1 + v16) & ~v14;
          if (v12 >= a2)
          {
            v31 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
            if ((v9 & 0x80000000) != 0)
            {
              v32 = *(v8 + 56);
              v33 = a2 + 1;

              v32((v31 + v10 + 8) & ~v10, v33);
            }

            else if (((a2 + 1) & 0x80000000) != 0)
            {
              *v31 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v31 = a2;
            }
          }

          else
          {
            if (v15 <= 3)
            {
              v27 = ~(-1 << (8 * v15));
            }

            else
            {
              v27 = -1;
            }

            if (v15)
            {
              v28 = v27 & (a2 - v11);
              if (v15 <= 3)
              {
                v29 = v15;
              }

              else
              {
                v29 = 4;
              }

              bzero(((a1 + v16) & ~v14), v15);
              if (v29 > 2)
              {
                if (v29 == 3)
                {
                  *v26 = v28;
                  *(v26 + 2) = BYTE2(v28);
                }

                else
                {
                  *v26 = v28;
                }
              }

              else if (v29 == 1)
              {
                *v26 = v28;
              }

              else
              {
                *v26 = v28;
              }
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (((((((v15 + (v16 & ~(v10 | 7)) + 7) & 0xFFFFFFF8) + 150) & 0xFFFFFFF8) + 17) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v23 = v22;
  }

  else
  {
    v23 = 1;
  }

  if (((((((v15 + (v16 & ~(v10 | 7)) + 7) & 0xFFFFFFF8) + 150) & 0xFFFFFFF8) + 17) & 0xFFFFFFF8) != 0xFFFFFFD8)
  {
    v24 = ~v13 + a2;
    v25 = a1;
    bzero(a1, v17);
    a1 = v25;
    *v25 = v24;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      *(a1 + v17) = v23;
    }

    else
    {
      *(a1 + v17) = v23;
    }
  }

  else if (v21)
  {
    *(a1 + v17) = v23;
  }
}

_DWORD *assignWithCopy for TableViewListCore.UpdateBridgedState(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  swift_unknownObjectWeakCopyAssign();
  return a1;
}

_DWORD *initializeWithTake for TableViewListCore.UpdateBridgedState(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  swift_unknownObjectWeakTakeInit();
  return a1;
}

_DWORD *assignWithTake for TableViewListCore.UpdateBridgedState(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  swift_unknownObjectWeakTakeAssign();
  return a1;
}

uint64_t outlined init with copy of BridgedListState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BridgedListState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ListMarginKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListMarginKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListMarginKey> and conformance EnvironmentPropertyKey<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListMarginKey>, &type metadata for ListMarginKey, &protocol witness table for ListMarginKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListMarginKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t specialized ListRepresentable.resetViewProvider(_:coordinator:destroy:)(uint64_t (*a1)(void))
{
  lazy protocol witness table accessor for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault();
  result = static UserDefaultKeyedFeature.isEnabled.getter();
  if ((result & 1) == 0)
  {
    return a1();
  }

  return result;
}

id specialized static ListRepresentable.dismantleViewProvider(_:coordinator:)(void *a1)
{
  v2 = [a1 refreshControl];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for UIKitRefreshControl();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      if (*&v4[OBJC_IVAR____TtC7SwiftUI19UIKitRefreshControl_currentTask])
      {
        v5 = v4;

        MEMORY[0x18D00D010](v6, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);

        v4 = v5;
      }

      [v4 endRefreshing];
    }
  }

  return [a1 setRefreshControl_];
}

void type metadata accessor for Attribute<UInt32>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>()
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(255, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, MEMORY[0x1E697D9F0], &type metadata for ListTableCellModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, ListTableCellModifier> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for _UIHostingView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, ListTableCellModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewList_View, ListTableCellModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewList_View, ListTableCellModifier> and conformance <> ModifiedContent<A, B>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(255, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, MEMORY[0x1E697D9F0], &type metadata for ListTableCellModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ListTableCellModifier and conformance ListTableCellModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewList_View, ListTableCellModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<RefreshAction.Key>, &type metadata for RefreshAction.Key, &protocol witness table for RefreshAction.Key, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined assign with copy of IntelligenceAppIntentsDataSourcePayloadProviding?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?(0, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding, MEMORY[0x1E69DBD30], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowSpacing>, &type metadata for ListRowSpacing, &protocol witness table for ListRowSpacing, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AttributedString.Runs.Index();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18[-v7];
  type metadata accessor for AttributedString.Runs();
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x1E69687B0]);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  if (v9)
  {
    v10(v8, v2);
    v11 = type metadata accessor for AttributedString.Runs.Run();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  else
  {
    v13 = dispatch thunk of Collection.subscript.read();
    v15 = v14;
    v16 = type metadata accessor for AttributedString.Runs.Run();
    v17 = *(v16 - 8);
    (*(v17 + 16))(a1, v15, v16);
    v13(v18, 0);
    v10(v8, v2);
    return (*(v17 + 56))(a1, 0, 1, v16);
  }
}

{
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0);
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, type metadata accessor for RangeSet<AttributedString.Index>.Ranges);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v7[4] == v7[0])
  {
    v2 = 1;
  }

  else
  {
    v3 = dispatch thunk of Collection.subscript.read();
    _s7SwiftUI16PlatformItemListV0D0VWOcTm_0(v4, a1, type metadata accessor for Range<AttributedString.Index>);
    v3(v7, 0);
    v2 = 0;
  }

  type metadata accessor for Range<AttributedString.Index>();
  return (*(*(v5 - 8) + 56))(a1, v2, 1, v5);
}

{
  outlined init with copy of TableColumnCollection.Backing(v1, v13);
  if ((v14 & 1) == 0)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v13, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v7 = (*(v6 + 8))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 1;
    goto LABEL_6;
  }

  v3 = *(*&v13[0] + 16);

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  TableColumnCollection.subscript.getter(0, a1);
  v4 = 0;
LABEL_6:
  v8 = type metadata accessor for TableColumnCollection.Entry(0);
  return (*(*(v8 - 8) + 56))(a1, v4, 1, v8);
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _HashTable.startBucket.getter();
  if (v4 == 1 << *(a1 + 32))
  {
    result = 0;
    *(a2 + 88) = 0;
    *(a2 + 72) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    *(a2 + 96) = -1;
  }

  else
  {
    result = specialized Dictionary.subscript.getter(v8, v4, *(a1 + 36), 0, a1);
    v6 = v8[3];
    *(a2 + 40) = v8[2];
    *(a2 + 56) = v6;
    *(a2 + 72) = v9[0];
    *(a2 + 81) = *(v9 + 9);
    v7 = v8[1];
    *(a2 + 8) = v8[0];
    *(a2 + 24) = v7;
  }

  *a2 = result;
  return result;
}

uint64_t *specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a1;
  if (a2)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  AGGraphGetWeakValue();
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    v12 = *(MEMORY[0x1E69E7CC0] + 16);

    if (v12)
    {
      goto LABEL_6;
    }

LABEL_11:
    v13 = type metadata accessor for PlatformItemList.Item();
    v8 = *(*(v13 - 8) + 56);
    v11 = v13;
    v9 = a3;
    v10 = 1;
    goto LABEL_12;
  }

  if (!*(*WeakValue + 16))
  {
    goto LABEL_11;
  }

LABEL_6:
  result = AGGraphGetWeakValue();
  if (!result)
  {
    v3 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
    return result;
  }

  v3 = *result;
LABEL_8:

  if (!*(v3 + 16))
  {
    goto LABEL_16;
  }

LABEL_9:
  v7 = type metadata accessor for PlatformItemList.Item();
  v14 = *(v7 - 8);
  _s7SwiftUI16PlatformItemListV0D0VWOcTm_0(v3 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), a3, type metadata accessor for PlatformItemList.Item);

  v8 = *(v14 + 56);
  v9 = a3;
  v10 = 0;
  v11 = v7;
LABEL_12:

  return v8(v9, v10, 1, v11);
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t *a2)
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.startIndex.getter();
    v7 = v6;
    v8 = __CocoaSet.endIndex.getter();
    v10 = v9;
    v11 = MEMORY[0x18D00E710](v5, v7, v8, v9);
    outlined consume of Set<UIOpenURLContext>.Index._Variant(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      outlined consume of Set<UIOpenURLContext>.Index._Variant(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v5 = _HashTable.startBucket.getter();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  specialized Set.subscript.getter(v5, v7, v4 != 0, a1, a2);
  v14 = v13;
  outlined consume of Set<UIOpenURLContext>.Index._Variant(v5, v7, v4 != 0);
  return v14;
}

unint64_t specialized Collection.first.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result >> 62)
  {
    v5 = result;
    v6 = __CocoaSet.count.getter();
    result = v5;
    if (v6)
    {
LABEL_3:
      if ((result & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x18D00E9C0](0, result);
        v3 = v4;
      }

      else
      {
        if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_13:
          __break(1u);
          return result;
        }

        v3 = *(result + 32);
      }

      (*(*v3 + 120))(&v7, v4);

      if (v8)
      {
        return outlined init with take of Decodable & Encodable & Hashable(&v7, a2);
      }

      goto LABEL_13;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

unint64_t specialized Collection.first.getter(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = _StringGuts.validateScalarIndex(_:)(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = _StringObject.sharedUTF8.getter();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = _StringGuts.validateScalarIndex(_:)(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (_StringObject.sharedUTF8.getter() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

char *specialized _UIHostingView.init(rootView:)()
{
  v1 = v0;
  v205 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UIHostingViewBase.Options();
  v174 = *(v3 - 8);
  v175 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v182 = &v170 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v181 = &v170 - v6;
  v7 = type metadata accessor for UIHostingViewBase.Configuration();
  v178 = *(v7 - 8);
  v179 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v173 = &v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v180 = &v170 - v10;
  v11 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x70)) = 0;
  v12 = *((*v11 & *v0) + 0x78);
  type metadata accessor for EventBindingManager();
  v13 = EventBindingManager.__allocating_init()();
  v176 = v12;
  *(v0 + v12) = v13;
  *(v0 + *((*v11 & *v0) + 0x80)) = 0;
  *(v0 + *((*v11 & *v0) + 0x88)) = 0;
  *(v0 + *((*v11 & *v0) + 0x90)) = 1;
  *(v0 + *((*v11 & *v0) + 0x98)) = 0;
  *(v0 + *((*v11 & *v0) + 0xA0)) = 0;
  v14 = v1 + *((*v11 & *v1) + 0xA8);
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  v15 = v1 + *((*v11 & *v1) + 0xB0);
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  *(v0 + *((*v11 & *v0) + 0xB8)) = 0;
  *(v0 + *((*v11 & *v0) + 0xC0)) = 0;
  *(v0 + *((*v11 & *v0) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + *((*v11 & *v0) + 0xD8)) = 0;
  v16 = v1 + *((*v11 & *v1) + 0xE8);
  *v16 = 0;
  v16[8] = 1;
  *(v0 + *((*v11 & *v0) + 0xF0)) = 0;
  *(v0 + *((*v11 & *v0) + 0xF8)) = 2;
  v17 = *((*v11 & *v0) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v19 = v18;
  v20 = objc_allocWithZone(v18);
  *(v20 + *((*v11 & *v20) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v20 + *((*v11 & *v20) + 0x68)) = 0;
  *(v20 + *((*v11 & *v20) + 0x70)) = 0;
  *(v20 + *((*v11 & *v20) + 0x78)) = 0;
  EnvironmentValues.init()();
  v21 = v20 + *((*v11 & *v20) + 0x88);
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  *(v21 + 3) = 0u;
  *(v21 + 4) = 0u;
  *(v21 + 5) = 0u;
  *(v21 + 6) = 0u;
  *(v21 + 7) = 0u;
  *(v21 + 8) = 0u;
  *(v21 + 9) = 0u;
  *(v21 + 10) = 0u;
  *(v21 + 11) = 0u;
  *(v21 + 12) = 0u;
  *(v21 + 13) = 0u;
  *(v21 + 14) = 0u;
  *(v21 + 15) = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 34) = 0;
  *(v20 + *((*v11 & *v20) + 0x90)) = 0;
  *(v20 + *((*v11 & *v20) + 0x98)) = 1;
  v187.receiver = v20;
  v187.super_class = v19;
  *(v0 + v17) = objc_msgSendSuper2(&v187, sel_init);
  v22 = *((*v11 & *v0) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  *(v25 + *((*v11 & *v25) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v25 + *((*v11 & *v25) + 0x68)) = 0;
  *(v25 + *((*v11 & *v25) + 0x70)) = 0;
  *(v25 + *((*v11 & *v25) + 0x78)) = 0;
  EnvironmentValues.init()();
  v26 = v25 + *((*v11 & *v25) + 0x88);
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 2) = 0u;
  *(v26 + 3) = 0u;
  *(v26 + 4) = 0u;
  *(v26 + 5) = 0u;
  *(v26 + 6) = 0u;
  *(v26 + 7) = 0u;
  *(v26 + 8) = 0u;
  *(v26 + 9) = 0u;
  *(v26 + 20) = 0;
  *(v25 + *((*v11 & *v25) + 0x90)) = 0;
  *(v25 + *((*v11 & *v25) + 0x98)) = 0;
  v186.receiver = v25;
  v186.super_class = v24;
  *(v1 + v22) = objc_msgSendSuper2(&v186, sel_init);
  *(v1 + *((*v11 & *v1) + 0x110)) = 1;
  v27 = *((*v11 & *v1) + 0x118);
  type metadata accessor for FocusBridge();
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 32) = 0;
  *(v28 + 40) = 0;
  swift_unknownObjectWeakInit();
  v29 = MEMORY[0x1E69E7CC0];
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v28 + 48) = 0;
  *(v28 + 56) = v29;
  *(v28 + 64) = v30;
  EnvironmentValues.init()();
  *(v28 + 120) = 0u;
  *(v28 + 104) = 0u;
  *(v28 + 88) = 0u;
  v170 = xmmword_18CD6A6D0;
  *(v28 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v28 + 160) = 0;
  *(v28 + 168) = 0;
  *(v28 + 176) = 1;
  *(v1 + v27) = v28;
  v31 = *((*v11 & *v1) + 0x120);
  *(v1 + v31) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v1 + *((*v11 & *v1) + 0x128)) = 0;
  v32 = *((*v11 & *v1) + 0x130);
  *(v1 + v32) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v33 = *((*v11 & *v1) + 0x138);
  *(v1 + v33) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v1 + *((*v11 & *v1) + 0x140)) = 0;
  *(v1 + *((*v11 & *v1) + 0x148)) = 0;
  v34 = *((*v11 & *v1) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v35 = swift_allocObject();
  *(v35 + 16) = 514;
  *(v35 + 24) = v29;
  *(v35 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + v34) = v35;
  swift_weakInit();
  *(v1 + *((*v11 & *v1) + 0x160)) = 0;
  v36 = *((*v11 & *v1) + 0x168);
  *(v1 + v36) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v37 = *((*v11 & *v1) + 0x170);
  *(v1 + v37) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v1 + *((*v11 & *v1) + 0x178)) = 0;
  *(v1 + *((*v11 & *v1) + 0x180)) = 0;
  v38 = *((*v11 & *v1) + 0x188);
  *(v1 + v38) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v39 = *((*v11 & *v1) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 20) = 0;
  *(v40 + 24) = 0;
  v171 = v39;
  *(v1 + v39) = v40;
  *(v1 + *((*v11 & *v1) + 0x198)) = 0;
  v41 = *((*v11 & *v1) + 0x1A0);
  *(v1 + v41) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v1 + *((*v11 & *v1) + 0x1A8)) = 0;
  *(v1 + *((*v11 & *v1) + 0x1B0)) = 0;
  *(v1 + *((*v11 & *v1) + 0x1B8)) = 0;
  *(v1 + *((*v11 & *v1) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v11 & *v1) + 0x1C8)) = 0;
  v42 = v1 + *((*v11 & *v1) + 0x1D0);
  *v42 = 0;
  v42[8] = 0;
  *(v42 + 1) = xmmword_18CD76350;
  v43 = swift_unknownObjectWeakInit();
  *(v1 + *((*v11 & *v1) + 0x1E0)) = 0;
  *(v1 + *((*v11 & *v1) + 0x1E8)) = 0;
  *(v1 + *((*v11 & *v1) + 0x1F0)) = 0;
  *(v1 + *((*v11 & *v1) + 0x1F8)) = 0;
  *(v1 + *((*v11 & *v1) + 0x200)) = 0;
  MEMORY[0x18D00ABE0](v43);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition();
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition();
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v44 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v45 = *(ObjectType + 1384);
  v172 = ObjectType;
  v45(&v190, v44);
  v46 = v190;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v188) = v46;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  v177 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v47 = *(v177 + 88);

  v48 = v180;
  v49 = UIHostingViewBase.Configuration.init()();
  v50 = v182;
  MEMORY[0x18D001BC0](v49);
  v51 = UIHostingViewBase.Configuration.options.modify();
  v52 = v181;
  specialized OptionSet<>.insert(_:)(v181, v50);
  v53 = v175;
  v54 = *(v174 + 8);
  v54(v50, v175);
  v54(v52, v53);
  v55 = v51(&v190, 0);
  v56 = v48;
  if (((*(v172 + 1408))(v55) & 1) == 0)
  {
    v57 = v182;
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v174 = UIHostingViewBase.Configuration.options.modify();
    v58 = v181;
    specialized OptionSet<>.insert(_:)(v181, v57);
    v56 = v48;
    v54(v57, v53);
    v54(v58, v53);
    (v174)(&v190, 0);
  }

  (*(v178 + 16))(v173, v56, v179);
  v59 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  v60 = UIHostingViewBase.init(viewGraph:configuration:)();
  v61 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68)) = v60;

  *&v190 = specialized FocusViewGraph.init(graph:)(v62);
  *(&v190 + 1) = v63;
  LOWORD(v191) = v64 & 0x101;
  BYTE2(v191) = v65 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v190 = 0;
  WORD4(v190) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v66 = *MEMORY[0x1E698D3F8];
    v188 = 0uLL;
    *v189 = v66;
    memset(&v189[8], 0, 64);
    *&v189[72] = v170;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v193 = *&v189[32];
    v194 = *&v189[48];
    v195 = *&v189[64];
    v196 = *&v189[80];
    v190 = v188;
    v191 = *v189;
    v192 = *&v189[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v190);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<EmptyView>.EnableVFDFeature, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView.EnableVFDFeature);
    lazy protocol witness table accessor for type _UIHostingView<EmptyView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature();
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v67, &v188);
  aBlock = v188;
  v202 = *v189;
  v203 = *&v189[16];
  v204 = *&v189[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v190 = aBlock;
  v191 = v202;
  v192 = v203;
  *&v193 = v204;
  outlined destroy of AccessibilityViewGraph(&v190);
  v68 = *(v1 + v171);
  v69 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v70 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v68;
  DWORD2(aBlock) = v70;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v71 = MEMORY[0x1E69E7CC0];
  v72 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v202 + 1) = &type metadata for HoverEventDispatcher;
  *&v203 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v72;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v202 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v203 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v202 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v203 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v73 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v71);
  *(&v202 + 1) = &type metadata for KeyEventDispatcher;
  *&v203 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v73;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge();
  swift_allocObject();

  *(v1 + *((*v61 & *v1) + 0xE0)) = UIKitEventBindingBridge.init(eventBindingManager:)();
  v74 = MEMORY[0x1E6981E70];
  v75 = MEMORY[0x1E6981E60];
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView);
  v185.receiver = v1;
  v185.super_class = v76;
  v77 = objc_msgSendSuper2(&v185, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<EmptyView>.HostViewGraph, v74, v75, type metadata accessor for _UIHostingView.HostViewGraph);
  lazy protocol witness table accessor for type _UIHostingView<EmptyView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph();
  v78 = v77;
  ViewGraph.append<A>(feature:)();
  v79 = outlined destroy of _UIHostingView<EmptyView>.HostViewGraph(&aBlock);
  v181 = v77;
  (*((*v61 & *v78) + 0x5C0))(v79);
  v80 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v81 = aBlock;
  v182 = v47;
  if (aBlock != 1)
  {
    v82 = *(&aBlock + 1);
    v83 = v202;
    v84 = v203;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v85);
    }

    *&aBlock = v81;
    *(&aBlock + 1) = v82;
    v202 = v83;
    LOBYTE(v203) = v84 & 1;
    RepresentableContextValues.environment.getter();
    v199 = v200;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v81, v82, v83, *(&v83 + 1), v84);
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v86 = v78;

  v87 = *&v86[*((*v61 & *v86) + 0x150)];
  v88 = lazy protocol witness table accessor for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>();
  *(v87 + 40) = v88;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v176 = *((*v61 & *v86) + 0x188);
  *(*&v86[v176] + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();
  v89 = *&v86[*((*v61 & *v86) + 0x100)];
  *(v89 + *((*v89 & *v61) + 0x60) + 8) = v88;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v90 = *&v86[*((*v61 & *v86) + 0x108)];
  *(v90 + *((*v90 & *v61) + 0x60) + 8) = v88;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v91 = specialized _UIHostingView.sheetBridge.getter();
  if (v91)
  {
    *&v91[direct field offset for SheetBridge.host + 8] = v88;
    v92 = v91;
    swift_unknownObjectWeakAssign();
  }

  v93 = *v61 & *v86;
  v94 = *&v86[*(v93 + 0x110)];
  if (v94)
  {
    v95 = *((*v94 & *v61) + 0x210);
    v96 = v94;
    v95(v182);
    outlined consume of SheetBridge<SheetPreference.Key>??(v94);
    v93 = *v61 & *v86;
  }

  v97 = *&v86[*(v93 + 280)];
  v98 = lazy protocol witness table accessor for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>();
  *(v97 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v97 + 40) = v98;
  swift_unknownObjectWeakAssign();

  v99 = FocusBridge.host.getter();
  if (v99)
  {
    v101 = v99;
    v102 = v100;
    v103 = swift_getObjectType();
    (*(*(*(v102 + 8) + 8) + 8))(v103);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v104 = *((*v61 & *v86) + 0x120);
  *(*&v86[v104] + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();
  v105 = *&v86[v104];
  v106 = &v105[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v107 = *(v106 + 1);
  v108 = swift_getObjectType();
  v109 = *(*(v107 + 16) + 8);
  v110 = v105;
  LOBYTE(v108) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v108, v109);
  swift_unknownObjectRelease();
  if (v108)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*&v86[*((*v61 & *v86) + 0x130)] + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();
  v111 = v86;
  GraphHost.addPreference<A>(_:)();
  *(*&v111[*((*v61 & *v111) + 0x138)] + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*&v111[*((*v61 & *v111) + 0x170)] + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v112 = *((*v61 & *v111) + 0x168);
  *(*&v111[v112] + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v88;
  swift_unknownObjectWeakAssign();

  v113 = *&v111[v112];
  v114 = &v113[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v115 = *(v114 + 1);
  v116 = swift_getObjectType();
  v117 = *(v115 + 8);
  v118 = *(v117 + 8);
  v119 = v113;
  v118(v116, v117);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v120 = [v111 traitCollection];

  v121 = [v120 userInterfaceIdiom];
  v122 = MEMORY[0x1E69E7D40];
  if (v121 == 1 || (v123 = [v111 traitCollection], v124 = objc_msgSend(v123, sel_userInterfaceIdiom), v123, v124 == 6))
  {
    v125 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v125[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v88;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v126 = *((*v122 & *v111) + 0x178);
    v127 = *&v111[v126];
    *&v111[v126] = v125;
  }

  v128 = *&v86[v176];
  v129 = &v128[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v131 = v179;
  if (!Strong)
  {
LABEL_47:
    __break(1u);
  }

  v132 = *(v129 + 1);
  v133 = swift_getObjectType();
  v134 = *(*(v132 + 16) + 8);
  v135 = v128;
  LOBYTE(v133) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v133, v134);
  swift_unknownObjectRelease();
  v136 = v182;
  if (v133)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v137 = *((*v122 & *v111) + 0x1A0);
  *(*&v111[v137] + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v88;
  v138 = swift_unknownObjectWeakAssign();
  v139 = *&v111[v137];
  MEMORY[0x1EEE9AC00](v138);
  *(&v170 - 2) = v139;
  *(&v170 - 1) = v136;
  v140 = v111;
  v141 = v139;
  static Update.ensure<A>(_:)();

  v142 = MEMORY[0x1E69E7D40];
  v143 = *((*MEMORY[0x1E69E7D40] & *v140) + 0x78);
  v144 = *&v140[v143];
  v145 = lazy protocol witness table accessor for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>();
  swift_beginAccess();
  *(v144 + 24) = v145;
  swift_unknownObjectWeakAssign();

  v146 = *&v140[v143];
  v147 = *((*v142 & *v140) + 0xE0);
  swift_beginAccess();
  *(v146 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v148 = *&v140[v147];
  v149 = *(v148 + 32);
  v150 = v180;

  if (v149)
  {
    [v140 addGestureRecognizer_];
  }

  [v140 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v151 = [v140 window];
    if (v151)
    {
      v152 = v151;
      v153 = [v151 rootViewController];

      if (v153)
      {
        v154 = [v153 viewIfLoaded];

        if (v154)
        {

          if (v154 == v140)
          {
            v197 = 0;
            v184 = 0;
            v155 = getpid();
            LODWORD(v176) = v155;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v183 = v155;
            v156 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v156);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v157 = static OS_dispatch_queue.main.getter();
            v158 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v203 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v203 + 1) = v158;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v202 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v202 + 1) = &block_descriptor_225;
            v159 = _Block_copy(&aBlock);

            v160 = String.utf8CString.getter();

            notify_register_dispatch((v160 + 32), &v197, v157, v159);

            _Block_release(v159);

            v150 = v180;
            v161 = static OS_dispatch_queue.main.getter();
            v162 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v163 = swift_allocObject();
            *(v163 + 16) = v176;
            *(v163 + 24) = v162;
            *&v203 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v203 + 1) = v163;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v202 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v202 + 1) = &block_descriptor_232;
            v164 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", &v184, v161, v164);
            _Block_release(v164);

            v165 = &v140[*((*v142 & *v140) + 0xE8)];
            *v165 = v197 | (v184 << 32);
            v165[8] = 0;
          }
        }
      }
    }
  }

  v166 = [objc_opt_self() defaultCenter];
  [v166 addObserver:v140 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v167 = one-time initialization token for didUpdateListLayout;
  v168 = v140;
  if (v167 != -1)
  {
    swift_once();
  }

  [v166 addObserver:v168 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v198 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v197, v168);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v178 + 8))(v150, v131);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v178 + 8))(v150, v131);
  }

  static Update.end()();
  return v168;
}

void *specialized _UIHostingView.init(rootView:)(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v184) = a2;
  v207 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v178 = type metadata accessor for UIHostingViewBase.Options();
  v183 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v173 = &v170 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v175 = &v170 - v8;
  v9 = type metadata accessor for UIHostingViewBase.Configuration();
  v180 = *(v9 - 8);
  v181 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v176 = &v170 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v182 = &v170 - v12;
  v13 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x70)) = 0;
  v14 = *((*v13 & *v2) + 0x78);
  type metadata accessor for EventBindingManager();
  v15 = EventBindingManager.__allocating_init()();
  v177 = v14;
  *(v2 + v14) = v15;
  *(v2 + *((*v13 & *v2) + 0x80)) = 0;
  *(v2 + *((*v13 & *v2) + 0x88)) = 0;
  *(v2 + *((*v13 & *v2) + 0x90)) = 1;
  *(v2 + *((*v13 & *v2) + 0x98)) = 0;
  *(v2 + *((*v13 & *v2) + 0xA0)) = 0;
  v16 = v3 + *((*v13 & *v3) + 0xA8);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  v17 = v3 + *((*v13 & *v3) + 0xB0);
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[32] = 1;
  *(v2 + *((*v13 & *v2) + 0xB8)) = 0;
  *(v2 + *((*v13 & *v2) + 0xC0)) = 0;
  *(v2 + *((*v13 & *v2) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + *((*v13 & *v2) + 0xD8)) = 0;
  v18 = v3 + *((*v13 & *v3) + 0xE8);
  *v18 = 0;
  v18[8] = 1;
  *(v2 + *((*v13 & *v2) + 0xF0)) = 0;
  *(v2 + *((*v13 & *v2) + 0xF8)) = 2;
  v19 = *((*v13 & *v2) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v21 = v20;
  v22 = objc_allocWithZone(v20);
  *(v22 + *((*v13 & *v22) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v22 + *((*v13 & *v22) + 0x68)) = 0;
  *(v22 + *((*v13 & *v22) + 0x70)) = 0;
  *(v22 + *((*v13 & *v22) + 0x78)) = 0;
  EnvironmentValues.init()();
  v23 = v22 + *((*v13 & *v22) + 0x88);
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 2) = 0u;
  *(v23 + 3) = 0u;
  *(v23 + 4) = 0u;
  *(v23 + 5) = 0u;
  *(v23 + 6) = 0u;
  *(v23 + 7) = 0u;
  *(v23 + 8) = 0u;
  *(v23 + 9) = 0u;
  *(v23 + 10) = 0u;
  *(v23 + 11) = 0u;
  *(v23 + 12) = 0u;
  *(v23 + 13) = 0u;
  *(v23 + 14) = 0u;
  *(v23 + 15) = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 34) = 0;
  *(v22 + *((*v13 & *v22) + 0x90)) = 0;
  *(v22 + *((*v13 & *v22) + 0x98)) = 1;
  v189.receiver = v22;
  v189.super_class = v21;
  *(v2 + v19) = objc_msgSendSuper2(&v189, sel_init);
  v24 = *((*v13 & *v2) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v26 = v25;
  v27 = objc_allocWithZone(v25);
  *(v27 + *((*v13 & *v27) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v27 + *((*v13 & *v27) + 0x68)) = 0;
  *(v27 + *((*v13 & *v27) + 0x70)) = 0;
  *(v27 + *((*v13 & *v27) + 0x78)) = 0;
  EnvironmentValues.init()();
  v28 = v27 + *((*v13 & *v27) + 0x88);
  *v28 = 0u;
  *(v28 + 1) = 0u;
  *(v28 + 2) = 0u;
  *(v28 + 3) = 0u;
  *(v28 + 4) = 0u;
  *(v28 + 5) = 0u;
  *(v28 + 6) = 0u;
  *(v28 + 7) = 0u;
  *(v28 + 8) = 0u;
  *(v28 + 9) = 0u;
  *(v28 + 20) = 0;
  *(v27 + *((*v13 & *v27) + 0x90)) = 0;
  *(v27 + *((*v13 & *v27) + 0x98)) = 0;
  v188.receiver = v27;
  v188.super_class = v26;
  *(v3 + v24) = objc_msgSendSuper2(&v188, sel_init);
  *(v3 + *((*v13 & *v3) + 0x110)) = 1;
  v29 = *((*v13 & *v3) + 0x118);
  type metadata accessor for FocusBridge();
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 32) = 0;
  *(v30 + 40) = 0;
  swift_unknownObjectWeakInit();
  v31 = MEMORY[0x1E69E7CC0];
  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v30 + 48) = 0;
  *(v30 + 56) = v31;
  *(v30 + 64) = v32;
  EnvironmentValues.init()();
  *(v30 + 120) = 0u;
  *(v30 + 104) = 0u;
  *(v30 + 88) = 0u;
  v170 = xmmword_18CD6A6D0;
  *(v30 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v30 + 160) = 0;
  *(v30 + 168) = 0;
  *(v30 + 176) = 1;
  *(v3 + v29) = v30;
  v33 = *((*v13 & *v3) + 0x120);
  *(v3 + v33) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v3 + *((*v13 & *v3) + 0x128)) = 0;
  v34 = *((*v13 & *v3) + 0x130);
  *(v3 + v34) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v35 = *((*v13 & *v3) + 0x138);
  *(v3 + v35) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v3 + *((*v13 & *v3) + 0x140)) = 0;
  *(v3 + *((*v13 & *v3) + 0x148)) = 0;
  v36 = *((*v13 & *v3) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v37 = swift_allocObject();
  *(v37 + 16) = 514;
  *(v37 + 24) = v31;
  *(v37 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + v36) = v37;
  swift_weakInit();
  *(v3 + *((*v13 & *v3) + 0x160)) = 0;
  v38 = *((*v13 & *v3) + 0x168);
  *(v3 + v38) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v39 = *((*v13 & *v3) + 0x170);
  *(v3 + v39) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v3 + *((*v13 & *v3) + 0x178)) = 0;
  *(v3 + *((*v13 & *v3) + 0x180)) = 0;
  v40 = *((*v13 & *v3) + 0x188);
  *(v3 + v40) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v41 = *((*v13 & *v3) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 20) = 0;
  *(v42 + 24) = 0;
  v172 = v41;
  *(v3 + v41) = v42;
  *(v3 + *((*v13 & *v3) + 0x198)) = 0;
  v43 = *((*v13 & *v3) + 0x1A0);
  *(v3 + v43) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v3 + *((*v13 & *v3) + 0x1A8)) = 0;
  *(v3 + *((*v13 & *v3) + 0x1B0)) = 0;
  *(v3 + *((*v13 & *v3) + 0x1B8)) = 0;
  *(v3 + *((*v13 & *v3) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + *((*v13 & *v3) + 0x1C8)) = 0;
  v44 = v3 + *((*v13 & *v3) + 0x1D0);
  *v44 = 0;
  v44[8] = 0;
  *(v44 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v3 + *((*v13 & *v3) + 0x1E0)) = 0;
  *(v3 + *((*v13 & *v3) + 0x1E8)) = 0;
  *(v3 + *((*v13 & *v3) + 0x1F0)) = 0;
  *(v3 + *((*v13 & *v3) + 0x1F8)) = 0;
  *(v3 + *((*v13 & *v3) + 0x200)) = 0;
  v45 = v3 + *((*v13 & *v3) + 0x60);
  *v45 = a1;
  v45[8] = v184;
  v171 = a1;

  MEMORY[0x18D00ABE0](v46);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition();
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition();
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v47 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v48 = *(ObjectType + 1384);
  v174 = ObjectType;
  v48(&v192, v47);
  v49 = v192;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v190) = v49;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView();
  v179 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v184 = *(v179 + 88);

  v50 = v182;
  v51 = UIHostingViewBase.Configuration.init()();
  v52 = v173;
  MEMORY[0x18D001BC0](v51);
  v53 = UIHostingViewBase.Configuration.options.modify();
  v54 = v175;
  specialized OptionSet<>.insert(_:)(v175, v52);
  v56 = (v183 + 1);
  v55 = v183[1];
  v57 = v178;
  v55(v52, v178);
  v183 = v56;
  v55(v54, v57);
  v58 = v53(&v192, 0);
  v59 = v50;
  if (((*(v174 + 1408))(v58) & 1) == 0)
  {
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v60 = UIHostingViewBase.Configuration.options.modify();
    specialized OptionSet<>.insert(_:)(v54, v52);
    v61 = v178;
    v55(v52, v178);
    v55(v54, v61);
    v60(&v192, 0);
    v59 = v182;
  }

  (*(v180 + 16))(v176, v59, v181);
  v62 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x68)) = UIHostingViewBase.init(viewGraph:configuration:)();
  v63 = v184;

  *&v192 = specialized FocusViewGraph.init(graph:)(v64);
  *(&v192 + 1) = v65;
  LOWORD(v193) = v66 & 0x101;
  BYTE2(v193) = v67 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v192 = 0;
  WORD4(v192) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v68 = *MEMORY[0x1E698D3F8];
    v190 = 0uLL;
    *v191 = v68;
    memset(&v191[8], 0, 64);
    *&v191[72] = v170;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v195 = *&v191[32];
    v196 = *&v191[48];
    v197 = *&v191[64];
    v198 = *&v191[80];
    v192 = v190;
    v193 = *v191;
    v194 = *&v191[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v192);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>.EnableVFDFeature, lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView, &type metadata for BridgedPresentation.RootView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature();
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v69, &v190);
  aBlock = v190;
  v204 = *v191;
  v205 = *&v191[16];
  v206 = *&v191[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v192 = aBlock;
  v193 = v204;
  v194 = v205;
  *&v195 = v206;
  outlined destroy of AccessibilityViewGraph(&v192);
  v70 = *(v3 + v172);
  v71 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v72 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v70;
  DWORD2(aBlock) = v72;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v73 = MEMORY[0x1E69E7CC0];
  v74 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v204 + 1) = &type metadata for HoverEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v74;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v204 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v204 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v75 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v73);
  *(&v204 + 1) = &type metadata for KeyEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v75;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge();
  swift_allocObject();

  v76 = UIKitEventBindingBridge.init(eventBindingManager:)();
  v77 = MEMORY[0x1E69E7D40];
  *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xE0)) = v76;
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>, lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView, &type metadata for BridgedPresentation.RootView, type metadata accessor for _UIHostingView);
  v187.receiver = v3;
  v187.super_class = v78;
  v79 = v77;
  v80 = objc_msgSendSuper2(&v187, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>.HostViewGraph, lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView, &type metadata for BridgedPresentation.RootView, type metadata accessor for _UIHostingView.HostViewGraph);
  lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph();
  v81 = v80;
  ViewGraph.append<A>(feature:)();
  v82 = outlined destroy of _UIHostingView<BridgedPresentation.RootView>.HostViewGraph(&aBlock);
  (*((*v77 & *v81) + 0x5C0))(v82);
  v83 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v84 = aBlock;
  v183 = v80;
  if (aBlock != 1)
  {
    v85 = *(&aBlock + 1);
    v86 = v204;
    v87 = v205;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v88);
    }

    *&aBlock = v84;
    *(&aBlock + 1) = v85;
    v204 = v86;
    LOBYTE(v205) = v87 & 1;
    RepresentableContextValues.environment.getter();
    v201 = v202;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v84, v85, v86, *(&v86 + 1), v87);
    v63 = v184;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v89 = v81;

  v90 = *(v89 + *((*v79 & *v89) + 0x150));
  v91 = lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>();
  *(v90 + 40) = v91;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v178 = *((*v79 & *v89) + 0x188);
  *(*(v89 + v178) + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  v92 = *(v89 + *((*v79 & *v89) + 0x100));
  *(v92 + *((*v92 & *v79) + 0x60) + 8) = v91;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v93 = *(v89 + *((*v79 & *v89) + 0x108));
  *(v93 + *((*v93 & *v79) + 0x60) + 8) = v91;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v94 = specialized _UIHostingView.sheetBridge.getter();
  if (v94)
  {
    *&v94[direct field offset for SheetBridge.host + 8] = v91;
    v95 = v94;
    swift_unknownObjectWeakAssign();
  }

  v96 = *v79 & *v89;
  v97 = *(v89 + *(v96 + 0x110));
  if (v97)
  {
    v98 = *((*v97 & *v79) + 0x210);
    v99 = v97;
    v98(v63);
    outlined consume of SheetBridge<SheetPreference.Key>??(v97);
    v96 = *v79 & *v89;
  }

  v100 = *(v89 + *(v96 + 280));
  v101 = lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>();
  *(v100 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v100 + 40) = v101;
  swift_unknownObjectWeakAssign();

  v102 = FocusBridge.host.getter();
  if (v102)
  {
    v104 = v102;
    v105 = v103;
    v106 = swift_getObjectType();
    (*(*(*(v105 + 8) + 8) + 8))(v106);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v107 = *((*v79 & *v89) + 0x120);
  *(*(v89 + v107) + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  v108 = *(v89 + v107);
  v109 = &v108[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v110 = *(v109 + 1);
  v111 = swift_getObjectType();
  v112 = *(*(v110 + 16) + 8);
  v113 = v108;
  LOBYTE(v111) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v111, v112);
  swift_unknownObjectRelease();
  if (v111)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*(v89 + *((*v79 & *v89) + 0x130)) + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  v114 = v89;
  GraphHost.addPreference<A>(_:)();
  *(*(v114 + *((*v79 & *v114) + 0x138)) + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*(v114 + *((*v79 & *v114) + 0x170)) + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v115 = *((*v79 & *v114) + 0x168);
  *(*(v114 + v115) + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v91;
  swift_unknownObjectWeakAssign();

  v116 = *(v114 + v115);
  v117 = &v116[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v118 = *(v117 + 1);
  v119 = swift_getObjectType();
  v120 = *(v118 + 8);
  v121 = *(v120 + 8);
  v122 = v116;
  v121(v119, v120);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v123 = [v114 traitCollection];

  v124 = [v123 userInterfaceIdiom];
  v125 = MEMORY[0x1E69E7D40];
  if (v124 == 1 || (v126 = [v114 traitCollection], v127 = objc_msgSend(v126, sel_userInterfaceIdiom), v126, v127 == 6))
  {
    v128 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v128[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v91;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v129 = *((*v125 & *v114) + 0x178);
    v130 = *(v114 + v129);
    *(v114 + v129) = v128;
  }

  v131 = *(v89 + v178);
  v132 = &v131[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_47:
    __break(1u);
  }

  v133 = *(v132 + 1);
  v134 = v131;

  v135 = swift_getObjectType();
  v136 = ViewGraphDelegate.shouldCreateUIInteractions.getter(v135, *(*(v133 + 16) + 8));
  swift_unknownObjectRelease();
  v137 = v184;
  if (v136)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v138 = *((*v125 & *v114) + 0x1A0);
  *(*(v114 + v138) + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v91;
  v139 = swift_unknownObjectWeakAssign();
  v140 = *(v114 + v138);
  MEMORY[0x1EEE9AC00](v139);
  *(&v170 - 2) = v140;
  *(&v170 - 1) = v137;
  v141 = v114;
  v142 = v140;
  static Update.ensure<A>(_:)();

  v143 = *((*v125 & *v141) + 0x78);
  v144 = *(v141 + v143);
  v145 = lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>();
  swift_beginAccess();
  *(v144 + 24) = v145;
  swift_unknownObjectWeakAssign();

  v146 = *(v141 + v143);
  v147 = *((*v125 & *v141) + 0xE0);
  swift_beginAccess();
  *(v146 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v148 = *(v141 + v147);
  v149 = *(v148 + 32);

  if (v149)
  {
    [v141 addGestureRecognizer_];
  }

  [v141 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v150 = [v141 window];
    if (v150)
    {
      v151 = v150;
      v152 = [v150 rootViewController];

      if (v152)
      {
        v153 = [v152 viewIfLoaded];

        if (v153)
        {

          if (v153 == v141)
          {
            v199 = 0;
            v186[0] = 0;
            v154 = getpid();
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v185 = v154;
            v155 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v155);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v156 = static OS_dispatch_queue.main.getter();
            v157 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v205 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v205 + 1) = v157;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v204 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v204 + 1) = &block_descriptor_57;
            v158 = _Block_copy(&aBlock);

            v159 = String.utf8CString.getter();

            notify_register_dispatch((v159 + 32), &v199, v156, v158);

            _Block_release(v158);

            v160 = static OS_dispatch_queue.main.getter();
            v161 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v162 = swift_allocObject();
            *(v162 + 16) = v154;
            *(v162 + 24) = v161;
            *&v205 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v205 + 1) = v162;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v204 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v204 + 1) = &block_descriptor_64;
            v163 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v186, v160, v163);
            _Block_release(v163);

            v164 = v141 + *((*v125 & *v141) + 0xE8);
            *v164 = v199 | (v186[0] << 32);
            v164[8] = 0;
          }
        }
      }
    }
  }

  v165 = [objc_opt_self() defaultCenter];
  [v165 addObserver:v141 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v166 = one-time initialization token for didUpdateListLayout;
  v167 = v141;
  if (v166 != -1)
  {
    swift_once();
  }

  [v165 addObserver:v167 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  v168 = v182;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v200 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v199, v167);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v180 + 8))(v168, v181);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v180 + 8))(v168, v181);
  }

  static Update.end()();
  return v167;
}

void *specialized _UIHostingView.init(rootView:)(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v184 = a3;
  v179 = a2;
  LODWORD(v178) = a1;
  v207 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v183 = type metadata accessor for UIHostingViewBase.Options();
  v176 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v174 = &v170 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v170 - v8;
  v10 = type metadata accessor for UIHostingViewBase.Configuration();
  v181 = *(v10 - 8);
  v182 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v175 = &v170 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v180 = &v170 - v13;
  v14 = MEMORY[0x1E69E7D40];
  *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x70)) = 0;
  v15 = *((*v14 & *v3) + 0x78);
  type metadata accessor for EventBindingManager();
  v16 = EventBindingManager.__allocating_init()();
  v177 = v15;
  *(v3 + v15) = v16;
  *(v3 + *((*v14 & *v3) + 0x80)) = 0;
  *(v3 + *((*v14 & *v3) + 0x88)) = 0;
  *(v3 + *((*v14 & *v3) + 0x90)) = 1;
  *(v3 + *((*v14 & *v3) + 0x98)) = 0;
  *(v3 + *((*v14 & *v3) + 0xA0)) = 0;
  v17 = v4 + *((*v14 & *v4) + 0xA8);
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[32] = 1;
  v18 = v4 + *((*v14 & *v4) + 0xB0);
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  *(v3 + *((*v14 & *v3) + 0xB8)) = 0;
  *(v3 + *((*v14 & *v3) + 0xC0)) = 0;
  *(v3 + *((*v14 & *v3) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + *((*v14 & *v3) + 0xD8)) = 0;
  v19 = v4 + *((*v14 & *v4) + 0xE8);
  *v19 = 0;
  v19[8] = 1;
  *(v3 + *((*v14 & *v3) + 0xF0)) = 0;
  *(v3 + *((*v14 & *v3) + 0xF8)) = 2;
  v20 = *((*v14 & *v3) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v22 = v21;
  v23 = objc_allocWithZone(v21);
  *(v23 + *((*v14 & *v23) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v23 + *((*v14 & *v23) + 0x68)) = 0;
  *(v23 + *((*v14 & *v23) + 0x70)) = 0;
  *(v23 + *((*v14 & *v23) + 0x78)) = 0;
  EnvironmentValues.init()();
  v24 = v23 + *((*v14 & *v23) + 0x88);
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 2) = 0u;
  *(v24 + 3) = 0u;
  *(v24 + 4) = 0u;
  *(v24 + 5) = 0u;
  *(v24 + 6) = 0u;
  *(v24 + 7) = 0u;
  *(v24 + 8) = 0u;
  *(v24 + 9) = 0u;
  *(v24 + 10) = 0u;
  *(v24 + 11) = 0u;
  *(v24 + 12) = 0u;
  *(v24 + 13) = 0u;
  *(v24 + 14) = 0u;
  *(v24 + 15) = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 34) = 0;
  *(v23 + *((*v14 & *v23) + 0x90)) = 0;
  *(v23 + *((*v14 & *v23) + 0x98)) = 1;
  v189.receiver = v23;
  v189.super_class = v22;
  *(v3 + v20) = objc_msgSendSuper2(&v189, sel_init);
  v25 = *((*v14 & *v3) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v27 = v26;
  v28 = objc_allocWithZone(v26);
  *(v28 + *((*v14 & *v28) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v28 + *((*v14 & *v28) + 0x68)) = 0;
  *(v28 + *((*v14 & *v28) + 0x70)) = 0;
  *(v28 + *((*v14 & *v28) + 0x78)) = 0;
  EnvironmentValues.init()();
  v29 = v28 + *((*v14 & *v28) + 0x88);
  *v29 = 0u;
  *(v29 + 1) = 0u;
  *(v29 + 2) = 0u;
  *(v29 + 3) = 0u;
  *(v29 + 4) = 0u;
  *(v29 + 5) = 0u;
  *(v29 + 6) = 0u;
  *(v29 + 7) = 0u;
  *(v29 + 8) = 0u;
  *(v29 + 9) = 0u;
  *(v29 + 20) = 0;
  *(v28 + *((*v14 & *v28) + 0x90)) = 0;
  *(v28 + *((*v14 & *v28) + 0x98)) = 0;
  v188.receiver = v28;
  v188.super_class = v27;
  *(v4 + v25) = objc_msgSendSuper2(&v188, sel_init);
  *(v4 + *((*v14 & *v4) + 0x110)) = 1;
  v30 = *((*v14 & *v4) + 0x118);
  type metadata accessor for FocusBridge();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 32) = 0;
  *(v31 + 40) = 0;
  swift_unknownObjectWeakInit();
  v32 = MEMORY[0x1E69E7CC0];
  v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v31 + 48) = 0;
  *(v31 + 56) = v32;
  *(v31 + 64) = v33;
  EnvironmentValues.init()();
  *(v31 + 120) = 0u;
  *(v31 + 104) = 0u;
  *(v31 + 88) = 0u;
  v170 = xmmword_18CD6A6D0;
  *(v31 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v31 + 160) = 0;
  *(v31 + 168) = 0;
  *(v31 + 176) = 1;
  *(v4 + v30) = v31;
  v34 = *((*v14 & *v4) + 0x120);
  *(v4 + v34) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v4 + *((*v14 & *v4) + 0x128)) = 0;
  v35 = *((*v14 & *v4) + 0x130);
  *(v4 + v35) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v36 = *((*v14 & *v4) + 0x138);
  *(v4 + v36) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v4 + *((*v14 & *v4) + 0x140)) = 0;
  *(v4 + *((*v14 & *v4) + 0x148)) = 0;
  v37 = *((*v14 & *v4) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v38 = swift_allocObject();
  *(v38 + 16) = 514;
  *(v38 + 24) = v32;
  *(v38 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + v37) = v38;
  swift_weakInit();
  *(v4 + *((*v14 & *v4) + 0x160)) = 0;
  v39 = *((*v14 & *v4) + 0x168);
  *(v4 + v39) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v40 = *((*v14 & *v4) + 0x170);
  *(v4 + v40) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v4 + *((*v14 & *v4) + 0x178)) = 0;
  *(v4 + *((*v14 & *v4) + 0x180)) = 0;
  v41 = *((*v14 & *v4) + 0x188);
  *(v4 + v41) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v42 = *((*v14 & *v4) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 20) = 0;
  *(v43 + 24) = 0;
  v173 = v42;
  *(v4 + v42) = v43;
  *(v4 + *((*v14 & *v4) + 0x198)) = 0;
  v44 = *((*v14 & *v4) + 0x1A0);
  *(v4 + v44) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v4 + *((*v14 & *v4) + 0x1A8)) = 0;
  *(v4 + *((*v14 & *v4) + 0x1B0)) = 0;
  *(v4 + *((*v14 & *v4) + 0x1B8)) = 0;
  *(v4 + *((*v14 & *v4) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + *((*v14 & *v4) + 0x1C8)) = 0;
  v45 = v4 + *((*v14 & *v4) + 0x1D0);
  *v45 = 0;
  v45[8] = 0;
  *(v45 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v4 + *((*v14 & *v4) + 0x1E0)) = 0;
  *(v4 + *((*v14 & *v4) + 0x1E8)) = 0;
  *(v4 + *((*v14 & *v4) + 0x1F0)) = 0;
  *(v4 + *((*v14 & *v4) + 0x1F8)) = 0;
  *(v4 + *((*v14 & *v4) + 0x200)) = 0;
  v46 = v4 + *((*v14 & *v4) + 0x60);
  *v46 = v178;
  v47 = v179;
  v48 = v184;
  *(v46 + 1) = v179;
  *(v46 + 2) = v48;
  v172 = v47;
  v171 = v48;
  MEMORY[0x18D00ABE0]();
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition();
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition();
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v49 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v50 = *(ObjectType + 1384);
  v178 = ObjectType;
  v50(&v192, v49);
  v51 = v192;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v190) = v51;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol();
  v179 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v184 = *(v179 + 88);

  v52 = v180;
  v53 = UIHostingViewBase.Configuration.init()();
  v54 = v174;
  MEMORY[0x18D001BC0](v53);
  v55 = UIHostingViewBase.Configuration.options.modify();
  specialized OptionSet<>.insert(_:)(v9, v54);
  v56 = *(v176 + 8);
  v57 = v183;
  v56(v54, v183);
  v56(v9, v57);
  v58 = v55(&v192, 0);
  if (((*(v178 + 1408))(v58) & 1) == 0)
  {
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v178 = UIHostingViewBase.Configuration.options.modify();
    specialized OptionSet<>.insert(_:)(v9, v54);
    v59 = v183;
    v56(v54, v183);
    v56(v9, v59);
    (v178)(&v192, 0);
  }

  (*(v181 + 16))(v175, v52, v182);
  v60 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  *(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x68)) = UIHostingViewBase.init(viewGraph:configuration:)();
  v61 = v184;

  *&v192 = specialized FocusViewGraph.init(graph:)(v62);
  *(&v192 + 1) = v63;
  LOWORD(v193) = v64 & 0x101;
  BYTE2(v193) = v65 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v192 = 0;
  WORD4(v192) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v66 = *MEMORY[0x1E698D3F8];
    v190 = 0uLL;
    *v191 = v66;
    memset(&v191[8], 0, 64);
    *&v191[72] = v170;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v195 = *&v191[32];
    v196 = *&v191[48];
    v197 = *&v191[64];
    v198 = *&v191[80];
    v192 = v190;
    v193 = *v191;
    v194 = *&v191[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v192);
  }

  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.EnableVFDFeature, lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol, MEMORY[0x1E697FB28], type metadata accessor for _UIHostingView.EnableVFDFeature);
    lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature();
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v67, &v190);
  aBlock = v190;
  v204 = *v191;
  v205 = *&v191[16];
  v206 = *&v191[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v192 = aBlock;
  v193 = v204;
  v194 = v205;
  *&v195 = v206;
  outlined destroy of AccessibilityViewGraph(&v192);
  v68 = *(v4 + v173);
  v69 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v70 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v68;
  DWORD2(aBlock) = v70;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v71 = MEMORY[0x1E69E7CC0];
  v72 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v204 + 1) = &type metadata for HoverEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v72;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v204 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v204 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v73 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v71);
  *(&v204 + 1) = &type metadata for KeyEventDispatcher;
  *&v205 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v73;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge();
  swift_allocObject();

  v74 = UIKitEventBindingBridge.init(eventBindingManager:)();
  v75 = MEMORY[0x1E69E7D40];
  *(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0xE0)) = v74;
  v76 = MEMORY[0x1E697FB28];
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>, lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol, MEMORY[0x1E697FB28], type metadata accessor for _UIHostingView);
  v187.receiver = v4;
  v187.super_class = v77;
  v78 = v75;
  v79 = objc_msgSendSuper2(&v187, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.HostViewGraph, lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol, v76, type metadata accessor for _UIHostingView.HostViewGraph);
  lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph();
  v80 = v79;
  ViewGraph.append<A>(feature:)();
  v81 = outlined destroy of _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.HostViewGraph(&aBlock);
  (*((*v75 & *v80) + 0x5C0))(v81);
  v82 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v83 = aBlock;
  v183 = v79;
  if (aBlock != 1)
  {
    v84 = *(&aBlock + 1);
    v85 = v204;
    v86 = v205;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v87);
    }

    *&aBlock = v83;
    *(&aBlock + 1) = v84;
    v204 = v85;
    LOBYTE(v205) = v86 & 1;
    RepresentableContextValues.environment.getter();
    v201 = v202;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v83, v84, v85, *(&v85 + 1), v86);
    v61 = v184;
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v88 = v80;

  v89 = *(v88 + *((*v78 & *v88) + 0x150));
  v90 = lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>();
  *(v89 + 40) = v90;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v178 = *((*v78 & *v88) + 0x188);
  *(*(v88 + v178) + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  v91 = *(v88 + *((*v78 & *v88) + 0x100));
  *(v91 + *((*v91 & *v78) + 0x60) + 8) = v90;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v92 = *(v88 + *((*v78 & *v88) + 0x108));
  *(v92 + *((*v92 & *v78) + 0x60) + 8) = v90;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v93 = specialized _UIHostingView.sheetBridge.getter();
  if (v93)
  {
    *&v93[direct field offset for SheetBridge.host + 8] = v90;
    v94 = v93;
    swift_unknownObjectWeakAssign();
  }

  v95 = *v78 & *v88;
  v96 = *(v88 + *(v95 + 0x110));
  if (v96)
  {
    v97 = *((*v96 & *v78) + 0x210);
    v98 = v96;
    v97(v61);
    outlined consume of SheetBridge<SheetPreference.Key>??(v96);
    v95 = *v78 & *v88;
  }

  v99 = *(v88 + *(v95 + 280));
  v100 = lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>();
  *(v99 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v99 + 40) = v100;
  swift_unknownObjectWeakAssign();

  v101 = FocusBridge.host.getter();
  if (v101)
  {
    v103 = v101;
    v104 = v102;
    v105 = swift_getObjectType();
    (*(*(*(v104 + 8) + 8) + 8))(v105);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v106 = *((*v78 & *v88) + 0x120);
  *(*(v88 + v106) + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  v107 = *(v88 + v106);
  v108 = &v107[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v109 = *(v108 + 1);
  v110 = swift_getObjectType();
  v111 = *(*(v109 + 16) + 8);
  v112 = v107;
  LOBYTE(v110) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v110, v111);
  swift_unknownObjectRelease();
  if (v110)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*(v88 + *((*v78 & *v88) + 0x130)) + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  v113 = v88;
  GraphHost.addPreference<A>(_:)();
  *(*(v113 + *((*v78 & *v113) + 0x138)) + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*(v113 + *((*v78 & *v113) + 0x170)) + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v114 = *((*v78 & *v113) + 0x168);
  *(*(v113 + v114) + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v90;
  swift_unknownObjectWeakAssign();

  v115 = *(v113 + v114);
  v116 = &v115[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v117 = *(v116 + 1);
  v118 = swift_getObjectType();
  v119 = *(v117 + 8);
  v120 = *(v119 + 8);
  v121 = v115;
  v120(v118, v119);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v122 = [v113 traitCollection];

  v123 = [v122 userInterfaceIdiom];
  v124 = MEMORY[0x1E69E7D40];
  if (v123 == 1 || (v125 = [v113 traitCollection], v126 = objc_msgSend(v125, sel_userInterfaceIdiom), v125, v126 == 6))
  {
    v127 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v127[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v90;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v128 = *((*v124 & *v113) + 0x178);
    v129 = *(v113 + v128);
    *(v113 + v128) = v127;
  }

  v130 = *(v88 + v178);
  v131 = &v130[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v133 = *(v131 + 1);
  v134 = v130;

  if (!Strong)
  {
LABEL_47:
    __break(1u);
  }

  v135 = swift_getObjectType();
  v136 = ViewGraphDelegate.shouldCreateUIInteractions.getter(v135, *(*(v133 + 16) + 8));
  swift_unknownObjectRelease();
  v137 = v184;
  if (v136)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v138 = *((*v124 & *v113) + 0x1A0);
  *(*(v113 + v138) + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v90;
  v139 = swift_unknownObjectWeakAssign();
  v140 = *(v113 + v138);
  MEMORY[0x1EEE9AC00](v139);
  *(&v170 - 2) = v140;
  *(&v170 - 1) = v137;
  v141 = v113;
  v142 = v140;
  static Update.ensure<A>(_:)();

  v143 = *((*v124 & *v141) + 0x78);
  v144 = *(v141 + v143);
  v145 = lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>();
  swift_beginAccess();
  *(v144 + 24) = v145;
  swift_unknownObjectWeakAssign();

  v146 = *(v141 + v143);
  v147 = *((*v124 & *v141) + 0xE0);
  swift_beginAccess();
  *(v146 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v148 = *(v141 + v147);
  v149 = *(v148 + 32);

  if (v149)
  {
    [v141 addGestureRecognizer_];
  }

  [v141 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v150 = [v141 window];
    if (v150)
    {
      v151 = v150;
      v152 = [v150 rootViewController];

      if (v152)
      {
        v153 = [v152 viewIfLoaded];

        if (v153)
        {

          if (v153 == v141)
          {
            v199 = 0;
            v186[0] = 0;
            v154 = getpid();
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v185 = v154;
            v155 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v155);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v156 = static OS_dispatch_queue.main.getter();
            v157 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v205 = partial apply for specialized closure #1 in _UIHostingView.init(rootView:);
            *(&v205 + 1) = v157;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v204 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v204 + 1) = &block_descriptor_211;
            v158 = _Block_copy(&aBlock);

            v159 = String.utf8CString.getter();

            notify_register_dispatch((v159 + 32), &v199, v156, v158);

            _Block_release(v158);

            v160 = static OS_dispatch_queue.main.getter();
            v161 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v162 = swift_allocObject();
            *(v162 + 16) = v154;
            *(v162 + 24) = v161;
            *&v205 = partial apply for specialized closure #2 in _UIHostingView.init(rootView:);
            *(&v205 + 1) = v162;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v204 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v204 + 1) = &block_descriptor_218;
            v163 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v186, v160, v163);
            _Block_release(v163);

            v164 = v141 + *((*v124 & *v141) + 0xE8);
            *v164 = v199 | (v186[0] << 32);
            v164[8] = 0;
          }
        }
      }
    }
  }

  v165 = [objc_opt_self() defaultCenter];
  [v165 addObserver:v141 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v166 = one-time initialization token for didUpdateListLayout;
  v167 = v141;
  if (v166 != -1)
  {
    swift_once();
  }

  [v165 addObserver:v167 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  v168 = v180;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v200 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v199, v167);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v181 + 8))(v168, v182);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v181 + 8))(v168, v182);
  }

  static Update.end()();
  return v167;
}

void *specialized _UIHostingView.init(rootView:)(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t), uint64_t (*a8)(void), void (*a9)(void), unint64_t *a10, void (*a11)(uint64_t), uint64_t (*a12)(void), uint64_t a13, unint64_t *a14, void (*a15)(uint64_t), unint64_t *a16, uint64_t a17, unint64_t *a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(void), unint64_t *a22, uint64_t (*a23)(void), void (*a24)(uint64_t), uint64_t (*a25)(void))
{
  v207 = a8;
  v208 = a4;
  v198 = a6;
  v199 = a7;
  v197 = a5;
  v201 = a3;
  v214 = a2;
  v26 = v25;
  v212 = a1;
  v237 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v213 = type metadata accessor for UIHostingViewBase.Options();
  v204 = *(v213 - 1);
  MEMORY[0x1EEE9AC00](v213);
  v203 = (&v196 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v196 - v30;
  v32 = type metadata accessor for UIHostingViewBase.Configuration();
  v209 = *(v32 - 8);
  v210 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v205 = (&v196 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34);
  v211 = &v196 - v35;
  v36 = MEMORY[0x1E69E7D40];
  *(v25 + *((*MEMORY[0x1E69E7D40] & *v25) + 0x70)) = 0;
  v37 = *((*v36 & *v25) + 0x78);
  type metadata accessor for EventBindingManager();
  v38 = EventBindingManager.__allocating_init()();
  v206 = v37;
  *&v37[v25] = v38;
  *(v25 + *((*v36 & *v25) + 0x80)) = 0;
  *(v25 + *((*v36 & *v25) + 0x88)) = 0;
  *(v25 + *((*v36 & *v25) + 0x90)) = 1;
  *(v25 + *((*v36 & *v25) + 0x98)) = 0;
  *(v25 + *((*v36 & *v25) + 0xA0)) = 0;
  v39 = v26 + *((*v36 & *v26) + 0xA8);
  *v39 = 0u;
  *(v39 + 1) = 0u;
  v39[32] = 1;
  v40 = v26 + *((*v36 & *v26) + 0xB0);
  *v40 = 0u;
  *(v40 + 1) = 0u;
  v40[32] = 1;
  *(v25 + *((*v36 & *v25) + 0xB8)) = 0;
  *(v25 + *((*v36 & *v25) + 0xC0)) = 0;
  *(v25 + *((*v36 & *v25) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v25 + *((*v36 & *v25) + 0xD8)) = 0;
  v41 = v26 + *((*v36 & *v26) + 0xE8);
  *v41 = 0;
  v41[8] = 1;
  *(v25 + *((*v36 & *v25) + 0xF0)) = 0;
  *(v25 + *((*v36 & *v25) + 0xF8)) = 2;
  v42 = *((*v36 & *v25) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v44 = v43;
  v45 = objc_allocWithZone(v43);
  *(v45 + *((*v36 & *v45) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v45 + *((*v36 & *v45) + 0x68)) = 0;
  *(v45 + *((*v36 & *v45) + 0x70)) = 0;
  *(v45 + *((*v36 & *v45) + 0x78)) = 0;
  EnvironmentValues.init()();
  v46 = v45 + *((*v36 & *v45) + 0x88);
  *v46 = 0u;
  *(v46 + 1) = 0u;
  *(v46 + 2) = 0u;
  *(v46 + 3) = 0u;
  *(v46 + 4) = 0u;
  *(v46 + 5) = 0u;
  *(v46 + 6) = 0u;
  *(v46 + 7) = 0u;
  *(v46 + 8) = 0u;
  *(v46 + 9) = 0u;
  *(v46 + 10) = 0u;
  *(v46 + 11) = 0u;
  *(v46 + 12) = 0u;
  *(v46 + 13) = 0u;
  *(v46 + 14) = 0u;
  *(v46 + 15) = 0u;
  *(v46 + 16) = 0u;
  *(v46 + 34) = 0;
  *(v45 + *((*v36 & *v45) + 0x90)) = 0;
  *(v45 + *((*v36 & *v45) + 0x98)) = 1;
  v219.receiver = v45;
  v219.super_class = v44;
  *(v25 + v42) = objc_msgSendSuper2(&v219, sel_init);
  v47 = *((*v36 & *v25) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v49 = v48;
  v50 = objc_allocWithZone(v48);
  *(v50 + *((*v36 & *v50) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v50 + *((*v36 & *v50) + 0x68)) = 0;
  *(v50 + *((*v36 & *v50) + 0x70)) = 0;
  *(v50 + *((*v36 & *v50) + 0x78)) = 0;
  EnvironmentValues.init()();
  v51 = v50 + *((*v36 & *v50) + 0x88);
  *v51 = 0u;
  *(v51 + 1) = 0u;
  *(v51 + 2) = 0u;
  *(v51 + 3) = 0u;
  *(v51 + 4) = 0u;
  *(v51 + 5) = 0u;
  *(v51 + 6) = 0u;
  *(v51 + 7) = 0u;
  *(v51 + 8) = 0u;
  *(v51 + 9) = 0u;
  *(v51 + 20) = 0;
  *(v50 + *((*v36 & *v50) + 0x90)) = 0;
  *(v50 + *((*v36 & *v50) + 0x98)) = 0;
  v218.receiver = v50;
  v218.super_class = v49;
  *(v26 + v47) = objc_msgSendSuper2(&v218, sel_init);
  *(v26 + *((*v36 & *v26) + 0x110)) = 1;
  v52 = *((*v36 & *v26) + 0x118);
  type metadata accessor for FocusBridge();
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  *(v53 + 32) = 0;
  *(v53 + 40) = 0;
  swift_unknownObjectWeakInit();
  v54 = MEMORY[0x1E69E7CC0];
  v55 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v53 + 48) = 0;
  *(v53 + 56) = v54;
  *(v53 + 64) = v55;
  EnvironmentValues.init()();
  *(v53 + 120) = 0u;
  *(v53 + 104) = 0u;
  *(v53 + 88) = 0u;
  v196 = xmmword_18CD6A6D0;
  *(v53 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v53 + 160) = 0;
  *(v53 + 168) = 0;
  *(v53 + 176) = 1;
  *(v26 + v52) = v53;
  v56 = *((*v36 & *v26) + 0x120);
  *(v26 + v56) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v26 + *((*v36 & *v26) + 0x128)) = 0;
  v57 = *((*v36 & *v26) + 0x130);
  *(v26 + v57) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v58 = *((*v36 & *v26) + 0x138);
  *(v26 + v58) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v26 + *((*v36 & *v26) + 0x140)) = 0;
  *(v26 + *((*v36 & *v26) + 0x148)) = 0;
  v59 = *((*v36 & *v26) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v60 = swift_allocObject();
  *(v60 + 16) = 514;
  *(v60 + 24) = v54;
  *(v60 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + v59) = v60;
  swift_weakInit();
  *(v26 + *((*v36 & *v26) + 0x160)) = 0;
  v61 = *((*v36 & *v26) + 0x168);
  *(v26 + v61) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v62 = *((*v36 & *v26) + 0x170);
  *(v26 + v62) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v26 + *((*v36 & *v26) + 0x178)) = 0;
  *(v26 + *((*v36 & *v26) + 0x180)) = 0;
  v63 = *((*v36 & *v26) + 0x188);
  *(v26 + v63) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v64 = *((*v36 & *v26) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v65 = swift_allocObject();
  *(v65 + 16) = 0;
  *(v65 + 20) = 0;
  *(v65 + 24) = 0;
  v200 = v64;
  *(v26 + v64) = v65;
  *(v26 + *((*v36 & *v26) + 0x198)) = 0;
  v66 = *((*v36 & *v26) + 0x1A0);
  *(v26 + v66) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v26 + *((*v36 & *v26) + 0x1A8)) = 0;
  *(v26 + *((*v36 & *v26) + 0x1B0)) = 0;
  *(v26 + *((*v36 & *v26) + 0x1B8)) = 0;
  *(v26 + *((*v36 & *v26) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v36 & *v26) + 0x1C8)) = 0;
  v67 = v26 + *((*v36 & *v26) + 0x1D0);
  *v67 = 0;
  v67[8] = 0;
  *(v67 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v26 + *((*v36 & *v26) + 0x1E0)) = 0;
  *(v26 + *((*v36 & *v26) + 0x1E8)) = 0;
  *(v26 + *((*v36 & *v26) + 0x1F0)) = 0;
  *(v26 + *((*v36 & *v26) + 0x1F8)) = 0;
  *(v26 + *((*v36 & *v26) + 0x200)) = 0;
  v68 = _s7SwiftUI16PlatformItemListV0D0VWOcTm_0(v212, v26 + *((*v36 & *v26) + 0x60), v214);
  MEMORY[0x18D00ABE0](v68);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition();
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition();
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v69 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v70 = *(ObjectType + 1384);
  v202 = ObjectType;
  v70(&v222, v69);
  v71 = v222;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v201(0);
  LOBYTE(v220) = v71;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  (v208)();
  v208 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v214 = *(v208 + 88);

  v72 = v211;
  v73 = UIHostingViewBase.Configuration.init()();
  v74 = v203;
  MEMORY[0x18D001BC0](v73);
  v75 = UIHostingViewBase.Configuration.options.modify();
  specialized OptionSet<>.insert(_:)(v31, v74);
  v76 = *(v204 + 8);
  v77 = v213;
  v76(v74, v213);
  v76(v31, v77);
  v78 = v75(&v222, 0);
  if (((*(v202 + 1408))(v78) & 1) == 0)
  {
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v204 = UIHostingViewBase.Configuration.options.modify();
    specialized OptionSet<>.insert(_:)(v31, v74);
    v79 = v213;
    v76(v74, v213);
    v76(v31, v79);
    (v204)(&v222, 0);
  }

  v204 = a13;
  v203 = a12;
  (*(v209 + 16))(v205, v72, v210);
  v80 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  *(v26 + *((*MEMORY[0x1E69E7D40] & *v26) + 0x68)) = UIHostingViewBase.init(viewGraph:configuration:)();

  *&v222 = specialized FocusViewGraph.init(graph:)(v81);
  *(&v222 + 1) = v82;
  LOWORD(v223) = v83 & 0x101;
  BYTE2(v223) = v84 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v222 = 0;
  WORD4(v222) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v85 = *MEMORY[0x1E698D3F8];
    v220 = 0uLL;
    *v221 = v85;
    memset(&v221[8], 0, 64);
    *&v221[72] = v196;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v225 = *&v221[32];
    v226 = *&v221[48];
    v227 = *&v221[64];
    v228 = *&v221[80];
    v222 = v220;
    v223 = *v221;
    v224 = *&v221[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v222);
  }

  v213 = a15;
  v205 = a14;
  if (_UIUpdateAdaptiveRateNeeded())
  {
    v197(0);
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(v198, v199);
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v86, &v220);
  aBlock = v220;
  v234 = *v221;
  v235 = *&v221[16];
  v236 = *&v221[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v222 = aBlock;
  v223 = v234;
  v224 = v235;
  *&v225 = v236;
  outlined destroy of AccessibilityViewGraph(&v222);
  v87 = *(v26 + v200);
  v88 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v89 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v87;
  DWORD2(aBlock) = v89;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v90 = MEMORY[0x1E69E7CC0];
  v91 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v234 + 1) = &type metadata for HoverEventDispatcher;
  *&v235 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v91;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v234 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v235 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v234 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v235 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v92 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v90);
  *(&v234 + 1) = &type metadata for KeyEventDispatcher;
  *&v235 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v92;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge();
  swift_allocObject();

  v93 = UIKitEventBindingBridge.init(eventBindingManager:)();
  v94 = MEMORY[0x1E69E7D40];
  *(v26 + *((*MEMORY[0x1E69E7D40] & *v26) + 0xE0)) = v93;
  v95 = v207(0);
  v217.receiver = v26;
  v217.super_class = v95;
  v96 = objc_msgSendSuper2(&v217, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  a9(0);
  v97 = v94;
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(a10, a11);
  v98 = v96;
  v99 = v96;
  ViewGraph.append<A>(feature:)();
  v100 = outlined destroy of _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph(&aBlock, v203);
  v101 = (*((*v94 & *v98) + 0x5C0))(v100);
  v102 = (v204)(v101);
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v103 = aBlock;
  if (aBlock != 1)
  {
    v104 = *(&aBlock + 1);
    v105 = v234;
    v106 = v235;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v107);
    }

    *&aBlock = v103;
    *(&aBlock + 1) = v104;
    v234 = v105;
    LOBYTE(v235) = v106 & 1;
    RepresentableContextValues.environment.getter();
    v108 = MEMORY[0x1E69E7D40];
    v231 = v232;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    v97 = v108;
    outlined consume of RepresentableContextValues?(v103, v104, v105, *(&v105 + 1), v106);
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v109 = v98;

  v110 = *(v109 + *((*v97 & *v109) + 0x150));
  v111 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(v205, v213);
  *(v110 + 40) = v111;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v205 = *((*v97 & *v109) + 0x188);
  *(*(v205 + v109) + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v111;
  swift_unknownObjectWeakAssign();
  v112 = *(v109 + *((*v97 & *v109) + 0x100));
  *(v112 + *((*v112 & *v97) + 0x60) + 8) = v111;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v113 = *(v109 + *((*v97 & *v109) + 0x108));
  *(v113 + *((*v113 & *v97) + 0x60) + 8) = v111;
  swift_unknownObjectWeakAssign();

  v114 = v111;
  GraphHost.addPreference<A>(_:)();
  v115 = specialized _UIHostingView.sheetBridge.getter();
  if (v115)
  {
    *&v115[direct field offset for SheetBridge.host + 8] = v111;
    v116 = v115;
    swift_unknownObjectWeakAssign();
  }

  v117 = *v97 & *v109;
  v118 = *(v109 + *(v117 + 0x110));
  if (v118)
  {
    v119 = *((*v118 & *v97) + 0x210);
    v120 = v118;
    v119(v214);
    outlined consume of SheetBridge<SheetPreference.Key>??(v118);
    v117 = *v97 & *v109;
  }

  v121 = *(v109 + *(v117 + 280));
  v122 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(a16, v213);
  *(v121 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v121 + 40) = v122;
  swift_unknownObjectWeakAssign();

  v123 = FocusBridge.host.getter();
  if (v123)
  {
    v125 = v123;
    v126 = v124;
    v127 = swift_getObjectType();
    (*(*(*(v126 + 8) + 8) + 8))(v127);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v128 = *((*v97 & *v109) + 0x120);
  *(*(v109 + v128) + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v114;
  swift_unknownObjectWeakAssign();
  v129 = *(v109 + v128);
  v130 = &v129[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v131 = *(v130 + 1);
  v132 = swift_getObjectType();
  v133 = *(*(v131 + 16) + 8);
  v134 = v129;
  LOBYTE(v132) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v132, v133);
  swift_unknownObjectRelease();
  if (v132)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*(v109 + *((*v97 & *v109) + 0x130)) + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v114;
  swift_unknownObjectWeakAssign();
  v135 = v109;
  GraphHost.addPreference<A>(_:)();
  *(*(v135 + *((*v97 & *v135) + 0x138)) + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v114;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*(v135 + *((*v97 & *v135) + 0x170)) + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v114;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v136 = *v97 & *v135;
  v206 = v99;
  v137 = *(v136 + 360);
  v138 = *(v135 + v137) + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host;
  v207 = v114;
  *(v138 + 8) = v114;
  swift_unknownObjectWeakAssign();

  v139 = *(v135 + v137);
  v140 = &v139[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v141 = *(v140 + 1);
  v142 = swift_getObjectType();
  v143 = *(v141 + 8);
  v144 = *(v143 + 8);
  v145 = v139;
  v144(v142, v143);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v146 = [v135 traitCollection];

  v147 = [v146 userInterfaceIdiom];
  v148 = v207;
  if (v147 == 1 || (v149 = [v135 traitCollection], v150 = objc_msgSend(v149, sel_userInterfaceIdiom), v149, v150 == 6))
  {
    v151 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v151[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v148;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v152 = *((*MEMORY[0x1E69E7D40] & *v135) + 0x178);
    v153 = *(v135 + v152);
    *(v135 + v152) = v151;
  }

  v154 = *(v205 + v109);
  v155 = &v154[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  Strong = swift_unknownObjectWeakLoadStrong();
  v157 = v211;
  if (!Strong)
  {
LABEL_47:
    __break(1u);
  }

  v205 = a18;
  v158 = *(v155 + 1);
  v159 = swift_getObjectType();
  v160 = *(*(v158 + 16) + 8);
  v161 = v154;
  LOBYTE(v160) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v159, v160);
  swift_unknownObjectRelease();
  if (v160)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v162 = MEMORY[0x1E69E7D40];
  v163 = *((*MEMORY[0x1E69E7D40] & *v135) + 0x1A0);
  *(*(v135 + v163) + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v207;
  v164 = swift_unknownObjectWeakAssign();
  v165 = *(v135 + v163);
  MEMORY[0x1EEE9AC00](v164);
  v166 = v214;
  *(&v196 - 2) = v165;
  *(&v196 - 1) = v166;
  v167 = v135;
  v168 = v165;
  static Update.ensure<A>(_:)();

  v169 = *((*v162 & *v167) + 0x78);
  v170 = *(v167 + v169);
  v171 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(v205, v213);
  swift_beginAccess();
  *(v170 + 24) = v171;
  swift_unknownObjectWeakAssign();

  v172 = *(v167 + v169);
  v173 = *((*v162 & *v167) + 0xE0);
  swift_beginAccess();
  *(v172 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v174 = *(v167 + v173);
  v175 = *(v174 + 32);

  if (v175)
  {
    [v167 addGestureRecognizer_];
  }

  [v167 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v176 = [v167 window];
    if (v176)
    {
      v177 = v176;
      v178 = [v176 rootViewController];

      if (v178)
      {
        v179 = [v178 viewIfLoaded];

        if (v179)
        {

          if (v179 == v167)
          {
            v213 = a24;
            v207 = a23;
            v205 = a22;
            v203 = a21;
            v229 = 0;
            v216[0] = 0;
            v180 = getpid();
            LODWORD(v204) = v180;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v215 = v180;
            v181 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v181);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v182 = static OS_dispatch_queue.main.getter();
            v183 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v235 = a20;
            *(&v235 + 1) = v183;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v234 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v234 + 1) = v203;
            v184 = _Block_copy(&aBlock);

            v185 = String.utf8CString.getter();

            notify_register_dispatch((v185 + 32), &v229, v182, v184);

            _Block_release(v184);

            v186 = static OS_dispatch_queue.main.getter();
            v187 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v188 = swift_allocObject();
            *(v188 + 16) = v204;
            *(v188 + 24) = v187;
            *&v235 = v207;
            *(&v235 + 1) = v188;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v234 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v234 + 1) = v213;
            v189 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v216, v186, v189);
            _Block_release(v189);

            v190 = v167 + *((*MEMORY[0x1E69E7D40] & *v167) + 0xE8);
            *v190 = v229 | (v216[0] << 32);
            v190[8] = 0;
          }
        }
      }
    }
  }

  v191 = [objc_opt_self() defaultCenter];
  [v191 addObserver:v167 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v192 = one-time initialization token for didUpdateListLayout;
  v193 = v167;
  if (v192 != -1)
  {
    swift_once();
  }

  [v191 addObserver:v193 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v230 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v229, v193);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v209 + 8))(v157, v210);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v209 + 8))(v157, v210);
  }

  v194 = v212;
  static Update.end()();
  outlined destroy of _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>.HostViewGraph(v194, a25);
  return v193;
}

void *specialized _UIHostingView.init(rootView:)(uint64_t a1, void (*a2)(void), uint64_t a3, unint64_t *a4, uint64_t (*a5)(void), void (*a6)(void), unint64_t *a7, unint64_t *a8, void (*a9)(void), uint64_t (*a10)(__int128 *), uint64_t (*a11)(uint64_t), uint64_t (*a12)(void), uint64_t (*a13)(void), uint64_t a14, uint64_t (*a15)(void), uint64_t a16, uint64_t a17, unint64_t *a18, uint64_t (*a19)(void), uint64_t (*a20)(void), uint64_t a21)
{
  v199 = a7;
  v200 = a8;
  v191 = a4;
  v192 = a6;
  v202 = a5;
  v208 = a3;
  v209 = a2;
  v22 = v21;
  v207 = a1;
  v232 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v201 = type metadata accessor for UIHostingViewBase.Options();
  v197 = *(v201 - 1);
  MEMORY[0x1EEE9AC00](v201);
  v195 = &v190 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v190 - v26;
  v28 = type metadata accessor for UIHostingViewBase.Configuration();
  v205 = *(v28 - 8);
  v206 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v196 = &v190 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v204 = &v190 - v31;
  v32 = MEMORY[0x1E69E7D40];
  *(v21 + *((*MEMORY[0x1E69E7D40] & *v21) + 0x70)) = 0;
  v33 = *((*v32 & *v21) + 0x78);
  type metadata accessor for EventBindingManager();
  v34 = EventBindingManager.__allocating_init()();
  v198 = v33;
  *(v21 + v33) = v34;
  *(v21 + *((*v32 & *v21) + 0x80)) = 0;
  *(v21 + *((*v32 & *v21) + 0x88)) = 0;
  *(v21 + *((*v32 & *v21) + 0x90)) = 1;
  *(v21 + *((*v32 & *v21) + 0x98)) = 0;
  *(v21 + *((*v32 & *v21) + 0xA0)) = 0;
  v35 = v22 + *((*v32 & *v22) + 0xA8);
  *v35 = 0u;
  *(v35 + 1) = 0u;
  v35[32] = 1;
  v36 = v22 + *((*v32 & *v22) + 0xB0);
  *v36 = 0u;
  *(v36 + 1) = 0u;
  v36[32] = 1;
  *(v21 + *((*v32 & *v21) + 0xB8)) = 0;
  *(v21 + *((*v32 & *v21) + 0xC0)) = 0;
  *(v21 + *((*v32 & *v21) + 0xC8)) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + *((*v32 & *v21) + 0xD8)) = 0;
  v37 = v22 + *((*v32 & *v22) + 0xE8);
  *v37 = 0;
  v37[8] = 1;
  *(v21 + *((*v32 & *v21) + 0xF0)) = 0;
  *(v21 + *((*v32 & *v21) + 0xF8)) = 2;
  v38 = *((*v32 & *v21) + 0x100);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<Alert.Presentation>, &type metadata for Alert.Presentation, &protocol witness table for Alert.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v40 = v39;
  v41 = objc_allocWithZone(v39);
  *(v41 + *((*v32 & *v41) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v41 + *((*v32 & *v41) + 0x68)) = 0;
  *(v41 + *((*v32 & *v41) + 0x70)) = 0;
  *(v41 + *((*v32 & *v41) + 0x78)) = 0;
  EnvironmentValues.init()();
  v42 = v41 + *((*v32 & *v41) + 0x88);
  *v42 = 0u;
  *(v42 + 1) = 0u;
  *(v42 + 2) = 0u;
  *(v42 + 3) = 0u;
  *(v42 + 4) = 0u;
  *(v42 + 5) = 0u;
  *(v42 + 6) = 0u;
  *(v42 + 7) = 0u;
  *(v42 + 8) = 0u;
  *(v42 + 9) = 0u;
  *(v42 + 10) = 0u;
  *(v42 + 11) = 0u;
  *(v42 + 12) = 0u;
  *(v42 + 13) = 0u;
  *(v42 + 14) = 0u;
  *(v42 + 15) = 0u;
  *(v42 + 16) = 0u;
  *(v42 + 34) = 0;
  *(v41 + *((*v32 & *v41) + 0x90)) = 0;
  *(v41 + *((*v32 & *v41) + 0x98)) = 1;
  v214.receiver = v41;
  v214.super_class = v40;
  *(v21 + v38) = objc_msgSendSuper2(&v214, sel_init);
  v43 = *((*v32 & *v21) + 0x108);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for DeprecatedAlertBridge<ActionSheet.Presentation>, &type metadata for ActionSheet.Presentation, &protocol witness table for ActionSheet.Presentation, type metadata accessor for DeprecatedAlertBridge);
  v45 = v44;
  v46 = objc_allocWithZone(v44);
  *(v46 + *((*v32 & *v46) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v46 + *((*v32 & *v46) + 0x68)) = 0;
  *(v46 + *((*v32 & *v46) + 0x70)) = 0;
  *(v46 + *((*v32 & *v46) + 0x78)) = 0;
  EnvironmentValues.init()();
  v47 = v46 + *((*v32 & *v46) + 0x88);
  *v47 = 0u;
  *(v47 + 1) = 0u;
  *(v47 + 2) = 0u;
  *(v47 + 3) = 0u;
  *(v47 + 4) = 0u;
  *(v47 + 5) = 0u;
  *(v47 + 6) = 0u;
  *(v47 + 7) = 0u;
  *(v47 + 8) = 0u;
  *(v47 + 9) = 0u;
  *(v47 + 20) = 0;
  *(v46 + *((*v32 & *v46) + 0x90)) = 0;
  *(v46 + *((*v32 & *v46) + 0x98)) = 0;
  v213.receiver = v46;
  v213.super_class = v45;
  *(v22 + v43) = objc_msgSendSuper2(&v213, sel_init);
  *(v22 + *((*v32 & *v22) + 0x110)) = 1;
  v48 = *((*v32 & *v22) + 0x118);
  type metadata accessor for FocusBridge();
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  *(v49 + 32) = 0;
  *(v49 + 40) = 0;
  swift_unknownObjectWeakInit();
  v50 = MEMORY[0x1E69E7CC0];
  v51 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v49 + 48) = 0;
  *(v49 + 56) = v50;
  *(v49 + 64) = v51;
  EnvironmentValues.init()();
  *(v49 + 120) = 0u;
  *(v49 + 104) = 0u;
  *(v49 + 88) = 0u;
  v190 = xmmword_18CD6A6D0;
  *(v49 + 136) = xmmword_18CD6A6D0;
  swift_weakInit();
  *(v49 + 160) = 0;
  *(v49 + 168) = 0;
  *(v49 + 176) = 1;
  *(v22 + v48) = v49;
  v52 = *((*v32 & *v22) + 0x120);
  *(v22 + v52) = [objc_allocWithZone(type metadata accessor for DragAndDropBridge()) init];
  *(v22 + *((*v32 & *v22) + 0x128)) = 0;
  v53 = *((*v32 & *v22) + 0x130);
  *(v22 + v53) = [objc_allocWithZone(type metadata accessor for TooltipBridge()) init];
  v54 = *((*v32 & *v22) + 0x138);
  *(v22 + v54) = [objc_allocWithZone(type metadata accessor for EditMenuBridge()) init];
  *(v22 + *((*v32 & *v22) + 0x140)) = 0;
  *(v22 + *((*v32 & *v22) + 0x148)) = 0;
  v55 = *((*v32 & *v22) + 0x150);
  type metadata accessor for UIKitStatusBarBridge();
  v56 = swift_allocObject();
  *(v56 + 16) = 514;
  *(v56 + 24) = v50;
  *(v56 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v22 + v55) = v56;
  swift_weakInit();
  *(v22 + *((*v32 & *v22) + 0x160)) = 0;
  v57 = *((*v32 & *v22) + 0x168);
  *(v22 + v57) = [objc_allocWithZone(type metadata accessor for AVKitCaptureButtonBridge()) init];
  v58 = *((*v32 & *v22) + 0x170);
  *(v22 + v58) = [objc_allocWithZone(type metadata accessor for PencilEventsBridge()) init];
  *(v22 + *((*v32 & *v22) + 0x178)) = 0;
  *(v22 + *((*v32 & *v22) + 0x180)) = 0;
  v59 = *((*v32 & *v22) + 0x188);
  *(v22 + v59) = [objc_allocWithZone(type metadata accessor for ContextMenuBridge()) init];
  v60 = *((*v32 & *v22) + 0x190);
  type metadata accessor for InteractiveResizeBridge();
  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  *(v61 + 20) = 0;
  *(v61 + 24) = 0;
  v193 = v60;
  *(v22 + v60) = v61;
  *(v22 + *((*v32 & *v22) + 0x198)) = 0;
  v62 = *((*v32 & *v22) + 0x1A0);
  *(v22 + v62) = [objc_allocWithZone(type metadata accessor for UILargeContentViewerInteractionBridge()) init];
  *(v22 + *((*v32 & *v22) + 0x1A8)) = 0;
  *(v22 + *((*v32 & *v22) + 0x1B0)) = 0;
  *(v22 + *((*v32 & *v22) + 0x1B8)) = 0;
  *(v22 + *((*v32 & *v22) + 0x1C0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v22 + *((*v32 & *v22) + 0x1C8)) = 0;
  v63 = v22 + *((*v32 & *v22) + 0x1D0);
  *v63 = 0;
  v63[8] = 0;
  *(v63 + 1) = xmmword_18CD76350;
  swift_unknownObjectWeakInit();
  *(v22 + *((*v32 & *v22) + 0x1E0)) = 0;
  *(v22 + *((*v32 & *v22) + 0x1E8)) = 0;
  *(v22 + *((*v32 & *v22) + 0x1F0)) = 0;
  *(v22 + *((*v32 & *v22) + 0x1F8)) = 0;
  *(v22 + *((*v32 & *v22) + 0x200)) = 0;
  *(v22 + *((*v32 & *v22) + 0x60)) = v207;

  MEMORY[0x18D00ABE0](v64);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition();
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
  type metadata accessor for ScrollEdgeEffectTagModifierDefinition();
  static PlatformScrollEdgeEffectTagDefinition.setDefinition(_:)();
  type metadata accessor for PlatformItemsDefinition();
  type metadata accessor for UIKitPlatformItemsDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  v65 = static PlatformItemsDefinition.setDefinition(_:system:)();
  v66 = *(ObjectType + 1384);
  v194 = ObjectType;
  v66(&v217, v65);
  v67 = v217;
  type metadata accessor for PlatformViewDefinition();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  if (!static PlatformViewDefinition.for (_:)())
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v215) = v67;
  type metadata accessor for ViewGraphHost();
  swift_allocObject();
  v209();
  v203 = ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)();
  v209 = *(v203 + 88);

  v68 = v204;
  v69 = UIHostingViewBase.Configuration.init()();
  v70 = v195;
  MEMORY[0x18D001BC0](v69);
  v71 = UIHostingViewBase.Configuration.options.modify();
  specialized OptionSet<>.insert(_:)(v27, v70);
  v72 = *(v197 + 8);
  v73 = v201;
  v72(v70, v201);
  v72(v27, v73);
  v74 = v71(&v217, 0);
  v75 = v68;
  if (((*(v194 + 1408))(v74) & 1) == 0)
  {
    static UIHostingViewBase.Options.allowUnregisteredGeometryChanges.getter();
    v197 = UIHostingViewBase.Configuration.options.modify();
    specialized OptionSet<>.insert(_:)(v27, v70);
    v76 = v201;
    v72(v70, v201);
    v77 = v76;
    v75 = v68;
    v72(v27, v77);
    (v197)(&v217, 0);
  }

  (*(v205 + 16))(v196, v75, v206);
  v78 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

  *(v22 + *((*MEMORY[0x1E69E7D40] & *v22) + 0x68)) = UIHostingViewBase.init(viewGraph:configuration:)();

  *&v217 = specialized FocusViewGraph.init(graph:)(v79);
  *(&v217 + 1) = v80;
  LOWORD(v218) = v81 & 0x101;
  BYTE2(v218) = v82 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  *&v217 = 0;
  WORD4(v217) = 0;
  ViewGraph.append<A>(feature:)();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v83 = *MEMORY[0x1E698D3F8];
    v215 = 0uLL;
    *v216 = v83;
    memset(&v216[8], 0, 64);
    *&v216[72] = v190;
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature();
    ViewGraph.append<A>(feature:)();
    v220 = *&v216[32];
    v221 = *&v216[48];
    v222 = *&v216[64];
    v223 = *&v216[80];
    v217 = v215;
    v218 = *v216;
    v219 = *&v216[16];
    outlined destroy of ViewGraphBridgePropertiesFeature(&v217);
  }

  v201 = a12;
  if (_UIUpdateAdaptiveRateNeeded())
  {
    type metadata accessor for _UIHostingView<BarItemView>(0, v191, v202, v208, type metadata accessor for _UIHostingView.EnableVFDFeature);
    v192();
    ViewGraph.append<A>(feature:)();
  }

  AccessibilityViewGraph.init(graph:)(v84, &v215);
  aBlock = v215;
  v229 = *v216;
  v230 = *&v216[16];
  v231 = *&v216[32];
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v217 = aBlock;
  v218 = v229;
  v219 = v230;
  *&v220 = v231;
  outlined destroy of AccessibilityViewGraph(&v217);
  v85 = *(v22 + v193);
  v86 = AGSubgraphGetCurrent();
  swift_beginAccess();

  AGSubgraphSetCurrent();
  LOBYTE(aBlock) = 0;
  v87 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  *&aBlock = v85;
  DWORD2(aBlock) = v87;
  lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  v88 = MEMORY[0x1E69E7CC0];
  v89 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v229 + 1) = &type metadata for HoverEventDispatcher;
  *&v230 = lazy protocol witness table accessor for type HoverEventDispatcher and conformance HoverEventDispatcher();
  *&aBlock = v89;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v229 + 1) = &type metadata for PencilDoubleTapEventDispatcher;
  *&v230 = lazy protocol witness table accessor for type PencilDoubleTapEventDispatcher and conformance PencilDoubleTapEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *(&v229 + 1) = &type metadata for PencilSqueezeEventDispatcher;
  *&v230 = lazy protocol witness table accessor for type PencilSqueezeEventDispatcher and conformance PencilSqueezeEventDispatcher();

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v90 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_SayAC8KeyPressV7HandlerVGTt0g5Tf4g_n(v88);
  *(&v229 + 1) = &type metadata for KeyEventDispatcher;
  *&v230 = lazy protocol witness table accessor for type KeyEventDispatcher and conformance KeyEventDispatcher();
  *&aBlock = v90;

  EventBindingManager.addForwardedEventDispatcher(_:)();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  type metadata accessor for UIKitEventBindingBridge();
  swift_allocObject();

  v91 = UIKitEventBindingBridge.init(eventBindingManager:)();
  v92 = MEMORY[0x1E69E7D40];
  *(v22 + *((*MEMORY[0x1E69E7D40] & *v22) + 0xE0)) = v91;
  v93 = v202;
  v94 = v208;
  type metadata accessor for _UIHostingView<BarItemView>(0, v199, v202, v208, type metadata accessor for _UIHostingView);
  v212.receiver = v22;
  v212.super_class = v95;
  v96 = v92;
  v97 = objc_msgSendSuper2(&v212, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  type metadata accessor for _UIHostingView<BarItemView>(0, v200, v93, v94, type metadata accessor for _UIHostingView.HostViewGraph);
  a9();
  v98 = v97;
  ViewGraph.append<A>(feature:)();
  v99 = a10(&aBlock);
  v100 = (*((*v92 & *v98) + 0x5C0))(v99);
  v101 = a11(v100);
  UIHostingViewBase.setUp()();

  static RepresentableContextValues.current.getter();
  v102 = aBlock;
  if (aBlock != 1)
  {
    v103 = *(&aBlock + 1);
    v104 = v229;
    v105 = v230;
    if (aBlock)
    {

      specialized ViewRendererHost.setPreferenceBridge(_:)(v106);
    }

    *&aBlock = v102;
    *(&aBlock + 1) = v103;
    v229 = v104;
    LOBYTE(v230) = v105 & 1;
    RepresentableContextValues.environment.getter();
    v226 = v227;
    UIHostingViewBase.initialInheritedEnvironment.setter();
    outlined consume of RepresentableContextValues?(v102, v103, v104, *(&v104 + 1), v105);
  }

  specialized _UIHostingView.feedbackCache.getter();
  swift_unknownObjectWeakAssign();
  v107 = v98;

  v109 = *(v107 + *((*v96 & *v107) + 0x150));
  v110 = v201(v108);
  *(v109 + 40) = v110;
  swift_unknownObjectWeakAssign();

  UIKitStatusBarBridge.addPreferences(to:)();

  v202 = *((*v96 & *v107) + 0x188);
  *(*(v202 + v107) + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host + 8) = v110;
  swift_unknownObjectWeakAssign();
  v111 = *(v107 + *((*v96 & *v107) + 0x100));
  *(v111 + *((*v111 & *v96) + 0x60) + 8) = v110;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v112 = *(v107 + *((*v96 & *v107) + 0x108));
  *(v112 + *((*v112 & *v96) + 0x60) + 8) = v110;
  swift_unknownObjectWeakAssign();

  GraphHost.addPreference<A>(_:)();
  v113 = specialized _UIHostingView.sheetBridge.getter();
  if (v113)
  {
    *&v113[direct field offset for SheetBridge.host + 8] = v110;
    v114 = v113;
    swift_unknownObjectWeakAssign();
  }

  v115 = *v96 & *v107;
  v116 = *(v107 + *(v115 + 0x110));
  if (v116)
  {
    v117 = *((*v116 & *v96) + 0x210);
    v118 = v116;
    v117(v209);
    outlined consume of SheetBridge<SheetPreference.Key>??(v116);
    v115 = *v96 & *v107;
  }

  v119 = *(v107 + *(v115 + 280));
  v120 = a13();
  *(v119 + 32) = &protocol witness table for _UIHostingView<A>;
  *(v119 + 40) = v120;
  swift_unknownObjectWeakAssign();

  v121 = FocusBridge.host.getter();
  if (v121)
  {
    v123 = v121;
    v124 = v122;
    v125 = swift_getObjectType();
    (*(*(*(v124 + 8) + 8) + 8))(v125);

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v126 = *((*v96 & *v107) + 0x120);
  *(*(v107 + v126) + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host + 8) = v110;
  swift_unknownObjectWeakAssign();
  v127 = *(v107 + v126);
  v128 = &v127[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  v129 = *(v128 + 1);
  v130 = swift_getObjectType();
  v131 = *(*(v129 + 16) + 8);
  v132 = v127;
  LOBYTE(v130) = ViewGraphDelegate.shouldCreateUIInteractions.getter(v130, v131);
  swift_unknownObjectRelease();
  if (v130)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  GraphHost.addPreference<A>(_:)();
  *(*(v107 + *((*v96 & *v107) + 0x130)) + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host + 8) = v110;
  swift_unknownObjectWeakAssign();
  v133 = v107;
  GraphHost.addPreference<A>(_:)();
  *(*(v133 + *((*v96 & *v133) + 0x138)) + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host + 8) = v110;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  *(*(v133 + *((*v96 & *v133) + 0x170)) + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host + 8) = v110;
  swift_unknownObjectWeakAssign();
  GraphHost.addPreference<A>(_:)();
  v134 = *v96 & *v133;
  v208 = v97;
  v135 = *(v134 + 360);
  *(*(v133 + v135) + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host + 8) = v110;
  swift_unknownObjectWeakAssign();

  v136 = *(v133 + v135);
  v137 = &v136[OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_46;
  }

  v138 = *(v137 + 1);
  v139 = swift_getObjectType();
  v140 = *(v138 + 8);
  v141 = *(v140 + 8);
  v142 = v136;
  v141(v139, v140);
  swift_unknownObjectRelease();
  GraphHost.addPreference<A>(_:)();

  v143 = [v133 traitCollection];

  v144 = [v143 userInterfaceIdiom];
  v145 = MEMORY[0x1E69E7D40];
  if (v144 == 1 || (v146 = [v133 traitCollection], v147 = objc_msgSend(v146, sel_userInterfaceIdiom), v146, v147 == 6))
  {
    v148 = [objc_allocWithZone(type metadata accessor for PointerBridge()) init];
    *&v148[OBJC_IVAR____TtC7SwiftUI13PointerBridge_host + 8] = v110;
    swift_unknownObjectWeakAssign();
    GraphHost.addPreference<A>(_:)();
    v149 = *((*v145 & *v133) + 0x178);
    v150 = *(v133 + v149);
    *(v133 + v149) = v148;
  }

  v151 = *(v202 + v107);
  v152 = &v151[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_47:
    __break(1u);
  }

  v153 = *(v152 + 1);
  v154 = v151;

  v155 = swift_getObjectType();
  v156 = ViewGraphDelegate.shouldCreateUIInteractions.getter(v155, *(*(v153 + 16) + 8));
  swift_unknownObjectRelease();
  if (v156)
  {
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
  }

  v157 = *((*v145 & *v133) + 0x1A0);
  *(*(v133 + v157) + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host + 8) = v110;
  v158 = swift_unknownObjectWeakAssign();
  v159 = *(v133 + v157);
  MEMORY[0x1EEE9AC00](v158);
  v160 = v209;
  *(&v190 - 2) = v159;
  *(&v190 - 1) = v160;
  v161 = v133;
  v162 = v159;
  static Update.ensure<A>(_:)();

  v163 = *((*v145 & *v161) + 0x78);
  v164 = *(v161 + v163);
  v165 = a15();
  swift_beginAccess();
  *(v164 + 24) = v165;
  swift_unknownObjectWeakAssign();

  v166 = *(v161 + v163);
  v167 = *((*v145 & *v161) + 0xE0);
  swift_beginAccess();
  *(v166 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  v168 = *(v161 + v167);
  v169 = *(v168 + 32);

  if (v169)
  {
    [v161 addGestureRecognizer_];
  }

  [v161 addGestureRecognizer_];

  specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()();
  if (isAppleInternalBuild()())
  {
    v170 = [v161 window];
    if (v170)
    {
      v171 = v170;
      v172 = [v170 rootViewController];

      if (v172)
      {
        v173 = [v172 viewIfLoaded];

        if (v173)
        {

          if (v173 == v161)
          {
            v207 = a21;
            v202 = a20;
            v201 = a19;
            v199 = a18;
            v198 = a16;
            v224 = 0;
            v211[0] = 0;
            v174 = getpid();
            LODWORD(v200) = v174;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            strcpy(&aBlock, "NameLayerTree-");
            HIBYTE(aBlock) = -18;
            v210 = v174;
            v175 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x18D00C9B0](v175);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v176 = static OS_dispatch_queue.main.getter();
            v177 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&v230 = a17;
            *(&v230 + 1) = v177;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v229 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v229 + 1) = v199;
            v178 = _Block_copy(&aBlock);

            v179 = String.utf8CString.getter();

            notify_register_dispatch((v179 + 32), &v224, v176, v178);

            _Block_release(v178);

            v180 = static OS_dispatch_queue.main.getter();
            v181 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v182 = swift_allocObject();
            *(v182 + 16) = v200;
            *(v182 + 24) = v181;
            *&v230 = v202;
            *(&v230 + 1) = v182;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v229 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
            *(&v229 + 1) = v207;
            v183 = _Block_copy(&aBlock);

            notify_register_dispatch("NameLayerTree", v211, v180, v183);
            _Block_release(v183);

            v184 = v161 + *((*v145 & *v161) + 0xE8);
            *v184 = v224 | (v211[0] << 32);
            v184[8] = 0;
          }
        }
      }
    }
  }

  v185 = [objc_opt_self() defaultCenter];
  [v185 addObserver:v161 selector:sel_accessibilityFocusedElementDidChange_ name:*MEMORY[0x1E69DD8C0] object:0];
  v186 = one-time initialization token for didUpdateListLayout;
  v187 = v161;
  if (v186 != -1)
  {
    swift_once();
  }

  [v185 addObserver:v187 selector:sel_clarityUISettingDidChange_ name:static ClarityUI.didUpdateListLayout object:0];

  v188 = v204;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v225 = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v224, v187);
  swift_endAccess();
  if (static Spacing.hasSetupDefaultValue == 1)
  {
    (*(v205 + 8))(v188, v206);
  }

  else
  {
    static Spacing.hasSetupDefaultValue = 1;

    (*(v205 + 8))(v188, v206);
  }

  static Update.end()();
  return v187;
}

void specialized _UIHostingView.setLayerDebugName()()
{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>, type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>();
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance NSObject, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>);
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>();
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>> and conformance NSObject, type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>);
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>(0);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance NSObject, type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>);
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<EmptyView> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>(0, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph(&lazy protocol witness table cache variable for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>> and conformance NSObject, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>, type metadata accessor for _UIHostingView);
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>();
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>> and conformance NSObject, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>);
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<BoundInputsView> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>, lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView, &type metadata for BridgedPresentation.RootView, type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>, lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol, MEMORY[0x1E697FB28], type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<DocumentGroupsIntroRootView> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<ModifiedContent<AnyView, RootModifier>>();
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance NSObject, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, RootModifier>>);
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<_ViewList_View> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>();
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance NSObject, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>);
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>(0);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>> and conformance NSObject, type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>);
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>(0);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>> and conformance NSObject, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>);
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView, &type metadata for TabBarBottomAccessoryView, type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<InputAccessoryBar>, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<InputAccessoryBar> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<BarItemView> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<BridgedNavigationView.RootView> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<PreparedCompactColumn> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<MainContentView>, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, type metadata accessor for _UIHostingView);
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<MainContentView> and conformance NSObject();
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>();
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance NSObject, type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>);
    *(v6 + 32) = v0;
    v8 = v0;
    v9 = String.init(format:_:)();
    v11 = v10;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v9, v11);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v12 = v3;
    v13 = [v8 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v14 = specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v8, v2, specialized _UIHostingView.base.getter);
    MEMORY[0x18D00C9B0](v14);

    v15 = MEMORY[0x18D00C850](v12, v5);

    [v13 setName_];
  }
}

Swift::Bool_optional __swiftcall SwiftUIGlue2.isStatusBarHidden()()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScene);
  lazy protocol witness table accessor for type UIScene and conformance NSObject();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Collection.first.getter(v2, &lazy cache variable for type metadata for UIScene);

  if (!v3)
  {
    return 2;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 statusBarManager];
    if (v5)
    {
      v6 = v5;
      v7.value = [v5 isStatusBarHidden];
    }

    else
    {
      v7.value = 0;
    }

    return v7;
  }

  else
  {

    return 2;
  }
}

unint64_t lazy protocol witness table accessor for type UIScene and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UIScene and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UIScene and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIScene);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIScene and conformance NSObject);
  }

  return result;
}

uint64_t SwiftUIGlue2.makeRootView(base:rootFocusScope:)()
{
  static EdgeInsets.zero.getter();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  type metadata accessor for _ContiguousArrayStorage<SafeAreaInsets.Element>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SafeAreaInsets.Element>, MEMORY[0x1E697E490], MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_18CD63400;
  *(v8 + 32) = 1;
  *(v8 + 40) = v1;
  *(v8 + 48) = v3;
  *(v8 + 56) = v5;
  *(v8 + 64) = v7;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 136) = 1;
  outlined consume of ListItemTint?(1);
  v9 = MEMORY[0x1E6980330];
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for ModifiedContent<AnyView, _SafeAreaInsetsModifier>, MEMORY[0x1E6981910], MEMORY[0x1E6980330], MEMORY[0x1E697E830]);
  lazy protocol witness table accessor for type ModifiedContent<AnyView, _SafeAreaInsetsModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AnyView, _SafeAreaInsetsModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<AnyView, _SafeAreaInsetsModifier>, v9);

  return AnyView.init<A>(_:)();
}

void SwiftUIGlue2.codableAttachmentCellType.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void _s7SwiftUI0A7UIGlue2C18usingLayoutManager33_CE8713EF1F659E3933681417E097F9F6LL_2in13stringDrawing_xSo18NSAttributedStringC_So6CGSizeVAA18ResolvedStyledTextC0rP0CxSo08NSLayoutF0C_So15NSTextContainerCtXEtlFZ10Foundation3URLVSg_Tt4g503_s7a5UI0A7c68C7linkURLy10Foundation0E0VSgAA9CoreGlue2C17LinkURLParametersVFAHSo15wf6C_So15xY7CtXEfU_AA9CoreGlue2C17LinkURLParametersVAITf1nnnnc_n(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  swift_beginAccess();
  v14 = *(a2 + 128);
  v65 = *(a2 + 112);
  v66 = v14;
  v67 = *(a2 + 144);
  v68 = *(a2 + 160);
  v15 = *(a2 + 64);
  v61 = *(a2 + 48);
  v62 = v15;
  v16 = *(a2 + 96);
  v63 = *(a2 + 80);
  v64 = v16;
  v17 = *(a2 + 32);
  v59 = *(a2 + 16);
  v60 = v17;
  swift_beginAccess();
  outlined init with copy of TextLayoutProperties(&v59, &v49);
  ResolvedStyledText.scaleFactorOverride.getter();
  if (v18)
  {
    v55 = v65;
    v56 = v66;
    v57 = v67;
    v58 = v68;
    v51 = v61;
    v52 = v62;
    v53 = v63;
    v54 = v64;
    v49 = v59;
    v50 = v60;
    TextLayoutProperties.minScaleFactor.getter();
    if (v19 != 1.0)
    {
      ResolvedStyledText.linkURLMetrics(in:layoutMargins:)();
    }
  }

  v20 = v59;
  v21 = BYTE8(v59);
  if ((BYTE8(v59) & 1) != 0 || v59 != 1)
  {
    isa = NSAttributedString.replacingLineBreakModes(_:)(NSLineBreakByWordWrapping).super.isa;
  }

  else
  {
    isa = a1;
  }

  v23 = isa;
  v24 = NSAttributedString.scaled(by:)();

  v25 = [objc_allocWithZone(SwiftUITextStorage) initWithAttributedString_];
  v26 = [objc_allocWithZone(MEMORY[0x1E69DB7C0]) init];
  [v26 setUsesFontLeading_];
  [v26 setAllowsOriginalFontMetricsOverride_];
  [v25 addLayoutManager_];
  [v25 _setForceWordWrapping_];
  v27 = [objc_allocWithZone(MEMORY[0x1E69DB800]) initWithSize_];
  [v27 setLineFragmentPadding_];
  if (v20 <= 1)
  {
    v28 = 1;
  }

  else
  {
    v28 = v20;
  }

  if (v21)
  {
    v29 = 0;
  }

  else
  {
    v29 = v28;
  }

  [v27 setMaximumNumberOfLines_];
  [v27 setLineBreakMode_];
  [v26 addTextContainer_];
  v30 = *(a3 + 16);
  v49 = *a3;
  v50 = v30;
  *&v51 = *(a3 + 32);
  CoreGlue2.LinkURLParameters.point.getter();
  v31 = [v26 characterIndexForPoint:v27 inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:?];
  if ((v31 & 0x8000000000000000) != 0 || (v32 = v31, v31 == NSNotFound.getter()) || (v33 = [v26 glyphRangeForCharacterRange:v32 actualCharacterRange:{1, 0}], objc_msgSend(v26, sel_boundingRectForGlyphRange_inTextContainer_, v33, v34, v27), v36 = v35, v38 = v37, v40 = v39, v42 = v41, v43 = *(a3 + 16), v49 = *a3, v50 = v43, *&v51 = *(a3 + 32), CoreGlue2.LinkURLParameters.point.getter(), v69.x = v44, v69.y = v45, v70.origin.x = v36, v70.origin.y = v38, v70.size.width = v40, v70.size.height = v42, !CGRectContainsPoint(v70, v69)))
  {
    v46 = type metadata accessor for URL();
    (*(*(v46 - 8) + 56))(a5, 1, 1, v46);
  }

  else
  {
    if ([a4 attribute:*MEMORY[0x1E69DB670] atIndex:v32 effectiveRange:0])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
    }

    v49 = v47;
    v50 = v48;
    outlined init with copy of Any?(&v49, &v47);
    URL.init(urlValue:)();
    outlined destroy of Any?(&v49);
  }

  outlined destroy of TextLayoutProperties(&v59);

  outlined destroy of CoreGlue2.LinkURLParameters(a3);
}

void SwiftUIGlue2.linkURL(_:)(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v16 = *a1;
  v17 = v3;
  v4 = *(a1 + 4);
  v18 = v4;
  outlined init with copy of CoreGlue2.LinkURLParameters(&v16, v14);
  v5 = ResolvedStyledText.storage.getter();
  if (v5)
  {
    v6 = v5;
    v14[0] = v16;
    v14[1] = v17;
    v15 = v18;
    CoreGlue2.LinkURLParameters.size.getter();
    v8 = v7;
    v10 = v9;
    outlined init with copy of CoreGlue2.LinkURLParameters(&v16, v13);
    v11 = v6;
    _s7SwiftUI0A7UIGlue2C18usingLayoutManager33_CE8713EF1F659E3933681417E097F9F6LL_2in13stringDrawing_xSo18NSAttributedStringC_So6CGSizeVAA18ResolvedStyledTextC0rP0CxSo08NSLayoutF0C_So15NSTextContainerCtXEtlFZ10Foundation3URLVSg_Tt4g503_s7a5UI0A7c68C7linkURLy10Foundation0E0VSgAA9CoreGlue2C17LinkURLParametersVFAHSo15wf6C_So15xY7CtXEfU_AA9CoreGlue2C17LinkURLParametersVAITf1nnnnc_n(v11, v4, &v16, v11, a2, v8, v10);
    outlined destroy of CoreGlue2.LinkURLParameters(&v16);
  }

  else
  {
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
    outlined destroy of CoreGlue2.LinkURLParameters(&v16);
  }
}

void SwiftUIGlue2.configure(textContainer:exclusionPaths:)(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  v4 = *(a2 + 16);
  if (v4)
  {
    v53 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = a2 + 32;
    do
    {
      v9 = *(v5 + 16);
      v54[0] = *v5;
      v54[1] = v9;
      v55 = *(v5 + 32);
      v56[0] = v54[0];
      v56[1] = v9;
      v57 = v55;
      outlined init with copy of Path.Storage(v56, &v39);
      Path.roundedRect()();
      if (v52 == 2 || (v11 = v50, v10 = v51, v13 = v48, v12 = v49, v15 = v46, v14 = v47, v16 = v52 & 1, v52 &= 1u, (FixedRoundedRect.isUniform.getter() & 1) == 0))
      {
        v6 = objc_opt_self();
        v7 = Path.cgPath.getter();
        v8 = [v6 bezierPathWithCGPath_];
        outlined destroy of Path(v54);
      }

      else
      {
        v46 = v15;
        v47 = v14;
        v48 = v13;
        v49 = v12;
        v50 = v11;
        v51 = v10;
        v52 = v16;
        if (FixedRoundedRect.needsContinuousCorners.getter())
        {
          v17 = objc_opt_self();
          v46 = v15;
          v47 = v14;
          v48 = v13;
          v49 = v12;
          v50 = v11;
          v51 = v10;
          v52 = v16;
          FixedRoundedRect.rect.getter();
          v35 = v19;
          v37 = v18;
          v21 = v20;
          v23 = v22;
          v39 = v15;
          v40 = v14;
          v41 = v13;
          v42 = v12;
          v43 = v11;
          v44 = v10;
          v45 = v16;
          FixedRoundedRect.cornerSize.getter();
          v25 = [v17 bezierPathWithRoundedRect:v37 cornerRadius:{v35, v21, v23, v24}];
        }

        else
        {
          v26 = objc_allocWithZone(MEMORY[0x1E69DC728]);
          v46 = v15;
          v47 = v14;
          v48 = v13;
          v49 = v12;
          v50 = v11;
          v51 = v10;
          v52 = v16;
          FixedRoundedRect.rect.getter();
          v36 = v28;
          v38 = v27;
          v30 = v29;
          v32 = v31;
          v39 = v15;
          v40 = v14;
          v41 = v13;
          v42 = v12;
          v43 = v11;
          v44 = v10;
          v45 = v16;
          FixedRoundedRect.cornerSize.getter();
          [v26 initWithArcRoundedRectForSwiftUI:v38 cornerRadius:{v36, v30, v32, v33}];
        }

        outlined destroy of Path(v54);
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBezierPath);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setExclusionPaths_];
}

void *SwiftUIGlue2.makeSummarySymbolHost(isOn:font:foregroundColor:)(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  _IntelligenceSupport.AnimatingSummarySymbol.init(isOn:font:foregroundColor:)();
  v6 = objc_allocWithZone(type metadata accessor for _IntelligenceSupport.SummarySymbolHost());
  v7 = specialized _UIHostingView.init(rootView:)(v10, v11, v12);
  v8 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.safeAreaRegions.setter();

  return v7;
}

void *@objc SwiftUIGlue2.makeSummarySymbolHost(isOn:font:foregroundColor:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = a4;
  v7 = a5;
  v8 = v6;
  v9 = v7;
  _IntelligenceSupport.AnimatingSummarySymbol.init(isOn:font:foregroundColor:)();
  v10 = objc_allocWithZone(type metadata accessor for _IntelligenceSupport.SummarySymbolHost());
  v11 = specialized _UIHostingView.init(rootView:)(v14, v15, v16);
  v12 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.safeAreaRegions.setter();

  return v11;
}

uint64_t SwiftUIGlue2.platformColorProviderTag()()
{
  v0 = type metadata accessor for Color.ProviderTag.SwiftUIPlatformTag();
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag and conformance Color.ProviderTag.AnyPlatformTag, type metadata accessor for Color.ProviderTag.SwiftUIPlatformTag);
  return v0;
}

uint64_t SwiftUIGlue2.platformGradientProviderTag()()
{
  v0 = type metadata accessor for Gradient.ProviderTag.SwiftUIPlatformTag();
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag and conformance Gradient.ProviderTag.AnyPlatformTag, type metadata accessor for Gradient.ProviderTag.SwiftUIPlatformTag);
  return v0;
}

uint64_t SwiftUIGlue2.updateImageTextAttachment(in:image:)(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v27 = a2[8];
  v28 = v3;
  v29[0] = a2[10];
  *(v29 + 11) = *(a2 + 171);
  v4 = a2[5];
  v24 = a2[4];
  *v25 = v4;
  v5 = a2[7];
  *&v25[16] = a2[6];
  v26 = v5;
  v6 = a2[1];
  v20 = *a2;
  v21 = v6;
  v7 = a2[3];
  v22 = a2[2];
  v23 = v7;
  *&v12[0] = v2;
  v8 = CoreGlue2.TextAttachment.base.getter();
  objc_opt_self();
  v9 = swift_dynamicCastObjCClassUnconditional();
  v18 = v24;
  v19[0] = *v25;
  *(v19 + 12) = *&v25[12];
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  outlined init with copy of Image.Resolved(&v20, v12);
  outlined init with copy of GraphicsImage(&v20, v12);
  v10 = GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(1, 1, 0);
  v12[4] = v18;
  v13[0] = v19[0];
  *(v13 + 12) = *(v19 + 12);
  v12[0] = v14;
  v12[1] = v15;
  v12[2] = v16;
  v12[3] = v17;
  outlined destroy of GraphicsImage(v12);
  [v9 setImage_];

  return outlined destroy of Image.Resolved(&v20);
}

id SwiftUIGlue2.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SwiftUIGlue2.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

void specialized _UIHostingView.legacySetupKeyboardAvoidanceNotifications()()
{
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    static Semantics.v7.getter();
    if ((isLinkedOnOrAfter(_:)() & 1) == 0)
    {
      v1 = [objc_opt_self() defaultCenter];
      [v1 addObserver:v0 selector:sel_legacyKeyboardWillShowWithNotification_ name:*MEMORY[0x1E69DE080] object:0];
      [v1 addObserver:v0 selector:sel_legacyKeyboardWillHideWithNotification_ name:*MEMORY[0x1E69DE078] object:0];
      [v1 addObserver:v0 selector:sel_legacyKeyboardFrameWillChangeWithNotification_ name:*MEMORY[0x1E69DE068] object:0];
    }
  }
}

void specialized closure #1 in _UIHostingView.init(rootView:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int32) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void specialized closure #2 in _UIHostingView.init(rootView:)(int a1, int a2, uint64_t a3, void (*a4)(void))
{
  state64[4] = *MEMORY[0x1E69E9840];
  state64[0] = 0;
  notify_get_state(a1, state64);
  if ((a2 & 0x80000000) == 0 && state64[0] == a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      a4();
    }
  }
}

uint64_t specialized UIHostingViewDebugOptions.debugRepresentation<A>(for:)(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  v3 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    UIHostingViewBase.sceneActivationState.getter();
    if (v7)
    {
      v8 = 0xE300000000000000;
      v9 = 7104878;
    }

    else
    {
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v8 = v10;
    }

    _StringGuts.grow(_:)(40);

    v12 = a3(v11);
    v13 = UIHostingViewBase.updatesWillBeVisible.getter();

    if (v13)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v13)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    MEMORY[0x18D00C9B0](v14, v15);

    MEMORY[0x18D00C9B0](0x3D73617328, 0xE500000000000000);
    MEMORY[0x18D00C9B0](v9, v8);

    MEMORY[0x18D00C9B0](0x3D7266686926, 0xE600000000000000);
    v16 = UIHostingViewBase.isHiddenForReuse.getter();
    v17 = (v16 & 1) == 0;
    if (v16)
    {
      v18 = 1702195828;
    }

    else
    {
      v18 = 0x65736C6166;
    }

    if (v17)
    {
      v19 = 0xE500000000000000;
    }

    else
    {
      v19 = 0xE400000000000000;
    }

    MEMORY[0x18D00C9B0](v18, v19);

    MEMORY[0x18D00C9B0](0x3D66656926, 0xE500000000000000);
    v20 = UIHostingViewBase.isEnteringForeground.getter();
    v21 = (v20 & 1) == 0;
    if (v20)
    {
      v22 = 1702195828;
    }

    else
    {
      v22 = 0x65736C6166;
    }

    if (v21)
    {
      v23 = 0xE500000000000000;
    }

    else
    {
      v23 = 0xE400000000000000;
    }

    MEMORY[0x18D00C9B0](v22, v23);

    MEMORY[0x18D00C9B0](0x3D73636926, 0xE500000000000000);
    v24 = UIHostingViewBase.isCapturingSnapshots.getter();
    v25 = (v24 & 1) == 0;
    if (v24)
    {
      v26 = 1702195828;
    }

    else
    {
      v26 = 0x65736C6166;
    }

    if (v25)
    {
      v27 = 0xE500000000000000;
    }

    else
    {
      v27 = 0xE400000000000000;
    }

    MEMORY[0x18D00C9B0](v26, v27);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v29 = *(v5 + 2);
    v28 = *(v5 + 3);
    v4 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v5);
    }

    *(v5 + 2) = v4;
    v30 = &v5[16 * v29];
    *(v30 + 4) = 0x3D656C6269736976;
    *(v30 + 5) = 0xE800000000000000;
  }

  else
  {
    v4 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v4)
    {
      goto LABEL_38;
    }

    v5 = MEMORY[0x1E69E7CC0];
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v31 = v3;
  v32 = (v5 + 40);
  do
  {
    v33 = *(v32 - 1);
    v34 = *v32;

    MEMORY[0x18D00C9B0](v33, v34);
    MEMORY[0x18D00C9B0](41, 0xE100000000000000);

    v36 = *(v31 + 16);
    v35 = *(v31 + 24);
    if (v36 >= v35 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
    }

    *(v31 + 16) = v36 + 1;
    v37 = v31 + 16 * v36;
    *(v37 + 32) = 40;
    *(v37 + 40) = 0xE100000000000000;
    v32 += 2;
    --v4;
  }

  while (v4);
LABEL_38:

  type metadata accessor for _ContiguousArrayStorage<SafeAreaInsets.Element>(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v38 = BidirectionalCollection<>.joined(separator:)();

  return v38;
}

{
  v3 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    UIHostingViewBase.sceneActivationState.getter();
    if (v7)
    {
      v8 = 0xE300000000000000;
      v9 = 7104878;
    }

    else
    {
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v8 = v10;
    }

    _StringGuts.grow(_:)(40);

    v12 = a3(v11);
    v13 = UIHostingViewBase.updatesWillBeVisible.getter();

    if (v13)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v13)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    MEMORY[0x18D00C9B0](v14, v15);

    MEMORY[0x18D00C9B0](0x3D73617328, 0xE500000000000000);
    MEMORY[0x18D00C9B0](v9, v8);

    MEMORY[0x18D00C9B0](0x3D7266686926, 0xE600000000000000);
    v16 = UIHostingViewBase.isHiddenForReuse.getter();
    v17 = (v16 & 1) == 0;
    if (v16)
    {
      v18 = 1702195828;
    }

    else
    {
      v18 = 0x65736C6166;
    }

    if (v17)
    {
      v19 = 0xE500000000000000;
    }

    else
    {
      v19 = 0xE400000000000000;
    }

    MEMORY[0x18D00C9B0](v18, v19);

    MEMORY[0x18D00C9B0](0x3D66656926, 0xE500000000000000);
    v20 = UIHostingViewBase.isEnteringForeground.getter();
    v21 = (v20 & 1) == 0;
    if (v20)
    {
      v22 = 1702195828;
    }

    else
    {
      v22 = 0x65736C6166;
    }

    if (v21)
    {
      v23 = 0xE500000000000000;
    }

    else
    {
      v23 = 0xE400000000000000;
    }

    MEMORY[0x18D00C9B0](v22, v23);

    MEMORY[0x18D00C9B0](0x3D73636926, 0xE500000000000000);
    v24 = UIHostingViewBase.isCapturingSnapshots.getter();
    v25 = (v24 & 1) == 0;
    if (v24)
    {
      v26 = 1702195828;
    }

    else
    {
      v26 = 0x65736C6166;
    }

    if (v25)
    {
      v27 = 0xE500000000000000;
    }

    else
    {
      v27 = 0xE400000000000000;
    }

    MEMORY[0x18D00C9B0](v26, v27);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v29 = *(v5 + 2);
    v28 = *(v5 + 3);
    v4 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v5);
    }

    *(v5 + 2) = v4;
    v30 = &v5[16 * v29];
    *(v30 + 4) = 0x3D656C6269736976;
    *(v30 + 5) = 0xE800000000000000;
  }

  else
  {
    v4 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v4)
    {
      goto LABEL_38;
    }

    v5 = MEMORY[0x1E69E7CC0];
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v31 = v3;
  v32 = (v5 + 40);
  do
  {
    v33 = *(v32 - 1);
    v34 = *v32;

    MEMORY[0x18D00C9B0](v33, v34);
    MEMORY[0x18D00C9B0](41, 0xE100000000000000);

    v36 = *(v31 + 16);
    v35 = *(v31 + 24);
    if (v36 >= v35 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
    }

    *(v31 + 16) = v36 + 1;
    v37 = v31 + 16 * v36;
    *(v37 + 32) = 40;
    *(v37 + 40) = 0xE100000000000000;
    v32 += 2;
    --v4;
  }

  while (v4);
LABEL_38:

  type metadata accessor for _ContiguousArrayStorage<SafeAreaInsets.Element>(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v38 = BidirectionalCollection<>.joined(separator:)();

  return v38;
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5)
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x18D00E760](a1, a2, v9);
      type metadata accessor for NSObject(0, a5);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for NSObject(0, a5);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v5 = v17;
    v10 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v11 = -1 << *(a4 + 32);
    v8 = v10 & ~v11;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(a4 + 48) + 8 * v8);
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v12;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}

unint64_t lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput()
{
  result = lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput;
  if (!lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput;
  if (!lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput;
  if (!lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput;
  if (!lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput;
  if (!lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput;
  if (!lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput;
  if (!lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput;
  if (!lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature()
{
  result = lazy protocol witness table cache variable for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature;
  if (!lazy protocol witness table cache variable for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractiveResizeChangeViewGraphFeature and conformance InteractiveResizeChangeViewGraphFeature);
  }

  return result;
}

void partial apply for specialized closure #1 in _UIHostingView.init(rootView:)(uint64_t a1)
{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #1 in _UIHostingView.init(rootView:)(a1, v1, specialized _UIHostingView.setLayerDebugName());
}

void partial apply for specialized closure #2 in _UIHostingView.init(rootView:)(int a1)
{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

{
  specialized closure #2 in _UIHostingView.init(rootView:)(a1, *(v1 + 16), *(v1 + 24), specialized _UIHostingView.setLayerDebugName());
}

unint64_t lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature()
{
  result = lazy protocol witness table cache variable for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature;
  if (!lazy protocol witness table cache variable for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphBridgePropertiesFeature and conformance ViewGraphBridgePropertiesFeature);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<CVarArg>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>)
  {
    type metadata accessor for CVarArg();
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(255, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.HostViewGraph, type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.HostViewGraph(uint64_t a1)
{
  _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.HostViewGraph, type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>)
  {
    _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(255, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>)
  {
    _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(255, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>)
  {
    _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(255, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>)
  {
    _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(255, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>)
  {
    _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(255, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<TableRowView, CollectionViewCellModifier>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
    v7 = v6;
    v8 = lazy protocol witness table accessor for type ModifiedContent<TableRowView, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(255, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.EnableVFDFeature, type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance NSObject)
  {
    _s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVyAA08TableRowD0VAA010CollectionD12CellModifierVGGMaTm_0(255, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BarItemView> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance NSObject)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BarItemView> and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar()
{
  result = lazy protocol witness table cache variable for type InputAccessoryBar and conformance InputAccessoryBar;
  if (!lazy protocol witness table cache variable for type InputAccessoryBar and conformance InputAccessoryBar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InputAccessoryBar and conformance InputAccessoryBar);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<InputAccessoryBar>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<InputAccessoryBar>.HostViewGraph, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<InputAccessoryBar>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<InputAccessoryBar>.HostViewGraph, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<InputAccessoryBar>, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<InputAccessoryBar>, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<InputAccessoryBar>, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<InputAccessoryBar>, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<InputAccessoryBar>, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<InputAccessoryBar>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<InputAccessoryBar>.EnableVFDFeature, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<InputAccessoryBar> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance NSObject)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<InputAccessoryBar>, lazy protocol witness table accessor for type InputAccessoryBar and conformance InputAccessoryBar, &type metadata for InputAccessoryBar, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<InputAccessoryBar> and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>, lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView, &type metadata for BridgedPresentation.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>, lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView, &type metadata for BridgedPresentation.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>, lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView, &type metadata for BridgedPresentation.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>, lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView, &type metadata for BridgedPresentation.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>, lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView, &type metadata for BridgedPresentation.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView()
{
  result = lazy protocol witness table cache variable for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView;
  if (!lazy protocol witness table cache variable for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>.HostViewGraph, lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView, &type metadata for BridgedPresentation.RootView, type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<BridgedPresentation.RootView>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>.HostViewGraph, lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView, &type metadata for BridgedPresentation.RootView, type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>.EnableVFDFeature, lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView, &type metadata for BridgedPresentation.RootView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance NSObject)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>, lazy protocol witness table accessor for type BridgedPresentation.RootView and conformance BridgedPresentation.RootView, &type metadata for BridgedPresentation.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance NSObject);
  }

  return result;
}

void type metadata accessor for ModifiedContent<AnyView, DocumentBaseModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<AnyView, DocumentBaseModifier>)
  {
    type metadata accessor for DocumentBaseModifier(255);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<AnyView, DocumentBaseModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, DocumentBaseModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AnyView, DocumentBaseModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AnyView, DocumentBaseModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<AnyView, DocumentBaseModifier>();
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type DocumentBaseModifier and conformance DocumentBaseModifier, type metadata accessor for DocumentBaseModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AnyView, DocumentBaseModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView()
{
  result = lazy protocol witness table cache variable for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView;
  if (!lazy protocol witness table cache variable for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<DocumentGroupsIntroRootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>.HostViewGraph, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<DocumentGroupsIntroRootView>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>.HostViewGraph, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<DocumentGroupsIntroRootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>.EnableVFDFeature, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<DocumentGroupsIntroRootView> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance NSObject)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<DocumentGroupsIntroRootView>, lazy protocol witness table accessor for type DocumentGroupsIntroRootView and conformance DocumentGroupsIntroRootView, &type metadata for DocumentGroupsIntroRootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<DocumentGroupsIntroRootView> and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MainContentView and conformance MainContentView()
{
  result = lazy protocol witness table cache variable for type MainContentView and conformance MainContentView;
  if (!lazy protocol witness table cache variable for type MainContentView and conformance MainContentView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MainContentView and conformance MainContentView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<MainContentView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<MainContentView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<MainContentView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<MainContentView>.HostViewGraph, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<MainContentView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<MainContentView>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<MainContentView>.HostViewGraph, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<MainContentView>, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<MainContentView>, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<MainContentView>, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<MainContentView>, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<MainContentView>, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<MainContentView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<MainContentView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<MainContentView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<MainContentView>.EnableVFDFeature, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<MainContentView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<MainContentView> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance NSObject)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<MainContentView>, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<MainContentView> and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance NSObject)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView, &type metadata for TabBarBottomAccessoryView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView, &type metadata for TabBarBottomAccessoryView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView, &type metadata for TabBarBottomAccessoryView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView, &type metadata for TabBarBottomAccessoryView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView, &type metadata for TabBarBottomAccessoryView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView()
{
  result = lazy protocol witness table cache variable for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView;
  if (!lazy protocol witness table cache variable for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>.HostViewGraph, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView, &type metadata for TabBarBottomAccessoryView, type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<TabBarBottomAccessoryView>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>.HostViewGraph, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView, &type metadata for TabBarBottomAccessoryView, type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>.EnableVFDFeature, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView, &type metadata for TabBarBottomAccessoryView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<TabBarBottomAccessoryView> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance NSObject)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabBarBottomAccessoryView>, lazy protocol witness table accessor for type TabBarBottomAccessoryView and conformance TabBarBottomAccessoryView, &type metadata for TabBarBottomAccessoryView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabBarBottomAccessoryView> and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>.HostViewGraph, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<TabItem.RootView>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>.HostViewGraph, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>.EnableVFDFeature, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance NSObject)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<TabItem.RootView> and conformance NSObject);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, MEMORY[0x1E6981910], &type metadata for DocumentSceneRootBoxModifier, MEMORY[0x1E697E830]);
    type metadata accessor for DocumentBaseModifier(255);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>();
    lazy protocol witness table accessor for type ModifiedContent<AnyView, DocumentSceneRootBoxModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AnyView, DocumentSceneRootBoxModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, &type metadata for DocumentSceneRootBoxModifier, lazy protocol witness table accessor for type DocumentSceneRootBoxModifier and conformance DocumentSceneRootBoxModifier);
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type DocumentBaseModifier and conformance DocumentBaseModifier, type metadata accessor for DocumentBaseModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DocumentSceneRootBoxModifier and conformance DocumentSceneRootBoxModifier()
{
  result = lazy protocol witness table cache variable for type DocumentSceneRootBoxModifier and conformance DocumentSceneRootBoxModifier;
  if (!lazy protocol witness table cache variable for type DocumentSceneRootBoxModifier and conformance DocumentSceneRootBoxModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentSceneRootBoxModifier and conformance DocumentSceneRootBoxModifier);
  }

  return result;
}

void type metadata accessor for _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BoundInputsView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>.HostViewGraph, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<BoundInputsView>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>.HostViewGraph, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BoundInputsView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>.EnableVFDFeature, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BoundInputsView> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance NSObject)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BoundInputsView> and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<_ViewList_View>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>.HostViewGraph, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<_ViewList_View>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>.HostViewGraph, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<_ViewList_View>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>.EnableVFDFeature, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<_ViewList_View> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance NSObject)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance NSObject);
  }

  return result;
}

uint64_t outlined init with take of Decodable & Encodable & Hashable(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>, lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol, MEMORY[0x1E697FB28], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>, lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol, MEMORY[0x1E697FB28], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>, lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol, MEMORY[0x1E697FB28], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>, lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol, MEMORY[0x1E697FB28], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>, lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol, MEMORY[0x1E697FB28], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol()
{
  result = lazy protocol witness table cache variable for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol;
  if (!lazy protocol witness table cache variable for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.HostViewGraph, lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol, MEMORY[0x1E697FB28], type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.HostViewGraph, lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol, MEMORY[0x1E697FB28], type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.EnableVFDFeature, lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol, MEMORY[0x1E697FB28], type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance NSObject)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol>, lazy protocol witness table accessor for type _IntelligenceSupport.AnimatingSummarySymbol and conformance _IntelligenceSupport.AnimatingSummarySymbol, MEMORY[0x1E697FB28], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<_IntelligenceSupport.AnimatingSummarySymbol> and conformance NSObject);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<SafeAreaInsets.Element>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _UIHostingView<EmptyView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<EmptyView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<EmptyView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<EmptyView>.HostViewGraph, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<EmptyView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<EmptyView>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<EmptyView>.HostViewGraph, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<EmptyView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<EmptyView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<EmptyView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<EmptyView>.EnableVFDFeature, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<EmptyView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<EmptyView> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance NSObject)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<EmptyView> and conformance NSObject);
  }

  return result;
}

void type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(255, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0);
    v7 = v6;
    v8 = lazy protocol witness table accessor for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>(&lazy protocol witness table cache variable for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.rootViewIdentifier>>.0);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>()
{
  if (!lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>)
  {
    type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(255, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0);
    lazy protocol witness table accessor for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>(&lazy protocol witness table cache variable for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0> and conformance TestIDView<A, B>, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0);
    v0 = type metadata accessor for _UIHostingView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>);
    }
  }
}

void type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.HostViewGraph()
{
  if (!lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.HostViewGraph)
  {
    type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(255, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0);
    lazy protocol witness table accessor for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>(&lazy protocol witness table cache variable for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0> and conformance TestIDView<A, B>, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0);
    v0 = type metadata accessor for _UIHostingView.HostViewGraph();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.HostViewGraph);
    }
  }
}

uint64_t outlined destroy of TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.EnableVFDFeature()
{
  if (!lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.EnableVFDFeature)
  {
    type metadata accessor for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>(255, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0);
    lazy protocol witness table accessor for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>(&lazy protocol witness table cache variable for type TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0> and conformance TestIDView<A, B>, &lazy cache variable for type metadata for TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>, &lazy cache variable for type metadata for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0);
    v0 = type metadata accessor for _UIHostingView.EnableVFDFeature();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.EnableVFDFeature);
    }
  }
}

void type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>.EnableVFDFeature(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>();
    v7 = v6;
    v8 = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0> and conformance TestIDView<A, B>, type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t outlined destroy of _UIHostingView<TestIDView<_TestApp.RootView, <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0>>.HostViewGraph(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView()
{
  result = lazy protocol witness table cache variable for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView;
  if (!lazy protocol witness table cache variable for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BridgedNavigationView.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>.HostViewGraph, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<BridgedNavigationView.RootView>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>.HostViewGraph, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BridgedNavigationView.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>.EnableVFDFeature, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<BridgedNavigationView.RootView> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance NSObject)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<BridgedNavigationView.RootView> and conformance NSObject);
  }

  return result;
}

void type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>.HostViewGraph()
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>.HostViewGraph)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, MEMORY[0x1E697D9F0], &type metadata for ListTableCellModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewList_View, ListTableCellModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, &type metadata for ListTableCellModifier, lazy protocol witness table accessor for type ListTableCellModifier and conformance ListTableCellModifier);
    v0 = type metadata accessor for _UIHostingView.HostViewGraph();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>.HostViewGraph);
    }
  }
}

uint64_t outlined destroy of ModifiedContent<_ViewList_View, ListTableCellModifier>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, MEMORY[0x1E697D9F0], &type metadata for ListTableCellModifier, MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>.EnableVFDFeature()
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>.EnableVFDFeature)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, MEMORY[0x1E697D9F0], &type metadata for ListTableCellModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewList_View, ListTableCellModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, &type metadata for ListTableCellModifier, lazy protocol witness table accessor for type ListTableCellModifier and conformance ListTableCellModifier);
    v0 = type metadata accessor for _UIHostingView.EnableVFDFeature();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>.EnableVFDFeature);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>, &type metadata for TableViewListHeaderFooterContent, MEMORY[0x1E697E108], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>, &type metadata for TableViewListHeaderFooterContent, MEMORY[0x1E697E108], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for _UIHostingView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>);
    }
  }
}

void type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>.HostViewGraph()
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>.HostViewGraph)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>, &type metadata for TableViewListHeaderFooterContent, MEMORY[0x1E697E108], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for _UIHostingView.HostViewGraph();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>.HostViewGraph);
    }
  }
}

void type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>.EnableVFDFeature()
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>.EnableVFDFeature)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>, &type metadata for TableViewListHeaderFooterContent, MEMORY[0x1E697E108], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for _UIHostingView.EnableVFDFeature();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>.EnableVFDFeature);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn()
{
  result = lazy protocol witness table cache variable for type PreparedCompactColumn and conformance PreparedCompactColumn;
  if (!lazy protocol witness table cache variable for type PreparedCompactColumn and conformance PreparedCompactColumn)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreparedCompactColumn and conformance PreparedCompactColumn);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<PreparedCompactColumn>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph;
  if (!lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>.HostViewGraph, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for _UIHostingView.HostViewGraph);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn>.HostViewGraph and conformance _UIHostingView<A>.HostViewGraph);
  }

  return result;
}

uint64_t outlined destroy of _UIHostingView<PreparedCompactColumn>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for _UIHostingView<BarItemView>(0, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>.HostViewGraph, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance _UIHostingView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<PreparedCompactColumn>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>.EnableVFDFeature, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<PreparedCompactColumn> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance NSObject)
  {
    type metadata accessor for _UIHostingView<BarItemView>(255, &lazy cache variable for type metadata for _UIHostingView<PreparedCompactColumn>, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<PreparedCompactColumn> and conformance NSObject);
  }

  return result;
}

void *specialized Array.append<A>(contentsOf:)(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for ()();
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for NSAttributedStringKey(0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v67 = type metadata accessor for IntelligenceElement();
  v4 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSay7SwiftUI15AnyFontModifierCGMaTm_1(0, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v66 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v52 - v10;
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 16);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v6;
  if (!isUniquelyReferenced_nonNull_native || (v20 = v16[3] >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = v16[3] >> 1;
  }

  v22 = v16[2];
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = (v20 - v22);
  v24 = specialized Sequence._copyContents(initializing:)(&v68, v16 + v18 + v17 * v22, v20 - v22, a1);
  if (v24 < v15)
  {
    goto LABEL_16;
  }

  if (v24)
  {
    v25 = v16[2];
    v26 = __OFADD__(v25, v24);
    v27 = v25 + v24;
    if (v26)
    {
      __break(1u);
LABEL_26:
      v58 = (v4 + 32);
      v54 = (v4 + 16);
      v55 = v4 + 56;
      v53 = (v4 + 8);
      v36 = v67;
      v32 = v64;
      do
      {
        outlined destroy of TableRowID?(v32, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720], _sSay7SwiftUI15AnyFontModifierCGMaTm_1);
        v40 = v16[3];
        v41 = v40 >> 1;
        if ((v40 >> 1) < v23 + 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v40 > 1, v23 + 1, 1, v16);
          v41 = v16[3] >> 1;
        }

        v42 = v36;
        v43 = v66;
        outlined init with copy of TableRowID?(v14, v66, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720], _sSay7SwiftUI15AnyFontModifierCGMaTm_1);
        if (v60(v43, 1, v42) != 1)
        {
          v4 = *v58;
          if (v23 <= v41)
          {
            v46 = v41;
          }

          else
          {
            v46 = v23;
          }

          v59 = v46;
          v63 = v16 + v18 + v17 * v23;
          v45 = v66;
          v44 = v67;
          v57 = v4;
          while (1)
          {
            v47 = v44;
            v48 = v65;
            (v4)(v65, v45, v47);
            v62 = v23;
            if (v59 == v23)
            {
              v37 = v48;
              v38 = v67;
              (*v53)(v37, v67);
              v39 = v59;
              v23 = v59;
              v36 = v38;
              goto LABEL_28;
            }

            v23 = &lazy cache variable for type metadata for IntelligenceElement?;
            outlined destroy of TableRowID?(v14, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720], _sSay7SwiftUI15AnyFontModifierCGMaTm_1);
            (v4)(v63, v48, v67);
            if (v61)
            {
              v49 = v61 - 1;
              if (v61 - 1 >= *(v68 + 16))
              {
                __break(1u);
LABEL_46:
                v29 = v67;
                v56 = *(v2 + 56);
                v56(v14, 1, 1, v67, v12);
                v61 = 0;
LABEL_22:
                v30 = v64;
                outlined init with copy of TableRowID?(v14, v64, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720], _sSay7SwiftUI15AnyFontModifierCGMaTm_1);
                v31 = *(v2 + 48);
                v2 += 48;
                v60 = v31;
                if (v31(v30, 1, v29) == 1)
                {
                  v32 = v64;
                  goto LABEL_24;
                }

                goto LABEL_26;
              }

              --v61;
              v44 = v67;
              (*v54)(v14, v68 + v18 + v49 * v17, v67);
              v50 = 0;
            }

            else
            {
              v61 = 0;
              v50 = 1;
              v44 = v67;
            }

            (v56)(v14, v50, 1, v44);
            v45 = v66;
            outlined init with copy of TableRowID?(v14, v66, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720], _sSay7SwiftUI15AnyFontModifierCGMaTm_1);
            v51 = v60(v45, 1, v44);
            v63 += v17;
            v23 = (v62 + 1);
            v4 = v57;
            if (v51 == 1)
            {
              goto LABEL_33;
            }
          }
        }

        v45 = v66;
        v44 = v67;
LABEL_33:
        outlined destroy of TableRowID?(v45, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720], _sSay7SwiftUI15AnyFontModifierCGMaTm_1);
        v39 = v23;
        v36 = v44;
LABEL_28:
        v16[2] = v39;
        v32 = v64;
        outlined init with copy of TableRowID?(v14, v64, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720], _sSay7SwiftUI15AnyFontModifierCGMaTm_1);
      }

      while (v60(v32, 1, v36) != 1);
LABEL_24:
      v33 = MEMORY[0x1E69DBC20];
      v34 = v32;
      v35 = MEMORY[0x1E69E6720];
      outlined destroy of TableRowID?(v14, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720], _sSay7SwiftUI15AnyFontModifierCGMaTm_1);

      outlined destroy of TableRowID?(v34, &lazy cache variable for type metadata for IntelligenceElement?, v33, v35, _sSay7SwiftUI15AnyFontModifierCGMaTm_1);
      goto LABEL_14;
    }

    v16[2] = v27;
  }

  if (v24 != v23)
  {

LABEL_14:
    *v1 = v16;
    return;
  }

LABEL_17:
  v23 = v16[2];
  if (!v69)
  {
    goto LABEL_46;
  }

  v28 = v69 - 1;
  if (__OFSUB__(v69, 1))
  {
    __break(1u);
  }

  else if ((v28 & 0x8000000000000000) == 0)
  {
    if (v28 < *(v68 + 16))
    {
      v61 = v69 - 1;
      v29 = v67;
      (*(v2 + 16))(v14, v68 + v18 + v28 * v17, v67, v12);
      v56 = *(v2 + 56);
      (v56)(v14, 0, 1, v29);
      goto LABEL_22;
    }

    goto LABEL_49;
  }

  __break(1u);
LABEL_49:
  __break(1u);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t (*a2)(void), void (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  a3(0);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, v4);
  v12 = v10 + v4;
  if (!v11)
  {
    *(v5 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t (*a2)(void), unint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  type metadata accessor for CVarArg(0, a3);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, v4);
  v12 = v10 + v4;
  if (!v11)
  {
    *(v5 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t static PreviewModifier<>.makeSharedContext()()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static PreviewModifier<>.makeSharedContext(), v2, v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static PreviewTrait<A>.modifier<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _ContiguousArrayStorage<PreviewModifier>();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18CD63400;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v6 + 32));
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  lazy protocol witness table accessor for type PreviewModifierTrait and conformance PreviewModifierTrait();
  type metadata accessor for Preview.ViewTraits();
  return PreviewTrait.init(_:)();
}

void type metadata accessor for _ContiguousArrayStorage<PreviewModifier>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<PreviewModifier>)
  {
    type metadata accessor for CVarArg(255, &lazy cache variable for type metadata for PreviewModifier);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PreviewModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PreviewModifierTrait and conformance PreviewModifierTrait()
{
  result = lazy protocol witness table cache variable for type PreviewModifierTrait and conformance PreviewModifierTrait;
  if (!lazy protocol witness table cache variable for type PreviewModifierTrait and conformance PreviewModifierTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewModifierTrait and conformance PreviewModifierTrait);
  }

  return result;
}

uint64_t PreviewModifierViewModifier.modifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for NestedDynamicProperties();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, v2, v6);
  return (*(*(v4 - 8) + 32))(a2, v8, v4);
}

uint64_t PreviewModifierViewModifier.init(modifier:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  NestedDynamicProperties.init(wrappedValue:)(a1, a3, a4);
  v6 = *(type metadata accessor for PreviewModifierViewModifier() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 32);

  return v8(a4 + v6, a2, AssociatedTypeWitness);
}

uint64_t PreviewModifierViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v5 = *(a2 + 16);
  v33 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v30 = &v28 - v11;
  swift_getWitnessTable();
  v12 = type metadata accessor for _ViewModifier_Content();
  v31 = v12;
  v13 = lazy protocol witness table accessor for type PreviewModifierContent and conformance PreviewModifierContent();
  v32 = v13;
  WitnessTable = swift_getWitnessTable();
  v41 = &type metadata for PreviewModifierContent;
  v42 = v12;
  v43 = v13;
  v44 = WitnessTable;
  type metadata accessor for StaticSourceWriter();
  v14 = type metadata accessor for ModifiedContent();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28 - v19;
  v21 = PreviewModifierViewModifier.modifier.getter(a2, v7);
  v22 = v3 + *(a2 + 36);
  v23 = v30;
  (*(v9 + 40))(v21, v22, v5, v9);
  (*(v33 + 8))(v7, v5);
  v37 = v5;
  v38 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  View.viewAlias<A, B>(_:_:)(&type metadata for PreviewModifierContent, partial apply for closure #1 in PreviewModifierViewModifier.body(content:), v36, AssociatedTypeWitness, &type metadata for PreviewModifierContent, v31, AssociatedConformanceWitness);
  (*(v34 + 8))(v23, AssociatedTypeWitness);
  v39 = AssociatedConformanceWitness;
  v40 = &protocol witness table for StaticSourceWriter<A, B>;
  v25 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v17, v14, v25);
  v26 = *(v15 + 8);
  v26(v17, v14);
  static ViewBuilder.buildExpression<A>(_:)(v20, v14, v25);
  return (v26)(v20, v14);
}

unint64_t lazy protocol witness table accessor for type PreviewModifierContent and conformance PreviewModifierContent()
{
  result = lazy protocol witness table cache variable for type PreviewModifierContent and conformance PreviewModifierContent;
  if (!lazy protocol witness table cache variable for type PreviewModifierContent and conformance PreviewModifierContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewModifierContent and conformance PreviewModifierContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreviewModifierContent and conformance PreviewModifierContent;
  if (!lazy protocol witness table cache variable for type PreviewModifierContent and conformance PreviewModifierContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewModifierContent and conformance PreviewModifierContent);
  }

  return result;
}

uint64_t closure #1 in PreviewModifierViewModifier.body(content:)()
{
  type metadata accessor for PreviewModifierViewModifier();
  swift_getWitnessTable();
  v0 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable();
  v2 = static ViewBuilder.buildExpression<A>(_:)(WitnessTable, v0, WitnessTable);

  return static ViewBuilder.buildExpression<A>(_:)(v2, v0, WitnessTable);
}

uint64_t PreviewModifierTrait.value.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> static PreviewModifierTrait.combine(_:_:)()
{

  specialized Array.append<A>(contentsOf:)(v0, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &lazy cache variable for type metadata for PreviewModifier);
}

unint64_t instantiation function for generic protocol witness table for PreviewModifierContent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PreviewModifierContent and conformance PreviewModifierContent();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static PreviewTraitProtocol.combine(_:_:) in conformance PreviewModifierTrait@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;

  result = specialized Array.append<A>(contentsOf:)(v3, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &lazy cache variable for type metadata for PreviewModifier);
  *a2 = v5;
  return result;
}

uint64_t dispatch thunk of static PreviewModifier.makeSharedContext()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v9(a1, a2, a3);
}

uint64_t type metadata completion function for PreviewModifierViewModifier()
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return AssociatedTypeWitness;
}

uint64_t *initializeBufferWithCopyOfBuffer for PreviewModifierViewModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = v7 + v10;
  v12 = (*(v6 + 80) | *(v9 + 80));
  if (v12 > 7 || ((*(v6 + 80) | *(v9 + 80)) & 0x100000) != 0 || (v11 & ~v10) + *(*(AssociatedTypeWitness - 8) + 64) > 0x18)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + ((v12 + 16) & ~v12));
  }

  else
  {
    v16 = AssociatedTypeWitness;
    v17 = ~v10;
    (*(v6 + 16))(a1, a2, v5);
    (*(v9 + 16))((a1 + v11) & v17, (a2 + v11) & v17, v16);
  }

  return a1;
}

uint64_t destroy for PreviewModifierViewModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)(a1, *(a2 + 16));
  v4 = *(v3 + 56) + a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 8);
  v8 = (v4 + *(v6 + 80)) & ~*(v6 + 80);

  return v7(v8, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for PreviewModifierViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  (*(v8 + 16))((v6 + *(v8 + 80) + a1) & ~*(v8 + 80), (v6 + *(v8 + 80) + a2) & ~*(v8 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithCopy for PreviewModifierViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  (*(v8 + 24))((v6 + *(v8 + 80) + a1) & ~*(v8 + 80), (v6 + *(v8 + 80) + a2) & ~*(v8 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t initializeWithTake for PreviewModifierViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  (*(v8 + 32))((v6 + *(v8 + 80) + a1) & ~*(v8 + 80), (v6 + *(v8 + 80) + a2) & ~*(v8 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithTake for PreviewModifierViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  (*(v8 + 40))((v6 + *(v8 + 80) + a1) & ~*(v8 + 80), (v6 + *(v8 + 80) + a2) & ~*(v8 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for PreviewModifierViewModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(AssociatedTypeWitness - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
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

  return v12 + (v20 | v18) + 1;
}

void storeEnumTagSinglePayload for PreviewModifierViewModifier(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v26 = *(v7 - 8);
  v8 = *(v26 + 84);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v26 + 64);
  if (v10 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(v9 + 80);
  v14 = ((v11 + v13) & ~v13) + *(v9 + 64);
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
LABEL_57:
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
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
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

      goto LABEL_31;
    }

    *&a1[v14] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v15)
  {
    goto LABEL_30;
  }

  a1[v14] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v8 >= v10)
  {
    if (v8 >= a2)
    {
      v25 = *(v26 + 56);

      v25(a1, a2, v8, v7);
    }

    else
    {
      if (v11 <= 3)
      {
        v22 = ~(-1 << (8 * v11));
      }

      else
      {
        v22 = -1;
      }

      if (v11)
      {
        v23 = v22 & (~v8 + a2);
        if (v11 <= 3)
        {
          v24 = v11;
        }

        else
        {
          v24 = 4;
        }

        bzero(a1, v11);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *a1 = v23;
            a1[2] = BYTE2(v23);
          }

          else
          {
            *a1 = v23;
          }
        }

        else if (v24 == 1)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v23;
        }
      }
    }
  }

  else
  {
    v21 = *(v9 + 56);

    v21(&a1[v11 + v13] & ~v13, a2);
  }
}

uint64_t specialized BidirectionalCollection._distance(from:to:)(int64_t a1, char a2, uint64_t a3, uint64_t a4, int64_t a5, BOOL a6, uint64_t a7, char a8)
{
  v10 = a6;
  if (!a6)
  {
    if (a2)
    {
      goto LABEL_5;
    }

    if (a1 < a5)
    {
      goto LABEL_24;
    }

    if (a5 < a1)
    {
      goto LABEL_30;
    }

    if (a4)
    {
      if (a4 == 1)
      {
        if (a8 == 1 && a3 < a7)
        {
          goto LABEL_24;
        }

        if (!a8)
        {
          if (!a4)
          {
            goto LABEL_91;
          }

          if (a4 != 1)
          {
            return 0;
          }

          goto LABEL_30;
        }

        if (a8 == 1)
        {
          v12 = 0;
          if (a4 != 1 || a7 >= a3)
          {
            return v12;
          }

          goto LABEL_30;
        }
      }

      else if (a7 || a8 != 2)
      {
        goto LABEL_24;
      }

      if (!a3 && a4 == 2)
      {
        return 0;
      }

      goto LABEL_30;
    }

    if (!a8)
    {
      goto LABEL_86;
    }

    if (a8 == 1)
    {
      goto LABEL_24;
    }

LABEL_30:
    if (a1 != a5)
    {
      goto LABEL_5;
    }

    if (a4)
    {
      if (a4 != 1)
      {
        if (a8 == 2 && !a7)
        {
          return 0;
        }

        goto LABEL_5;
      }

      if (a8 != 1)
      {
LABEL_5:
        v10 = a8 == 2 && a7 == 0;
        v12 = -1;
        while (1)
        {
          a1 = specialized NavigationState.StackContent.Views.ViewsSequence.index(before:)(a1, a2 & 1, a3, a4);
          if ((a2 & 1) != 0 || a1 != a5)
          {
            goto LABEL_13;
          }

          if (!a4)
          {
            break;
          }

          if (a4 != 1)
          {
            if (v10)
            {
              return v12;
            }

            goto LABEL_13;
          }

          if (a8 == 1)
          {
            goto LABEL_21;
          }

LABEL_13:
          v14 = __OFSUB__(v12--, 1);
          if (v14)
          {
            goto LABEL_85;
          }
        }

        if (a8)
        {
          goto LABEL_13;
        }

LABEL_21:
        if (a3 == a7)
        {
          return v12;
        }

        goto LABEL_13;
      }
    }

    else if (a8)
    {
      goto LABEL_5;
    }

    if (a3 == a7)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (a2)
  {
    return 0;
  }

  while (2)
  {
    a2 = 0;
    v16 = a8 == 2 && a7 == 0;
    v12 = 1;
    do
    {
      a1 = specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(a1, a2 & 1, a3, a4);
      if (a2)
      {
        if (!v10)
        {
          goto LABEL_57;
        }
      }

      else if (v10 || a1 != a5)
      {
        goto LABEL_57;
      }

      if (a4)
      {
        if (a4 != 1)
        {
          if (v16)
          {
            return v12;
          }

          goto LABEL_57;
        }

        if (a8 != 1)
        {
          goto LABEL_57;
        }
      }

      else if (a8)
      {
        goto LABEL_57;
      }

      if (a3 == a7)
      {
        return v12;
      }

LABEL_57:
      v14 = __OFADD__(v12++, 1);
    }

    while (!v14);
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    if (a3 < a7)
    {
LABEL_24:
      if (a1 != a5)
      {
        continue;
      }

      if (a4)
      {
        if (a4 != 1)
        {
          if (a8 == 2 && !a7)
          {
            return 0;
          }

          continue;
        }

        if (a8 != 1)
        {
          continue;
        }
      }

      else if (a8)
      {
        continue;
      }

      if (a3 == a7)
      {
        return 0;
      }

      continue;
    }

    break;
  }

LABEL_91:
  if (a7 < a3)
  {
    goto LABEL_30;
  }

  return 0;
}