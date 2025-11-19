uint64_t CollectionViewListDataSource.separatorConfiguration(forRowAt:)(uint64_t a1, uint64_t a2)
{
  v11 = ListSectionInfo.separatorVisitorOptions(forRowAt:)(*&a1);
  v4[7] = 0x3FFFFFFFCuLL;
  v4[8] = 0uLL;
  LOBYTE(v5) = 0;
  v6 = 0;
  v7[0] = 0;
  *&v7[8] = xmmword_18CD6BBA0;
  v9 = 0uLL;
  v8 = 0;
  LOBYTE(v10) = v11._0.rawValue & 1;
  *(&v10 + 1) = v11._0.rawValue;
  specialized ListSectionInfo.visitRow<A>(index:visitor:)(v11._1._0, v11._1._1);
  v2 = specialized static ListRowSeparatorVisitor.effectiveConfigurationForRow(above:this:below:)(0x3FFFFFFFCuLL, 0, 0, 0, 0, 0, 0, 0, 0x3FFFFFFFCuLL, 0, 0, 0);
  v4[4] = 0x3FFFFFFFCuLL;
  v4[5] = 0uLL;
  v4[6] = v10;
  v4[0] = 0x3FFFFFFFCuLL;
  v4[1] = 0uLL;
  v4[2] = v5;
  v4[3] = *v7;
  outlined destroy of ListRowSeparatorVisitor(v4);
  return v2;
}

Swift::tuple_SwiftUI_ListRowSeparatorVisitor_Options_tuple_Int_Int __swiftcall ListSectionInfo.separatorVisitorOptions(forRowAt:)(Swift::tuple_Int_Int forRowAt)
{
  if (forRowAt._0 < 0)
  {
    goto LABEL_24;
  }

  v3 = forRowAt._0;
  v4 = *(v2 + 64);
  if (*(v4 + 16) <= forRowAt._0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    if (forRowAt._1 != 0x8000000000000000)
    {
LABEL_29:
      __break(1u);
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v5 = *(v4 + 152 * forRowAt._0 + 136);
  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_28;
  }

  v7 = v5 + 56 * v6;
  v9 = *(v7 + 16);
  v8 = *(v7 + 24);
  v10 = __OFADD__(v8, v9);
  v11 = v8 + v9;
  if (v10)
  {
    goto LABEL_26;
  }

  v12 = *(v5 + 80);
  if (v11 < v12)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v12 != v11 && v12 == forRowAt._1)
  {
    forRowAt._0 = 1;
    v1 = forRowAt._1;
    v15 = v12 < v11;
    if (v12 == v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v1 = forRowAt._1 - 1;
    if (__OFSUB__(forRowAt._1, 1))
    {
      goto LABEL_30;
    }

    if (v1 >= v11 || v1 < v12)
    {
      goto LABEL_29;
    }

    forRowAt._0 = 0;
    v15 = v12 < v11;
    if (v12 == v11)
    {
LABEL_16:
      forRowAt._1 = v3;
      goto LABEL_31;
    }
  }

  if (!v15)
  {
    goto LABEL_27;
  }

  if (v11 - 1 == forRowAt._1)
  {
    forRowAt._0 |= 2uLL;
  }

  forRowAt._1 = v3;
LABEL_31:
  result._0 = forRowAt._0;
  result._1._0 = forRowAt._1;
  result._1._1 = v1;
  return result;
}

unint64_t specialized ListSectionInfo.visitRow<A>(index:visitor:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(v2 + 64);
  if (*(v3 + 16) <= result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = outlined init with copy of SectionAccumulator.Item(v3 + 152 * result + 32, v12);
  if (__OFADD__(v17, a2))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v17 + a2;
  if (!v14)
  {
    outlined init with copy of _Benchmark(&v13, v9);
    goto LABEL_8;
  }

  if (*(v14 + 16) >= 2uLL)
  {
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v14 + 80, v9);
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v9, v10);
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v10, v9);
LABEL_8:
    v5 = v15;
    v6 = v16;

    v8 = MEMORY[0x18D00ABE0](v7);
    *&v10[0] = v5;
    *(&v10[0] + 1) = v6;
    MEMORY[0x1EEE9AC00](v8);
    _ViewList_SublistTransform.withTemporaryTransform<A>(do:)();

    static Update.end()();
    __swift_destroy_boxed_opaque_existential_1(v9);
    return outlined destroy of SectionAccumulator.Item(v12);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t initializeWithCopy for ToggleStyleConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a2 + 72);

  if (v6)
  {
    v7 = *(a2 + 48);
    v8 = *(a2 + 56);
    v9 = *(a2 + 64);
    outlined copy of Environment<AppIntentExecutor?>.Content(v7, v8, v9);
    *(a1 + 48) = v7;
    *(a1 + 56) = v8;
    *(a1 + 64) = v9;
    v10 = *(a2 + 80);
    v11 = *(a2 + 88);
    *(a1 + 72) = v6;
    *(a1 + 80) = v10;
    *(a1 + 88) = v11;
    v12 = v6;
  }

  else
  {
    v13 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v13;
    *(a1 + 80) = *(a2 + 80);
  }

  return a1;
}

uint64_t partial apply for specialized closure #1 in ListSectionInfo.visitContent<A>(list:start:transform:visitor:)@<X0>(_BYTE *a1@<X8>)
{
  return specialized closure #1 in ListSectionInfo.visitContent<A>(list:start:transform:visitor:)(*(v1 + 16), a1);
}

{
  return specialized closure #1 in ListSectionInfo.visitContent<A>(list:start:transform:visitor:)(*(v1 + 16), a1);
}

uint64_t specialized closure #1 in ListSectionInfo.visitContent<A>(list:start:transform:visitor:)@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  AGWeakAttributeGetAttribute();
  result = ViewList.applySublists(from:list:transform:to:)();
  *a2 = result & 1;
  return result;
}

{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  AGWeakAttributeGetAttribute();
  result = ViewList.applySublists(from:list:transform:to:)();
  *a2 = result & 1;
  return result;
}

uint64_t closure #1 in Toggle.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Toggle();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v9 + 36), a2, a3);
  static ViewBuilder.buildExpression<A>(_:)(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t specialized closure #1 in closure #1 in ListSectionInfo.visitContent<A>(list:start:transform:visitor:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 1;
  if (*a1 >= v4)
  {
    return v5;
  }

  v8 = *(a2 + 48);
  while (1)
  {
    v12 = a1[3];
    v13 = a1[2];
    outlined init with copy of _ViewList_SubgraphElements((a1 + 4), v31);
    v27 = a1[9];
    v14 = v8;

    v15 = _ViewList_SublistSubgraphStorage.retain()();

    v32 = v15;
    v33 = v13;
    v34 = v12;
    v35 = v3;
    v36 = v4;
    v37 = v8;
    if (!*(a3 + 96))
    {
      ViewTraitCollection.value<A>(for:defaultValue:)();
      v9 = *a3;
      v10 = *(a3 + 8);
      v11 = *(a3 + 16);
      *a3 = v27;
      *(a3 + 8) = v28;
      *(a3 + 16) = v29 | 0x8000000000000000;
      *(a3 + 24) = v30;
      outlined consume of ListRowSeparatorVisitor.Neighbor?(v9, v10, v11);
      *(a3 + 96) = 1;
      goto LABEL_4;
    }

    if (*(a3 + 96) != 1)
    {
      break;
    }

    if (*(a3 + 104))
    {
      ViewTraitCollection.value<A>(for:defaultValue:)();
      v16 = *a3;
      v17 = *(a3 + 8);
      v18 = *(a3 + 16);
      *a3 = v27;
      *(a3 + 8) = v28;
      *(a3 + 16) = v29;
      *(a3 + 24) = v30;
      outlined consume of ListRowSeparatorVisitor.Neighbor?(v16, v17, v18);
    }

    ViewTraitCollection.value<A>(for:defaultValue:)();
    *(a3 + 32) = v27;
    *(a3 + 40) = v28;
    *(a3 + 48) = v29;
    *(a3 + 56) = v30;

    *(a3 + 96) = 2;
    if ((*(a3 + 104) & 2) != 0)
    {
      ViewTraitCollection.value<A>(for:defaultValue:)();
      v19 = v27;
      v20 = v28;
      v21 = v29;
      v22 = v30;
      goto LABEL_13;
    }

LABEL_4:
    ++v3;
    outlined destroy of _ViewList_View(v31);
    if (v4 == v3)
    {
      return 1;
    }
  }

  ViewTraitCollection.value<A>(for:defaultValue:)();
  v19 = v27;
  v20 = v28;
  v22 = v30;
  v21 = v29 | 0x8000000000000000;
LABEL_13:
  v23 = *(a3 + 64);
  v24 = *(a3 + 72);
  v25 = *(a3 + 80);
  *(a3 + 64) = v19;
  *(a3 + 72) = v20;
  *(a3 + 80) = v21;
  *(a3 + 88) = v22;
  outlined consume of ListRowSeparatorVisitor.Neighbor?(v23, v24, v25);
  outlined destroy of _ViewList_View(v31);
  return 0;
}

uint64_t partial apply for specialized closure #1 in closure #1 in ListSectionInfo.visitContent<A>(list:start:transform:visitor:)(uint64_t *a1)
{
  return specialized closure #1 in closure #1 in ListSectionInfo.visitContent<A>(list:start:transform:visitor:)(a1, *(v1 + 16), *(v1 + 24));
}

{
  return specialized closure #1 in closure #1 in ListSectionInfo.visitContent<A>(list:start:transform:visitor:)(a1, *(v1 + 16));
}

uint64_t initializeWithCopy for ListSeparatorConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

unint64_t outlined consume of ListRowSeparatorVisitor.Neighbor?(unint64_t result, uint64_t a2, unint64_t a3)
{
  if (result >> 2 != 0xFFFFFFFF || a3 >= 4)
  {
    return outlined consume of ListRowSeparatorVisitor.Neighbor();
  }

  return result;
}

uint64_t specialized static ListRowSeparatorVisitor.effectiveConfigurationForRow(above:this:below:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11, unint64_t a12)
{
  if (a6 == 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v18 = a8;
    v17 = a7;
    v16 = a5;
  }

  if (a1 >> 2 != 0xFFFFFFFF || a3 >= 4)
  {
    if (a3 | a4)
    {
      v19 = a3;
    }

    else
    {
      v19 = v16;
    }

    if (a1 | a2)
    {
      v20 = a1;
    }

    else
    {
      v20 = v16;
    }

    if (a3 >= 0)
    {
      v16 = v20;
    }

    else
    {
      v16 = v19;
    }
  }

  if (a9 >> 2 != 0xFFFFFFFF || a11 >= 4)
  {
    if ((a11 & 0x8000000000000000) != 0)
    {
      if (!v17 && !v18)
      {
      }
    }

    else if (a11 | a12)
    {
    }
  }

  return v16;
}

void *closure #2 in closure #1 in PickerContentView.body.getter(void *result, uint64_t *a2)
{
  v2 = result;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    LOBYTE(v4) = BYTE1(*a2);
  }

  else
  {
    outlined copy of Environment<Bool>.Content(*a2, 0);
    v5 = static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000018CD3F690, v17);
      _os_log_impl(&dword_18BD4A000, v6, v5, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x18D0110E0](v8, -1, -1);
      MEMORY[0x18D0110E0](v7, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v3, 0);

    LOBYTE(v3) = v19;
    v4 = BYTE1(v19);
  }

  if ((v4 & 0xFE) != 4)
  {
    type metadata accessor for PickerContentView();
    result = PickerContentView.isItemSelected(_:)();
    v9 = result;
    v10 = result + 6;
    v11 = -result[2];
    v12 = -1;
    v13 = MEMORY[0x1E69E6370];
    while (1)
    {
      if (v11 + v12 == -1)
      {
      }

      if (++v12 >= v9[2])
      {
        break;
      }

      v14 = v10 + 24;
      v15 = *v10;
      v16 = *(v10 - 1);
      v17[0] = *(v10 - 2);
      v17[1] = v16;
      v18 = v15;
      _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_0(0, &lazy cache variable for type metadata for Binding<Bool>, v13, MEMORY[0x1E6981948]);
      result = MEMORY[0x18D00ACC0](&v19);
      v10 = v14;
      if (v19 == 1)
      {

        *v2 = v3;
        v2[1] = v4;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t destroy for ListRowSeparatorVisitor(void *a1)
{
  if (*a1 >> 2 != 0xFFFFFFFFLL || a1[2] >= 4uLL)
  {
    outlined consume of ListRowSeparatorVisitor.Neighbor();
  }

  result = a1[8];
  if (result >> 2 != 0xFFFFFFFF || a1[10] >= 4uLL)
  {

    return outlined consume of ListRowSeparatorVisitor.Neighbor();
  }

  return result;
}

uint64_t outlined consume of ListRowSeparatorVisitor.Neighbor()
{
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance AccessibilityAttachment.Key@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of AccessibilityAttachment.Tree(&static AccessibilityAttachment.Key.defaultValue, v2);
}

uint64_t explicitInset #1 <A, B>(of:edge:) in UICollectionViewListCoordinator.separatorConfiguration(indexPath:uikitConfig:)(uint64_t a1, char a2)
{
  result = UICollectionViewListCoordinatorBase.collectionView.getter();
  if (result)
  {
    v5 = result;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v7 = [v5 cellForItemAtIndexPath_];

    if (!v7)
    {
      return 0;
    }

    type metadata accessor for AnyListCollectionViewCell();
    v8 = swift_dynamicCastClass();
    if (!v8)
    {
LABEL_6:

      return 0;
    }

    v9 = v8;
    v7 = v7;
    v10 = [v9 contentView];
    [v10 frame];
    v12 = v11;
    v14 = v13;

    *&v15 = COERCE_DOUBLE((*((*MEMORY[0x1E69E7D40] & *v9) + 0x68))(a1, v12, v14));
    if (v16)
    {

      goto LABEL_6;
    }

    v17 = *&v15;
    if (a2)
    {
      [v9 bounds];
      Width = CGRectGetWidth(v40);
      v19 = [v9 contentView];

      [v19 frame];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v41.origin.x = v21;
      v41.origin.y = v23;
      v41.size.width = v25;
      v41.size.height = v27;
      MinX = CGRectGetMinX(v41);

      v29 = Width - (MinX + v17);
    }

    else
    {
      v30 = [v9 contentView];

      [v30 frame];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      v42.origin.x = v32;
      v42.origin.y = v34;
      v42.size.width = v36;
      v42.size.height = v38;
      v39 = CGRectGetMinX(v42);

      v29 = v39 + v17;
    }

    return *&v29;
  }

  return result;
}

char *initializeWithCopy for AccessibilityAttachment.Tree(char *__dst, unsigned __int8 *__src)
{
  v4 = __src[296];
  if (v4 >= 2)
  {
    v4 = *__src + 2;
  }

  if (v4 == 1)
  {
    *__dst = *__src;
    __dst[296] = 1;

    return __dst;
  }

  if (!v4)
  {
    v5 = *(__src + 1);
    *__dst = *__src;
    *(__dst + 1) = v5;
    __dst[16] = __src[16];
    *(__dst + 3) = *(__src + 3);
    __dst[32] = __src[32];
    *(__dst + 40) = *(__src + 40);
    __dst[56] = __src[56];
    v6 = *(__src + 11);

    if (v6)
    {
      if (v6 == 1)
      {
        v7 = *(__src + 5);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = v7;
        *(__dst + 6) = *(__src + 6);
LABEL_15:
        *(__dst + 14) = *(__src + 14);
        __dst[120] = __src[120];
        v11 = *(__src + 30);
        if (v11 == 1)
        {
          v12 = *(__src + 15);
          *(__dst + 14) = *(__src + 14);
          *(__dst + 15) = v12;
          *(__dst + 16) = *(__src + 16);
          __dst[272] = __src[272];
          v13 = *(__src + 11);
          *(__dst + 10) = *(__src + 10);
          *(__dst + 11) = v13;
          v14 = *(__src + 13);
          *(__dst + 12) = *(__src + 12);
          *(__dst + 13) = v14;
          v15 = *(__src + 9);
          *(__dst + 8) = *(__src + 8);
          *(__dst + 9) = v15;
        }

        else
        {
          *(__dst + 16) = *(__src + 16);
          __dst[136] = __src[136];
          *(__dst + 18) = *(__src + 18);
          __dst[152] = __src[152];
          *(__dst + 153) = *(__src + 153);
          __dst[155] = __src[155];
          __dst[156] = __src[156];
          v16 = *(__src + 11);
          *(__dst + 10) = *(__src + 10);
          *(__dst + 11) = v16;
          *(__dst + 12) = *(__src + 12);
          *(__dst + 104) = *(__src + 104);
          *(__dst + 216) = *(__src + 216);
          __dst[232] = __src[232];
          *(__dst + 30) = v11;
          *(__dst + 248) = *(__src + 248);
          *(__dst + 33) = *(__src + 33);
          __dst[272] = __src[272];
        }

        v17 = *(__src + 35);
        v18 = *(__src + 36);
        *(__dst + 35) = v17;
        *(__dst + 36) = v18;
        __dst[296] = 0;

        v19 = v18;
        return __dst;
      }

      v10 = *(__src + 12);
      *(__dst + 11) = v6;
      *(__dst + 12) = v10;
      (**(v6 - 8))(__dst + 64, __src + 64, v6);
    }

    else
    {
      v9 = *(__src + 5);
      *(__dst + 4) = *(__src + 4);
      *(__dst + 5) = v9;
      *(__dst + 12) = *(__src + 12);
    }

    *(__dst + 13) = *(__src + 13);

    goto LABEL_15;
  }

  return memcpy(__dst, __src, 0x129uLL);
}

uint64_t @objc UICollectionViewListCoordinatorBase.collectionView(_:willDisplay:forItemAt:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  specialized UICollectionViewListCoordinatorBase.collectionView(_:willDisplay:forItemAt:)(v12, v10);

  return (*(v8 + 8))(v10, v7);
}

void *specialized UICollectionViewListCoordinatorBase.collectionView(_:willDisplay:forItemAt:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40] & *v2;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = *(*((v6 & v5) + 0x70) + 8);
  v12 = *((v6 & v5) + 0x60);
  v36[3] = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = swift_dynamicCastUnknownClass();
  if (result)
  {
    v15 = (v2 + *(v7 + 152));
    v16 = *v15;
    if (*v15)
    {
      v36[1] = v12;
      v36[2] = result;
      v36[0] = a1;
      v17 = v16;
      v18 = v15[1];
      (*(v9 + 16))(v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
      v19 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = v17;
      *(v20 + 24) = v18;
      (*(v9 + 32))(v20 + v19, v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
      v21 = MEMORY[0x1E69E7D40];
      v22 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x100);
      v23 = *(v22 + 2);
      v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
      if ((v23 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFALL)
      {
        outlined copy of AppIntentExecutor?(v17);
        outlined copy of AppIntentExecutor?(v17);
        v25 = v36[0];
        v26 = v36[0];
        v27 = partial apply for closure #1 in UICollectionViewListCoordinatorBase.collectionView(_:willDisplay:forItemAt:);
        v28 = v17;
LABEL_18:
        v32 = v2 + *((*v21 & *v2) + 0x108);
        v33 = *v32;
        v34 = v32[8];
        v35 = *(swift_getAssociatedConformanceWitness() + 8);
        (*(v35 + 136))(v33, v34, AssociatedTypeWitness, v35);
        (*(v35 + 120))(1, v27, v20, AssociatedTypeWitness, v35);

        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v28);
        return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v27);
      }

      v25 = v36[0];
      if (v24 == 0x1FFFFFFFCLL)
      {
        v28 = v17;
        outlined copy of AppIntentExecutor?(v17);
        outlined copy of AppIntentExecutor?(v17);
        v29 = v25;
        v27 = partial apply for closure #1 in UICollectionViewListCoordinatorBase.collectionView(_:willDisplay:forItemAt:);
        goto LABEL_18;
      }

      v28 = v17;
      if (v24 == 0x1FFFFFFFELL)
      {
LABEL_8:
        outlined copy of AppIntentExecutor?(v17);
        outlined copy of AppIntentExecutor?(v17);
        v30 = v25;
        v27 = partial apply for closure #1 in UICollectionViewListCoordinatorBase.collectionView(_:willDisplay:forItemAt:);
        goto LABEL_18;
      }

      if (v23 >> 62)
      {
        if ((*v22 & 2) == 0 || !*(v22 + 3) || v23 & 1 | (*(v22 + 1) <= 0.0))
        {
          goto LABEL_8;
        }
      }

      else if (*v22 & 2) == 0 || (*(v22 + 4))
      {
        goto LABEL_8;
      }

      outlined copy of AppIntentExecutor?(v17);
      outlined copy of AppIntentExecutor?(v17);
      v31 = v25;

      v27 = 0;
      v20 = 0;
      goto LABEL_18;
    }
  }

  return result;
}

void destroy for AccessibilityAttachment.Tree(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2 >= 2)
  {
    v2 = *a1 + 2;
  }

  if (v2 != 1)
  {
    if (v2)
    {
      return;
    }

    v3 = *(a1 + 88);
    if (v3)
    {
      if (v3 == 1)
      {
LABEL_9:
        if (*(a1 + 240) != 1)
        {
        }

        v4 = *(a1 + 288);

        return;
      }

      __swift_destroy_boxed_opaque_existential_1(a1 + 64);
    }

    goto LABEL_9;
  }
}

double protocol witness for LabelStyle.makeBody(configuration:) in conformance FallbackLabelStyle@<D0>(_OWORD *a1@<X8>)
{
  *&v4 = swift_getKeyPath();
  WORD4(v4) = 0;
  closure #2 in FallbackLabelStyle.makeBody(configuration:)(&v5);
  v2 = v5;
  *a1 = v4;
  a1[1] = v2;
  a1[2] = v6[0];
  result = *(v6 + 10);
  *(a1 + 42) = *(v6 + 10);
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ResolvedFallbackLabel(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 9);
  v5 = *(a2 + 8);
  outlined copy of Environment<CGFloat?>.Content(*a2, v5, v4);
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 9) = v4;
  return a1;
}

void *specialized AccessibilityToggleModifier.body(content:)@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  type metadata accessor for ToggleStyleModifier<DefaultToggleStyle>(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine, &type metadata for AccessibilityChildBehavior.Combine, type metadata accessor for AccessibilityChildBehaviorBox);
  v6 = swift_allocObject();
  *(v6 + 16) = 12;
  AccessibilityProperties.init(reserving:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v29);
  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v7 = swift_allocObject();
  memcpy((v7 + 16), __src, 0x128uLL);
  v8 = a1[3];
  v32 = a1[2];
  v33 = v8;
  v9 = a1[5];
  v34 = a1[4];
  v35 = v9;
  v10 = a1[1];
  v30 = *a1;
  v31 = v10;
  v48 = v30;
  v49 = v10;
  v50 = v32;
  v51 = v8;
  v52 = v34;
  v53 = v9;
  *&v54 = v7;
  *(&v54 + 1) = v6;
  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityTraitSet>, MEMORY[0x1E697FB88], MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  outlined init with copy of ResolvedToggleStyleBody(a1, __src);
  AccessibilityTraitSet.init(traits:)();
  v12 = *(v11 + 32);
  swift_setDeallocating();
  swift_deallocClassInstance();
  swift_beginAccess();
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v7 + 16, 0, v12);
  v25[2] = v32;
  v25[3] = v33;
  v25[4] = v34;
  v25[5] = v35;
  v25[0] = v30;
  v25[1] = v31;
  v26 = v7;
  v27 = v6;
  outlined init with copy of ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(&v48, __src);
  outlined destroy of ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(v25);
  swift_beginAccess();
  closure #1 in ModifiedContent<>.accessibilityVisibility(_:)(v7 + 16, 0x4000000040uLL);
  v13 = v3[3];
  v14 = v3[1];
  *&v44[16] = v3[2];
  v45 = v13;
  v15 = v3[3];
  v16 = v3[5];
  v46 = v3[4];
  v47 = v16;
  v17 = v3[1];
  v43 = *v3;
  *v44 = v17;
  __src[2] = *&v44[16];
  __src[3] = v15;
  v18 = v3[5];
  __src[4] = v46;
  __src[5] = v18;
  __src[0] = v43;
  __src[1] = v14;
  __dst[0] = ToggleStyleConfiguration.accessibilityActions.getter();
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();

  AccessibilityProperties.subscript.getter();
  specialized Array.append<A>(contentsOf:)(v21[0]);
  v21[0] = __dst[0];
  AccessibilityProperties.subscript.setter();
  swift_endAccess();

  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v7 + 16, 1, 1);
  __src[0] = *&v44[8];
  LOBYTE(__src[1]) = v44[24];
  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for Binding<ToggleState>, MEMORY[0x1E697DD58], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v24);
  if (LOBYTE(v24[0]))
  {
    v19 = 2 * (LOBYTE(v24[0]) != 1);
  }

  else
  {
    v19 = 1;
  }

  LOBYTE(__src[0]) = v19;
  memset(v24 + 1, 0, 32);
  *(&v24[4] + 1) = 0;
  outlined destroy of AppIntentAction?(v24 + 1, &lazy cache variable for type metadata for AnyAccessibilityValue?, MEMORY[0x1E697FBB0]);
  lazy protocol witness table accessor for type AccessibilityToggleValue and conformance AccessibilityToggleValue();
  lazy protocol witness table accessor for type AccessibilityToggleValue and conformance AccessibilityToggleValue();
  lazy protocol witness table accessor for type AccessibilityToggleValue and conformance AccessibilityToggleValue();
  AnyAccessibilityValue.init<A>(_:)();
  *(&v24[5] + 1) = 0;
  swift_beginAccess();
  outlined init with copy of AccessibilityValueStorage(v24 + 1, __src);

  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI25AccessibilityValueStorageV_s5NeverOSbTg503_s7c25UI15ModifiedContentVA2A31e59AttachmentModifierVRs_rlE18accessibilityValueyACyxAEGAA0eI7G35VFyAA0E10PropertiesVzXEfU_SbAIXEfU_AFTf1cn_n(v7 + 80, __src);
  outlined destroy of AppIntentAction?(v7 + 80, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
  outlined init with copy of AccessibilityValueStorage(__src, v7 + 80);
  outlined destroy of AccessibilityValueStorage(__src);
  swift_endAccess();

  v40 = v52;
  v41 = v53;
  v42 = v54;
  v36 = v48;
  v37 = v49;
  v39 = v51;
  v38 = v50;
  outlined destroy of AccessibilityValueStorage(v24 + 1);
  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, MEMORY[0x1E6980C18], MEMORY[0x1E69808E8]);
  type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, &unk_1EFFA4A18, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
  type metadata accessor for ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>();
  lazy protocol witness table accessor for type ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>();
  View.staticIf<A, B>(_:then:)();
  v22[4] = v40;
  v22[5] = v41;
  v22[6] = v42;
  v22[0] = v36;
  v22[1] = v37;
  v22[2] = v38;
  v22[3] = v39;
  outlined destroy of ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(v22);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v29, __src, 0x110uLL);
  outlined init with copy of StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>(__dst, v21, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>);
  outlined destroy of StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>(v29, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>);
  return memcpy(a2, __dst, 0x110uLL);
}

void *ResolvedToggleStyle.body.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 48);
  v23 = *(v1 + 32);
  v24 = v3;
  v4 = *(v1 + 80);
  v25 = *(v1 + 64);
  v26 = v4;
  v5 = *(v1 + 16);
  v21 = *v1;
  v22 = v5;
  v35 = v21;
  v6 = *(v1 + 16);
  v7 = *(&v5 + 1);
  v27 = v21;
  v28 = v6;
  v29 = *(&v5 + 1);
  v30 = v23;
  v31 = BYTE8(v23);
  v8 = *(v1 + 73);
  v9 = *(v1 + 57);
  v10 = *(v1 + 41);
  *&v34[15] = *(v1 + 88);
  v11 = *&v34[15];
  *v34 = v8;
  v33 = v9;
  v32 = v10;
  v36 = v6;
  v37 = v7;
  v38 = v23;
  v39 = BYTE8(v23);
  *&v42[15] = v11;
  *v42 = v8;
  v41 = v9;
  v40 = v10;
  specialized AccessibilityToggleModifier.body(content:)(&v27, __src);
  v18[0] = v7;
  v18[1] = v23;
  v19 = BYTE8(v23);
  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for Binding<ToggleState>, MEMORY[0x1E697DD58], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v20);
  LOBYTE(v7) = v20;
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  v13 = swift_allocObject();
  v14 = v24;
  v13[3] = v23;
  v13[4] = v14;
  v15 = v26;
  v13[5] = v25;
  v13[6] = v15;
  v16 = v22;
  v13[1] = v21;
  v13[2] = v16;
  outlined init with copy of ResolvedToggleStyle(&v21, v18);
  result = memcpy(a1, __src, 0x110uLL);
  a1[34] = partial apply for closure #1 in View.platformItemToggleState(_:);
  a1[35] = v12;
  a1[36] = partial apply for closure #2 in ResolvedToggleStyle.body.getter;
  a1[37] = v13;
  return result;
}

uint64_t sub_18C00EE94()
{

  if (*(v0 + 88))
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  return swift_deallocObject();
}

uint64_t outlined init with copy of ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, &unk_1EFFA4A18, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, &unk_1EFFA4A18, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ToggleStyleConfiguration.accessibilityActions.getter()
{
  v1 = v0[3];
  v17[2] = v0[2];
  v17[3] = v1;
  v2 = v0[5];
  v18 = v0[4];
  v19 = v2;
  v3 = v0[1];
  v17[0] = *v0;
  v17[1] = v3;
  v20[1] = v18;
  v20[2] = v2;
  v20[0] = v1;
  v4 = v18.n128_u64[1];
  type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  if (v18.n128_u64[1])
  {
    *(v5 + 16) = xmmword_18CD63400;
    type metadata accessor for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>(0, &lazy cache variable for type metadata for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>, lazy protocol witness table accessor for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler, &type metadata for AccessibilityAppIntentHandler, type metadata accessor for AnyAccessibilityAction.ConcreteBase);
    *(v5 + 56) = v6;
    *(v5 + 64) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
    v7 = swift_allocObject();
    *(v5 + 32) = v7;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    *(v7 + 48) = v0[3];
    *(v7 + 64) = v0[4].n128_u64[0];
    *(v7 + 72) = v4;
    *(v7 + 80) = v0[5];
    *(v7 + 96) = 0;
    *(v7 + 104) = 0;
    *(v7 + 112) = 0;
    *(v7 + 120) = 2;
    *(v7 + 128) = 0u;
    *(v7 + 144) = 0u;
    *(v7 + 153) = 0u;
    *(v5 + 72) = 1;
  }

  else
  {
    *(v5 + 16) = xmmword_18CD63400;
    v8 = swift_allocObject();
    v9 = v0[3];
    v8[3] = v0[2];
    v8[4] = v9;
    v10 = v0[5];
    v8[5] = v0[4];
    v8[6] = v10;
    v11 = v0[1];
    v8[1] = *v0;
    v8[2] = v11;
    v12 = swift_allocObject();
    *(v12 + 16) = partial apply for closure #1 in ToggleStyleConfiguration.accessibilityActions.getter;
    *(v12 + 24) = v8;
    LODWORD(v8) = AccessibilityActionHandlerSeed++;
    type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityVoidAction>>();
    *(v5 + 56) = v13;
    *(v5 + 64) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
    v14 = swift_allocObject();
    *(v5 + 32) = v14;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0;
    *(v14 + 72) = 2;
    *(v14 + 80) = 0u;
    *(v14 + 96) = 0u;
    *(v14 + 112) = 0;
    *(v14 + 120) = partial apply for thunk for @escaping @callee_guaranteed () -> (@out AccessibilityActionResult);
    *(v14 + 128) = v12;
    *(v14 + 136) = v8;
    *(v5 + 72) = 0;
    outlined init with copy of ToggleStyleConfiguration(v17, v16);
  }

  outlined init with copy of ToggleStyleConfiguration.Effect(v20, v16);
  return v5;
}

uint64_t sub_18C00F2D0()
{

  if (*(v0 + 88))
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  return swift_deallocObject();
}

uint64_t sub_18C00F344()
{
  if (*(v0 + 40) >= 5uLL)
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  if (*(v0 + 72) >= 3uLL)
  {
    outlined consume of Text.Storage(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  }

  if (*(v0 + 104))
  {
    outlined consume of Text.Storage(*(v0 + 80), *(v0 + 88), *(v0 + 96));
  }

  return swift_deallocObject();
}

uint64_t sub_18C00F3E0()
{
  if (*(v0 + 40) >= 5uLL)
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  outlined consume of Environment<AppIntentExecutor?>.Content(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  if (*(v0 + 120) >= 3uLL)
  {
    outlined consume of Text.Storage(*(v0 + 96), *(v0 + 104), *(v0 + 112));
  }

  if (*(v0 + 152))
  {
    outlined consume of Text.Storage(*(v0 + 128), *(v0 + 136), *(v0 + 144));
  }

  return swift_deallocObject();
}

uint64_t sub_18C00F490()
{

  return swift_deallocObject();
}

__n128 initializeWithCopy for ToggleStyleConfiguration.Effect(__n128 *a1, __n128 *a2)
{
  v2 = a2[1].n128_u64[1];
  if (v2 < 0xFFFFFFFF)
  {
    v12 = a2[1];
    *a1 = *a2;
    a1[1] = v12;
    result = a2[2];
    a1[2] = result;
  }

  else
  {
    v3 = a2->n128_u64[0];
    v4 = a2->n128_i64[1];
    v5 = a2[1].n128_i8[0];
    outlined copy of Environment<AppIntentExecutor?>.Content(a2->n128_u64[0], v4, v5);
    a1->n128_u64[0] = v3;
    a1->n128_u64[1] = v4;
    a1[1].n128_u8[0] = v5;
    v8 = a2[2].n128_u64[0];
    v9 = a2[2].n128_u64[1];
    a1[1].n128_u64[1] = v2;
    a1[2].n128_u64[0] = v8;
    a1[2].n128_u64[1] = v9;
    v10 = v2;
  }

  return result;
}

uint64_t outlined destroy of AppIntentAction?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s7SwiftUI7BindingVySbGMaTm_1(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_1(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_1(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 48);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[48 * v10])
    {
      memmove(v14, v15, 48 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_1(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_1(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 40);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[40 * v10])
    {
      memmove(v14, v15, 40 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

unint64_t lazy protocol witness table accessor for type AccessibilityToggleValue and conformance AccessibilityToggleValue()
{
  result = lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue;
  if (!lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue;
  if (!lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue;
  if (!lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityToggleValue and conformance AccessibilityToggleValue);
  }

  return result;
}

double specialized closure #1 in AccessibilityToggleModifier.body(content:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(a2 + 64);
  v43 = *(a2 + 48);
  v44 = v5;
  v45 = *(a2 + 80);
  if (*(&v5 + 1))
  {
    v6 = v43.n128_u64[1];
    v7 = v43.n128_u64[0];
    v8 = *(&v45 + 1);
    v9 = v45;
    v10 = v44 & 1;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
  }

  v11 = a1[5];
  v34 = a1[4];
  v35 = v11;
  v36 = a1[6];
  v12 = a1[1];
  v31[0] = *a1;
  v31[1] = v12;
  v13 = a1[3];
  v32 = a1[2];
  v33 = v13;
  v21 = v31[0];
  v22 = v12;
  v23 = v32;
  v24 = v13;
  v25 = v34;
  v26 = v11;
  v27 = v36;
  *&v28 = v7;
  *(&v28 + 1) = v6;
  *&v29 = v10;
  *(&v29 + 1) = *(&v5 + 1);
  *&v30 = v9;
  *(&v30 + 1) = v8;
  v37 = v7;
  v38 = v6;
  v39 = v10;
  v40 = *(&v5 + 1);
  v41 = v9;
  v42 = v8;
  outlined init with copy of ToggleStyleConfiguration.Effect(&v43, v20);
  outlined init with copy of ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(a1, v20);
  outlined init with copy of StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>(&v21, v20, type metadata accessor for ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>);
  outlined destroy of StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>(v31, type metadata accessor for ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>);
  v14 = v28;
  a3[6] = v27;
  a3[7] = v14;
  v15 = v30;
  a3[8] = v29;
  a3[9] = v15;
  v16 = v24;
  a3[2] = v23;
  a3[3] = v16;
  v17 = v26;
  a3[4] = v25;
  a3[5] = v17;
  result = *&v21;
  v19 = v22;
  *a3 = v21;
  a3[1] = v19;
  return result;
}

double partial apply for specialized closure #1 in AccessibilityToggleModifier.body(content:)@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = a1[5];
  v8[4] = a1[4];
  v8[5] = v4;
  v8[6] = a1[6];
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v6 = a1[3];
  v8[2] = a1[2];
  v8[3] = v6;
  return specialized closure #1 in AccessibilityToggleModifier.body(content:)(v8, v3, a2);
}

uint64_t outlined init with copy of StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>, AccessibilityToggleModifier<ResolvedToggleStyleBody>.RepresentationModifier<ToggleStyleConfiguration.Label>>, ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t initializeWithCopy for AccessibilityToggleModifier.RepresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  if (*(v8 + 24) < 0xFFFFFFFFuLL)
  {
    v15 = *v8;
    v16 = *(v8 + 32);
    *(v7 + 16) = *(v8 + 16);
    *(v7 + 32) = v16;
    *v7 = v15;
  }

  else
  {
    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = *(v8 + 16);
    outlined copy of Environment<AppIntentExecutor?>.Content(*v8, v10, v11);
    *v7 = v9;
    *(v7 + 8) = v10;
    *(v7 + 16) = v11;
    v12 = *(v8 + 24);
    *(v7 + 24) = v12;
    v13 = *(v8 + 40);
    *(v7 + 32) = *(v8 + 32);
    *(v7 + 40) = v13;
    v14 = v12;
  }

  return a1;
}

uint64_t destroy for AccessibilityToggleModifier.RepresentationModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 24) - 8) + 8;
  result = (*v3)();
  v5 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v5 + 24) >= 0xFFFFFFFFuLL)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v5, *(v5 + 8), *(v5 + 16));
  }

  return result;
}

uint64_t protocol witness for View.body.getter in conformance ResolvedToggleStyleBody@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v10 = *(v1 + 80);
  v9 = *(v1 + 88);
  v11 = v7 & 1;
  if (v8)
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  if (v8)
  {
    v13 = v6;
  }

  else
  {
    v13 = 0;
  }

  if (v8)
  {
    v14 = v10;
  }

  else
  {
    v11 = 0;
    v14 = 0;
  }

  if (v8)
  {
    v15 = v9;
  }

  else
  {
    v15 = 0;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v11;
  *(a1 + 48) = v8;
  *(a1 + 56) = v14;
  *(a1 + 64) = v15;

  return outlined copy of ToggleStyleConfiguration.Effect(v5, v6, v7, v8);
}

uint64_t outlined copy of ToggleStyleConfiguration.Effect(uint64_t result, uint64_t a2, char a3, void *a4)
{
  if (a4)
  {
    outlined copy of Environment<AppIntentExecutor?>.Content(result, a2, a3 & 1);
    v5 = a4;
  }

  return result;
}

uint64_t assignWithTake for CheckmarkToggleStyle(uint64_t a1, uint64_t *a2)
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
  v11 = *(a2 + 64);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  v17 = *(a2 + 3);
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 48) = v17;
  *(a1 + 64) = v11;
  outlined consume of Environment<EdgeInsets>.Content(v12, v13, v14, v15, v16);
  v18 = *(a2 + 80);
  v19 = *(a1 + 72);
  v20 = *(a1 + 80);
  *(a1 + 72) = a2[9];
  *(a1 + 80) = v18;
  outlined consume of Environment<Selector?>.Content(v19, v20);
  v21 = *(a2 + 96);
  v22 = *(a1 + 88);
  v23 = *(a1 + 96);
  *(a1 + 88) = a2[11];
  *(a1 + 96) = v21;
  outlined consume of Environment<Selector?>.Content(v22, v23);
  *(a1 + 104) = a2[13];
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t protocol witness for StyleableView.configuration.getter in conformance ResolvedToggleStyle@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v10 = v1[2];
  v11 = v2;
  v4 = v1[5];
  v12 = v1[4];
  v3 = v12;
  v13 = v4;
  v6 = v1[1];
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return outlined init with copy of ToggleStyleConfiguration(v9, &v8);
}

uint64_t ToggleStyleModifier.styleBody(configuration:)(_OWORD *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - v10;
  v12 = a1[3];
  v18[2] = a1[2];
  v18[3] = v12;
  v13 = a1[5];
  v18[4] = a1[4];
  v18[5] = v13;
  v14 = a1[1];
  v18[0] = *a1;
  v18[1] = v14;
  (*(v3 + 24))(v18, v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  v16 = *(v6 + 8);
  v16(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v16)(v11, AssociatedTypeWitness);
}

uint64_t CheckmarkToggleStyle.makeBody(configuration:)@<X0>(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  type metadata accessor for HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = a1[3];
  v31[2] = a1[2];
  v31[3] = v8;
  v9 = a1[5];
  v31[4] = a1[4];
  v31[5] = v9;
  v10 = a1[1];
  v31[0] = *a1;
  v31[1] = v10;
  v11 = *(v2 + 80);
  v32[4] = *(v2 + 64);
  v32[5] = v11;
  v32[6] = *(v2 + 96);
  v33 = *(v2 + 112);
  v12 = *(v2 + 16);
  v32[0] = *v2;
  v32[1] = v12;
  v13 = *(v2 + 48);
  v32[2] = *(v2 + 32);
  v32[3] = v13;
  v14 = swift_allocObject();
  v15 = a1[3];
  *(v14 + 3) = a1[2];
  *(v14 + 4) = v15;
  v16 = a1[5];
  *(v14 + 5) = a1[4];
  *(v14 + 6) = v16;
  v17 = a1[1];
  *(v14 + 1) = *a1;
  *(v14 + 2) = v17;
  *a2 = 4;
  type metadata accessor for Button<ToggleStyleConfiguration.Label>();
  v19 = &a2[*(v18 + 36)];
  *v19 = partial apply for closure #1 in CheckmarkToggleStyle.menuContent(configuration:);
  v19[1] = v14;
  type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, Button<ToggleStyleConfiguration.Label>, Button<ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>>>();
  v21 = &a2[*(v20 + 44)];
  v22 = swift_allocObject();
  v23 = a1[3];
  v22[3] = a1[2];
  v22[4] = v23;
  v24 = a1[5];
  v22[5] = a1[4];
  v22[6] = v24;
  v25 = a1[1];
  v22[1] = *a1;
  v22[2] = v25;
  *v21 = 4;
  type metadata accessor for Button<ModifiedContent<HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>, _EnvironmentKeyWritingModifier<Color?>>>();
  v27 = &v21[*(v26 + 36)];
  *v27 = partial apply for closure #1 in CheckmarkToggleStyle.defaultContent(configuration:);
  v27[1] = v22;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of ToggleStyleConfiguration(v31, v30);
  outlined init with copy of ToggleStyleConfiguration(v31, v30);

  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  type metadata accessor for _VariadicView.Tree<_HStackLayout, TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>();
  closure #1 in closure #2 in CheckmarkToggleStyle.defaultContent(configuration:)(v31, v32, &v7[*(v28 + 44)]);
  static Color.primary.getter();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>> and conformance HStack<A>();
  View.defaultForegroundColor(_:)();

  return sub_18C010270(v7);
}

uint64_t sub_18C010270(uint64_t a1)
{
  type metadata accessor for HStack<TupleView<(ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)>>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in closure #2 in CheckmarkToggleStyle.defaultContent(configuration:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for <<opaque return type of View.accessibilityDisabled()>>.0();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = specialized Environment.wrappedValue.getter(*a2, *(a2 + 8));
  v14 = 0;
  if ((v13 & 1) == 0)
  {
    v14 = static Color.tertiary.getter();
  }

  v38 = v14;
  KeyPath = swift_getKeyPath();
  specialized Image.init(systemName:)(0x72616D6B63656863, 0xE90000000000006BLL);
  v36 = v15;
  specialized Environment.wrappedValue.getter(*(a2 + 2), *(a2 + 24), &v47);
  v35 = v47 < 9u;
  v34 = swift_getKeyPath();
  static Font.PrivateTextStyle.emphasizedBody.getter();
  LOBYTE(v40) = 4;
  v33 = static Font.system(_:design:weight:)();

  v32 = swift_getKeyPath();
  v31 = static Color.accentColor.getter();
  v30 = swift_getKeyPath();
  v16 = a2[5];
  v51 = a2[4];
  v52 = v16;
  v53 = a2[6];
  LOBYTE(v54) = *(a2 + 112);
  v17 = a2[1];
  v47 = *a2;
  v48 = v17;
  v18 = a2[3];
  v49 = a2[2];
  v50 = v18;
  CheckmarkToggleStyle.adjustedCheckmarkWidth.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v60 = *a1;
  v61 = *(a1 + 16);
  v47 = *a1;
  LOBYTE(v48) = *(a1 + 16);
  _s7SwiftUI5ColorVSgMaTm_1(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v20 = v19;
  MEMORY[0x18D00ACC0](&v40);
  if (v40)
  {
    v21 = 0x10000000002;
  }

  else
  {
    v21 = 0x1010000000002;
  }

  LOBYTE(v40) = 1;
  v47 = v60;
  LOBYTE(v48) = v61;
  MEMORY[0x18D00ACC0](&v40, v20);
  v22 = 0.0;
  if (v40)
  {
    v22 = 1.0;
  }

  *(v43 + 8) = v57;
  *&v40 = v36;
  *(&v40 + 1) = v34;
  LOBYTE(v41) = v35;
  *(&v41 + 1) = v32;
  *&v42 = v33;
  *(&v42 + 1) = v30;
  *&v43[0] = v31;
  *(&v43[1] + 8) = v58;
  *(&v43[2] + 8) = v59;
  *(&v43[3] + 1) = v21;
  v44 = 0uLL;
  *&v45 = 0x3F80000000007000;
  *(&v45 + 1) = 0x100000000;
  BYTE4(v46) = 1;
  LODWORD(v46) = 0;
  *(&v46 + 1) = v22;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, OpacityRendererEffect>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, OpacityRendererEffect>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>();
  View.accessibilityDisabled()();
  v53 = v43[3];
  v54 = v44;
  v55 = v45;
  v56 = v46;
  v49 = v42;
  v50 = v43[0];
  v51 = v43[1];
  v52 = v43[2];
  v47 = v40;
  v48 = v41;
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, OpacityRendererEffect>(&v47);
  LOBYTE(v40) = 0;
  v23 = *(v8 + 16);
  v24 = v39;
  v23(v39, v12, v7);
  v25 = v38;
  *a3 = KeyPath;
  *(a3 + 8) = v25;
  v26 = v40;
  *(a3 + 16) = 0x4030000000000000;
  *(a3 + 24) = v26;
  type metadata accessor for (ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, Spacer, <<opaque return type of View.accessibilityDisabled()>>.0)();
  v23((a3 + *(v27 + 64)), v24, v7);
  v28 = *(v8 + 8);

  v28(v12, v7);
  v28(v24, v7);
}

uint64_t sub_18C010738@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18C010798@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t CheckmarkToggleStyle.adjustedCheckmarkWidth.getter()
{
  specialized Environment.wrappedValue.getter(*(v0 + 16), *(v0 + 24), &v2);
  _s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMaTm_2(0, &lazy cache variable for type metadata for ScaledMetric<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DF08]);
  return ScaledMetric.wrappedValue.getter();
}

__n128 initializeWithCopy for _SymbolEffectModifier(uint64_t a1, uint64_t *a2)
{
  v2 = a2[2];
  v3 = a2[3];
  if ((~v2 & 0xFFFFFFFE) == 0 && (a2[3] & 0xFEFE) == 2)
  {
    v10 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v10;
    result = *(a2 + 29);
    *(a1 + 29) = result;
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    outlined copy of _SymbolEffect.Storage(*a2, v6, v2, v3);
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v2;
    *(a1 + 24) = v3;
    result = *(a2 + 28);
    *(a1 + 28) = result;
    *(a1 + 44) = *(a2 + 44);
  }

  return result;
}

uint64_t outlined copy of _SymbolEffect.Storage(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  if ((a4 >> 12) <= 5u)
  {
    return outlined copy of _SymbolEffect.Trigger?(result);
  }

  return result;
}

uint64_t *destroy for _SymbolEffectModifier(uint64_t *result)
{
  v1 = result[2];
  if ((~v1 & 0xFFFFFFFE) != 0 || (result[3] & 0xFEFE) != 2)
  {
    return outlined consume of _SymbolEffect.Storage(*result, result[1], v1, result[3]);
  }

  return result;
}

uint64_t outlined consume of _SymbolEffect.Storage(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  if ((a4 >> 12) <= 5u)
  {
    return outlined consume of _SymbolEffect.Trigger?(result);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DisplayMenuAsPaletteKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DisplayMenuAsPaletteKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DisplayMenuAsPaletteKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayMenuAsPaletteKey>, &type metadata for DisplayMenuAsPaletteKey, &protocol witness table for DisplayMenuAsPaletteKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DisplayMenuAsPaletteKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuActionDismissBehaviorKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuActionDismissBehaviorKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuActionDismissBehaviorKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuActionDismissBehaviorKey>, &type metadata for MenuActionDismissBehaviorKey, &protocol witness table for MenuActionDismissBehaviorKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuActionDismissBehaviorKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t *assignWithTake for PlatformItemListButtonStyle(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Color?>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = a1[2];
  v10 = *(a1 + 24);
  a1[2] = a2[2];
  *(a1 + 24) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  v11 = *(a2 + 40);
  v12 = a1[4];
  v13 = *(a1 + 40);
  a1[4] = a2[4];
  *(a1 + 40) = v11;
  outlined consume of Environment<Selector?>.Content(v12, v13);
  v14 = *(a2 + 56);
  v15 = a1[6];
  v16 = *(a1 + 56);
  a1[6] = a2[6];
  *(a1 + 56) = v14;
  outlined consume of Environment<Selector?>.Content(v15, v16);
  return a1;
}

uint64_t PlatformItemListButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v2[1];
  v27 = *v2;
  v28 = v8;
  *v29 = v2[2];
  *&v29[9] = *(v2 + 41);
  outlined init with copy of PrimitiveButtonStyleConfiguration(a1, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  outlined init with take of PrimitiveButtonStyleConfiguration(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  KeyPath = swift_getKeyPath();
  v25[0] = 0;
  v23 = swift_getKeyPath();
  v26 = 0;
  v11 = swift_getKeyPath();
  v25[64] = 0;
  v12 = v25[0];
  v13 = v26;
  outlined init with copy of PrimitiveButtonStyleConfiguration(a1, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  outlined init with take of PrimitiveButtonStyleConfiguration(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v9);
  v15 = specialized Environment.wrappedValue.getter(v27, SBYTE8(v27));
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = swift_allocObject();
  v18 = v28;
  v17[1] = v27;
  v17[2] = v18;
  v17[3] = *v29;
  *(v17 + 57) = *&v29[9];
  v19 = *&v29[16];
  LOBYTE(v9) = v29[24];
  outlined init with copy of PlatformItemListButtonStyle(&v27, v25);
  specialized Environment.wrappedValue.getter(v19, v9, v25);
  LOBYTE(v19) = v25[0] == 2;
  result = swift_allocObject();
  *(result + 16) = v19;
  *a2 = partial apply for implicit closure #2 in implicit closure #1 in PlatformItemListButtonStyle.makeBody(configuration:);
  *(a2 + 8) = v10;
  *(a2 + 16) = 1;
  v21 = v23;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = v12;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = v21;
  *(a2 + 64) = 0;
  *(a2 + 65) = v13;
  *(a2 + 72) = v11;
  *(a2 + 80) = 0;
  *(a2 + 88) = partial apply for implicit closure #4 in implicit closure #3 in PlatformItemListButtonStyle.makeBody(configuration:);
  *(a2 + 96) = v14;
  *(a2 + 104) = partial apply for closure #1 in View.platformItemTint(_:);
  *(a2 + 112) = v16;
  *(a2 + 120) = partial apply for closure #3 in PlatformItemListButtonStyle.makeBody(configuration:);
  *(a2 + 128) = v17;
  *(a2 + 136) = partial apply for closure #1 in View.platformItemKeepsMenuPresented(_:);
  *(a2 + 144) = result;
  *(a2 + 152) = closure #1 in PlatformItemListButtonStyle.menuItemAttributedTitleModifier.getter;
  *(a2 + 160) = 0;
  return result;
}

uint64_t sub_18C011204()
{

  return swift_deallocObject();
}

uint64_t sub_18C01123C()
{
  outlined consume of Environment<Color?>.Content(*(v0 + 16), *(v0 + 24));
  outlined consume of Environment<Selector?>.Content(*(v0 + 32), *(v0 + 40));
  outlined consume of Environment<Selector?>.Content(*(v0 + 48), *(v0 + 56));
  outlined consume of Environment<Selector?>.Content(*(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t outlined init with copy of PrimitiveButtonStyleConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (*PlatformItemListTransform.value.getter(unint64_t a1))(void *a1)
{
  v1 = a1;
  v2 = HIDWORD(a1);
  Value = AGGraphGetValue();
  v5 = *Value;
  v4 = Value[1];
  v10[0] = v5;
  v10[1] = v4;

  LOBYTE(v5) = EnvironmentValues.accessibilityEnabled.getter();

  v6 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  if ((v5 & 1) != 0 && *MEMORY[0x1E698D3F8] != v1)
  {
    v7 = AGGraphGetValue();
    outlined init with copy of AccessibilityAttachment.Tree(v7, v10);
    v8 = swift_allocObject();
    memcpy(v8 + 4, v10, 0x129uLL);
    v8[79] = v1;
    v8[80] = v2;
    return partial apply for closure #2 in PlatformItemListTransform.value.getter;
  }

  return v6;
}

uint64_t sub_18C0115A8()
{
  if (*(v0 + 312) == 1)
  {

    goto LABEL_11;
  }

  if (*(v0 + 312))
  {
    goto LABEL_11;
  }

  v1 = *(v0 + 104);
  if (!v1)
  {
    goto LABEL_6;
  }

  if (v1 != 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 80);
LABEL_6:
  }

  if (*(v0 + 256) != 1)
  {
  }

LABEL_11:

  return swift_deallocObject();
}

void type metadata accessor for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<SwitchToggleStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<SwitchToggleStyle>>)
  {
    _s7SwiftUI6ToggleVyAA0C18StyleConfigurationV5LabelVGMaTm_0(255, &lazy cache variable for type metadata for Toggle<ToggleStyleConfiguration.Label>, &type metadata for ToggleStyleConfiguration.Label, &protocol witness table for ToggleStyleConfiguration.Label, type metadata accessor for Toggle);
    type metadata accessor for ToggleStyleModifier<CheckmarkToggleStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<SwitchToggleStyle>, lazy protocol witness table accessor for type SwitchToggleStyle and conformance SwitchToggleStyle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<SwitchToggleStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SwitchToggleStyle and conformance SwitchToggleStyle()
{
  result = lazy protocol witness table cache variable for type SwitchToggleStyle and conformance SwitchToggleStyle;
  if (!lazy protocol witness table cache variable for type SwitchToggleStyle and conformance SwitchToggleStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwitchToggleStyle and conformance SwitchToggleStyle);
  }

  return result;
}

uint64_t outlined init with copy of PlatformItemList.Item.SystemItem?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI5ImageVAAE8ResolvedVSgMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t outlined assign with copy of PlatformItemList.Item.Accessibility?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI5ImageVAAE8ResolvedVSgMaTm_0(0, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

size_t closure #1 in View.platformItemHierarchicalLevel(_:)(size_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v5 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    if (v3 > v2[2])
    {
      __break(1u);
    }

    else
    {
      v6 = type metadata accessor for PlatformItemList.Item();
      v7 = 0;
      v8 = *(v6 - 8);
      result = v6 - 8;
      v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v10 = *(v8 + 72);
      if (v3 == 1 || v10 != 1)
      {
        goto LABEL_13;
      }

      v7 = v3 & 0x7FFFFFFFFFFFFFFELL;
      v12 = (v2 + v9 + 41);
      v13 = v3 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        *(v12 - 1) = a2;
        *v12 = a2;
        v12 = (v12 + 2);
        v13 -= 2;
      }

      while (v13);
      if (v3 != v7)
      {
LABEL_13:
        v14 = v3 - v7;
        v15 = (v2 + v9 + v7 * v10 + 40);
        do
        {
          *v15 = a2;
          v15 = (v15 + v10);
          --v14;
        }

        while (v14);
      }

      *v5 = v2;
    }
  }

  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance OnPlatformContainerSelectionModifier@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 64);
  v11[3] = *(v1 + 48);
  v11[4] = v4;
  v12 = *(v1 + 80);
  v5 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v5;
  v11[2] = v3;
  v6 = swift_allocObject();
  v7 = *(v1 + 48);
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(v1 + 64);
  *(v6 + 96) = *(v1 + 80);
  v8 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v8;
  *a1 = partial apply for closure #1 in OnPlatformContainerSelectionModifier.body(content:);
  a1[1] = v6;
  return outlined init with copy of OnPlatformContainerSelectionModifier(v11, v10);
}

uint64_t sub_18C011C2C()
{
  if (*(v0 + 16))
  {
  }

  outlined consume of Environment<Selector?>.Content(*(v0 + 40), *(v0 + 48));
  outlined consume of Environment<KeyboardShortcut?>.Content(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 81));
  outlined consume of Environment<Selector?>.Content(*(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t closure #1 in OnPlatformContainerSelectionModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatformItemList.Item();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  if (*(*a1 + 16) == 1)
  {
    v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    outlined init with copy of PlatformItemList.Item(*a1 + v11, &v26 - v9);
    v12 = *a2;
    if (*a2)
    {
      v27 = v5;
      v28 = v7;
      v13 = *(a2 + 8);
      v14 = *(a2 + 72);
      v15 = *(a2 + 80);

      specialized Environment.wrappedValue.getter(v14, v15, v35);
      LODWORD(v26) = v35[0];
      v16 = *(a2 + 24);
      v17 = *(a2 + 32);
      v18 = specialized Environment.wrappedValue.getter(v16, v17);
      v29 = a1;
      if ((v18 & 1) == 0)
      {
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v12);
        v12 = 0;
        v13 = 0;
      }

      v19 = *(a2 + 16);
      v34 = v10[472];
      v20 = *(v10 + 456);
      v33[2] = *(v10 + 440);
      v33[3] = v20;
      v21 = *(v10 + 424);
      v33[0] = *(v10 + 408);
      v33[1] = v21;
      _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v33, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
      v10[408] = v19;
      *(v10 + 409) = 1;
      *(v10 + 52) = v12;
      *(v10 + 53) = v13;
      *(v10 + 27) = 0u;
      *(v10 + 28) = 0u;
      *(v10 + 58) = 0;
      v10[472] = v26;
      v10[56] = specialized Environment.wrappedValue.getter(v16, v17) & 1;
      specialized Environment.wrappedValue.getter(*(a2 + 40), *(a2 + 48), *(a2 + 56), *(a2 + 64) | (*(a2 + 65) << 8), &v30);
      v26 = v30;
      v22 = v31;
      v23 = v32;

      *(v10 + 30) = v26;
      *(v10 + 62) = v22;
      v10[504] = v23;
      v7 = v28;
      a1 = v29;
    }

    outlined init with copy of PlatformItemList.Item(v10, v7);
    _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_18CD63400;
    outlined init with take of PlatformItemList.Item(v7, v24 + v11);

    *a1 = v24;
    return _s7SwiftUI16CommandOperationVWOhTm_0(v10, type metadata accessor for PlatformItemList.Item);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, FocusEventProxyModifier>, AddGestureModifier<_EndedGesture<PhysicalButtonPressGesture>, DefaultGestureCombiner>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

int *closure #1 in View.platformItemTint(_:)(int *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v5 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_11:
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    }

    for (i = 0; i != v3; ++i)
    {
      if (i >= v2[2])
      {
        __break(1u);
        goto LABEL_11;
      }

      v7 = type metadata accessor for PlatformItemList.Item();
      v8 = *(v7 - 8);
      result = (v7 - 8);
      v9 = v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * i;
      v10 = result[36];
      if (!*(v9 + v10))
      {
        *(v9 + v10) = a2;
      }
    }

    *v5 = v2;
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, FocusEventProxyModifier>, AddGestureModifier<_EndedGesture<PhysicalButtonPressGesture>, DefaultGestureCombiner>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, FocusEventProxyModifier>, AddGestureModifier<_EndedGesture<PhysicalButtonPressGesture>, DefaultGestureCombiner>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, FocusEventProxyModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, FocusEventProxyModifier>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>);
    type metadata accessor for AddGestureModifier<_EndedGesture<PhysicalButtonPressGesture>, DefaultGestureCombiner>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, FocusEventProxyModifier>, AddGestureModifier<_EndedGesture<PhysicalButtonPressGesture>, DefaultGestureCombiner>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>();
    type metadata accessor for _ContentShapeModifier<Capsule>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityCombinedLabeledContent>, lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, MEMORY[0x1E697FD28]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>);
    }
  }
}

uint64_t closure #3 in PlatformItemListButtonStyle.makeBody(configuration:)(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v26 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_24:
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    }

    v5 = 0;
    while (1)
    {
      if (v5 >= v2[2])
      {
        __break(1u);
        goto LABEL_24;
      }

      v13 = type metadata accessor for PlatformItemList.Item();
      v14 = *(v13 - 8);
      result = v13 - 8;
      v15 = v2 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v5;
      if (*(v15 + 336) >> 2 != 0xFFFFFFFFLL)
      {
        goto LABEL_6;
      }

      v35 = *(a2 + 24);
      v16 = *(a2 + 16);
      v34 = v16;
      if (v35 == 1)
      {
        v31 = v16 & 1;
        if (v16)
        {
          goto LABEL_15;
        }
      }

      else
      {

        v17 = static os_log_type_t.fault.getter();
        v18 = static Log.runtimeIssuesLog.getter();
        if (os_log_type_enabled(v18, v17))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *&v29[0] = v20;
          *v19 = 136315138;
          *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(1819242306, 0xE400000000000000, v29);
          _os_log_impl(&dword_18BD4A000, v18, v17, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v20);
          MEMORY[0x18D0110E0](v20, -1, -1);
          MEMORY[0x18D0110E0](v19, -1, -1);
        }

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        outlined destroy of Environment<Bool>(&v34, &lazy cache variable for type metadata for Environment<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);

        if (v31)
        {
LABEL_15:
          v33 = *(a2 + 40);
          v21 = *(a2 + 32);
          v32 = v21;
          if (v33 == 1)
          {
            v7 = v21;
          }

          else
          {
            outlined init with copy of Environment<PaletteSelectionEffect>(&v32, v29);
            v22 = static os_log_type_t.fault.getter();
            v23 = static Log.runtimeIssuesLog.getter();
            if (os_log_type_enabled(v23, v22))
            {
              v24 = swift_slowAlloc();
              v25 = swift_slowAlloc();
              *&v29[0] = v25;
              *v24 = 136315138;
              *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000018CD3F690, v29);
              _os_log_impl(&dword_18BD4A000, v23, v22, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v24, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v25);
              MEMORY[0x18D0110E0](v25, -1, -1);
              MEMORY[0x18D0110E0](v24, -1, -1);
            }

            EnvironmentValues.init()();
            swift_getAtKeyPath();
            outlined destroy of Environment<Bool>(&v32, &lazy cache variable for type metadata for Environment<PaletteSelectionEffect>, &type metadata for PaletteSelectionEffect, MEMORY[0x1E697DCC0]);

            v7 = v28;
          }

          v6 = v27 & 3;
          v27 &= 3u;
          goto LABEL_5;
        }
      }

      v6 = 0xC000000000000000;
      v7 = 6;
LABEL_5:
      v8 = *(v15 + 304);
      v9 = *(v15 + 336);
      v29[1] = *(v15 + 320);
      v29[2] = v9;
      v29[0] = v8;
      v10 = *(v15 + 352);
      v11 = *(v15 + 368);
      v12 = *(v15 + 384);
      v30 = *(v15 + 400);
      v29[4] = v11;
      v29[5] = v12;
      v29[3] = v10;
      *(v15 + 304) = v7;
      *(v15 + 312) = 0;
      *(v15 + 320) = 0;
      *(v15 + 328) = 0;
      *(v15 + 336) = v6;
      *(v15 + 344) = 0u;
      *(v15 + 360) = 0u;
      *(v15 + 376) = 0u;
      *(v15 + 392) = 0u;
      result = outlined destroy of Environment<Bool>(v29, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem, MEMORY[0x1E69E6720]);
LABEL_6:
      if (v3 == ++v5)
      {
        *v26 = v2;
        return result;
      }
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>)
  {
    type metadata accessor for ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>();
    type metadata accessor for _ContentShapeModifier<Capsule>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>, lazy protocol witness table accessor for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting, &type metadata for ListLabeledContentAllowsOutsetting, MEMORY[0x1E697FD28]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>);
    }
  }
}

void type metadata accessor for ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>)
  {
    type metadata accessor for LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>();
    type metadata accessor for _ContentShapeModifier<Capsule>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>, lazy protocol witness table accessor for type ListLabeledContentPrefersHorizontalLayout and conformance ListLabeledContentPrefersHorizontalLayout, &type metadata for ListLabeledContentPrefersHorizontalLayout, MEMORY[0x1E697FD28]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>);
    }
  }
}

uint64_t outlined destroy of Environment<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for Environment<Bool>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>()
{
  if (!lazy cache variable for type metadata for LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>(255);
    v0 = type metadata accessor for LabeledContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>);
    }
  }
}

void type metadata accessor for Environment<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

size_t closure #1 in View.platformItemKeepsMenuPresented(_:)(size_t result, char a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v5 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    if (v3 > v2[2])
    {
      __break(1u);
    }

    else
    {
      result = type metadata accessor for PlatformItemList.Item();
      v6 = v2 + ((*(*(result - 8) + 80) + 32) & ~*(*(result - 8) + 80));
      v7 = *(*(result - 8) + 72);
      do
      {
        v6[*(result + 120)] = a2 & 1;
        v6 += v7;
        --v3;
      }

      while (v3);
      *v5 = v2;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, FocusEventProxyModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>)
  {
    type metadata accessor for ModifiedContent<Switch, _FixedSizeLayout>(255, &lazy cache variable for type metadata for ModifiedContent<Switch, _FixedSizeLayout>, MEMORY[0x1E697EBE8], MEMORY[0x1E697E830]);
    type metadata accessor for _ContentShapeModifier<Capsule>(255, &lazy cache variable for type metadata for _ContentShapeModifier<Capsule>, lazy protocol witness table accessor for type Capsule and conformance Capsule, MEMORY[0x1E69819A8], MEMORY[0x1E697FD48]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Switch, _FixedSizeLayout>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v5 = a4(0, &type metadata for Switch);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for _ContentShapeModifier<Capsule>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

size_t closure #1 in View.platformItemToggleState(_:)(size_t result, unsigned int a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v5 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    if (v3 > v2[2])
    {
      __break(1u);
      return result;
    }

    v6 = type metadata accessor for PlatformItemList.Item();
    v7 = 0;
    v8 = *(v6 - 8);
    result = v6 - 8;
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = *(v8 + 72);
    if (v3 < 8 || v10 != 1)
    {
LABEL_19:
      v19 = v3 - v7;
      v20 = v2 + v9 + v7 * v10 + 954;
      do
      {
        *v20 = a2;
        v20 += v10;
        --v19;
      }

      while (v19);
LABEL_21:
      *v5 = v2;
      return result;
    }

    if (v3 >= 0x20)
    {
      v12 = (v2 + v9 + 954);
      v7 = v3 & 0x7FFFFFFFFFFFFFE0;
      v13 = vdupq_n_s8(a2);
      v14 = v3 & 0x7FFFFFFFFFFFFFE0;
      do
      {
        *v12 = v13;
        v12[1] = v13;
        v12 += 2;
        v14 -= 32;
      }

      while (v14);
      if (v3 == v7)
      {
        goto LABEL_21;
      }

      if ((v3 & 0x18) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v7 = 0;
    }

    v15 = v7;
    v7 = v3 & 0x7FFFFFFFFFFFFFF8;
    v16 = vdup_n_s8(a2);
    v17 = (v2 + v15 + v9 + 954);
    v18 = v15 - (v3 & 0x7FFFFFFFFFFFFFF8);
    do
    {
      *v17++ = v16;
      v18 += 8;
    }

    while (v18);
    if (v3 == v7)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Capsule and conformance Capsule()
{
  result = lazy protocol witness table cache variable for type Capsule and conformance Capsule;
  if (!lazy protocol witness table cache variable for type Capsule and conformance Capsule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Capsule and conformance Capsule);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Capsule and conformance Capsule;
  if (!lazy protocol witness table cache variable for type Capsule and conformance Capsule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Capsule and conformance Capsule);
  }

  return result;
}

void *closure #3 in PickerItemView.body.getter(void *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2)
  {
    v3 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_11:
      v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    }

    for (i = 0; i != v2; ++i)
    {
      if (i >= v1[2])
      {
        __break(1u);
        goto LABEL_11;
      }

      v5 = type metadata accessor for PlatformItemList.Item();
      v6 = *(v5 - 8);
      result = (v5 - 8);
      v7 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * i;
      if (*(v7 + 416) != 1)
      {
        *(v7 + 411) = 1;
      }
    }

    *v3 = v1;
  }

  return result;
}

void *closure #1 in View.collapsingInlinePickerSections()(void *a1)
{
  v2 = type metadata accessor for PlatformItemList.Item();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v115 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v115 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v115 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v130 = &v115 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v135 = &v115 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v115 - v20);
  type metadata accessor for PlatformItemList.Item?(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v129 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v26 = MEMORY[0x1E69E7CC0];
  v176 = MEMORY[0x1E69E7CC0];
  v27 = *(v3 + 56);
  v138 = &v115 - v28;
  v136 = v2;
  v131 = v27;
  v132 = v3 + 56;
  result = v27(v25);
  v137 = a1;
  v30 = *a1;
  v31 = *(*a1 + 16);
  if (!v31)
  {
LABEL_60:

    if (v26[2])
    {
      specialized Array.append<A>(contentsOf:)(v26);
      result = _s7SwiftUI16PlatformItemListV0D0VWOhTm_1(v138, type metadata accessor for PlatformItemList.Item?);
    }

    else
    {
      _s7SwiftUI16PlatformItemListV0D0VWOhTm_1(v138, type metadata accessor for PlatformItemList.Item?);
    }

    *v137 = v176;
    return result;
  }

  v124 = v11;
  v125 = v8;
  LODWORD(v134) = 0;
  v140 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v141 = v30 + v140;
  v126 = (v3 + 48);
  v127 = v14;
  v122 = v11 + 424;
  v123 = v11 + 344;
  v119 = v11 + 512;
  v120 = v11 + 408;
  v121 = v11 + 536;
  v118 = v11 + 872;
  v128 = v31 - 1;
  v117 = xmmword_18CD633F0;
  v133 = v26;
  v139 = v3;
  v32 = 0;
  while (v32 < *(v30 + 16))
  {
    v33 = *(v3 + 72);
    _s7SwiftUI16PlatformItemListV0D0VWOcTm_1(v141 + v33 * v32, v21, type metadata accessor for PlatformItemList.Item);
    v34 = v21[42];
    if (v34 >> 62 != 3 || (v34 & 0xFFFFFFFFFFFFFFFCLL) == 0x3FFFFFFFCLL)
    {
      goto LABEL_16;
    }

    v35 = v21[38];
    v36 = v21[39];
    v37 = v21[40];
    v38 = v21[41];
    v40 = v21[43];
    v39 = v21[44];
    v41 = v21[45];
    v42 = v21[46];
    v43 = v21[47];
    v44 = v21[48];
    v45 = v21[49];
    v46 = v21[50];
    v47 = v34 == 0xC000000000000000 && (v36 | v35 | v37 | v38 | v40 | v39 | v41 | v42 | v43 | v44 | v45 | v46) == 0;
    v48 = v47;
    if (v47)
    {
      v134 = v31;
      v51 = v129;
      _s7SwiftUI16PlatformItemListV0D0VWOcTm_1(v138, v129, type metadata accessor for PlatformItemList.Item?);
      if ((*v126)(v51, 1, v136) == 1)
      {
        _s7SwiftUI16PlatformItemListV0D0VWOhTm_1(v51, type metadata accessor for PlatformItemList.Item?);
        if (v26[2])
        {
          _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v161);
          v159 = 0u;
          v160 = 0u;
          v157 = 0u;
          v158 = 0u;
          v155 = 0u;
          v156 = 0u;
          v153 = 0u;
          v154 = 0u;
          v151 = 0u;
          v152 = 0u;
          v149 = 0u;
          v150 = 0u;
          v147 = 0u;
          v148 = 0u;
          v145 = 0u;
          v146 = 0u;
          v143 = 0u;
          v144 = 0u;
          v142 = 0u;
          v52 = v124;
          *(v124 + 1) = 0;
          *(v52 + 16) = 0;
          *(v52 + 32) = 0;
          *(v52 + 24) = 0;
          *(v52 + 40) = -1;
          *(v52 + 56) = 1;
          v53 = v170;
          *(v52 + 192) = v169;
          *(v52 + 208) = v53;
          *(v52 + 224) = v171[0];
          *(v52 + 235) = *(v171 + 11);
          v54 = v166;
          *(v52 + 128) = v165;
          *(v52 + 144) = v54;
          v55 = v168;
          *(v52 + 160) = v167;
          *(v52 + 176) = v55;
          v56 = v162;
          *(v52 + 64) = v161;
          *(v52 + 80) = v56;
          v57 = v164;
          *(v52 + 96) = v163;
          *(v52 + 112) = v57;
          *(v52 + 304) = 0u;
          *(v52 + 320) = 0u;
          *(v52 + 272) = 0u;
          *(v52 + 288) = 0u;
          *(v52 + 256) = 0u;
          *(v52 + 336) = 0x3FFFFFFFCLL;
          v58 = v122;
          v59 = v123;
          *v123 = 0u;
          v59[1] = 0u;
          v59[2] = 0u;
          v59[3] = 0u;
          *(v59 + 8) = 0;
          *(v52 + 416) = 1;
          *v58 = 0u;
          v58[1] = 0u;
          v58[2] = 0u;
          *(v58 + 48) = 0;
          *(v52 + 488) = 0;
          *(v52 + 496) = 0;
          *(v52 + 480) = 0;
          *(v52 + 504) = 0;
          v60 = v119;
          *v119 = 0;
          v60[1] = 0;
          *(v52 + 528) = 4;
          v61 = v121;
          *v121 = 0u;
          v61[1] = 0u;
          v61[2] = 0u;
          v61[3] = 0u;
          v61[4] = 0u;
          v61[5] = 0u;
          v61[6] = 0u;
          v61[7] = 0u;
          v61[8] = 0u;
          v61[9] = 0u;
          v61[10] = 0u;
          v61[11] = 0u;
          v61[12] = 0u;
          v61[13] = 0u;
          v61[14] = 0u;
          v61[15] = 0u;
          v61[16] = 0u;
          v61[17] = 0u;
          v61[18] = 0u;
          v61[19] = 0u;
          *(v61 + 40) = 0;
          *(v52 + 864) = 1;
          *(v52 + 944) = 0;
          v62 = v118;
          *v118 = 0u;
          v62[1] = 0u;
          v62[2] = 0u;
          v62[3] = 0u;
          *(v52 + 953) = 773;
          v63 = v136;
          v116 = v136[28];
          v64 = type metadata accessor for CommandOperation();
          (*(*(v64 - 8) + 56))(v52 + v116, 1, 1, v64);
          *(v52 + v63[29]) = 0;
          *(v52 + v63[30]) = 0;
          *(v52 + v63[31]) = 2;
          *(v52 + v63[32]) = 0;
          *(v52 + v63[33]) = 0;
          v116 = v63[34];
          *v52 = 0;
          v65 = *(v52 + 208);
          v172[8] = *(v52 + 192);
          v172[9] = v65;
          v173[0] = *(v52 + 224);
          *(v173 + 11) = *(v52 + 235);
          v66 = *(v52 + 144);
          v172[4] = *(v52 + 128);
          v172[5] = v66;
          v67 = *(v52 + 176);
          v172[6] = *(v52 + 160);
          v172[7] = v67;
          v68 = *(v52 + 80);
          v172[0] = *(v52 + 64);
          v172[1] = v68;
          v69 = *(v52 + 112);
          v172[2] = *(v52 + 96);
          v172[3] = v69;
          _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOhTm_0(v172, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
          v70 = v170;
          *(v52 + 192) = v169;
          *(v52 + 208) = v70;
          *(v52 + 224) = v171[0];
          *(v52 + 235) = *(v171 + 11);
          v71 = v166;
          *(v52 + 128) = v165;
          *(v52 + 144) = v71;
          v72 = v168;
          *(v52 + 160) = v167;
          *(v52 + 176) = v72;
          v73 = v162;
          *(v52 + 64) = v161;
          *(v52 + 80) = v73;
          v74 = v164;
          *(v52 + 96) = v163;
          *(v52 + 112) = v74;
          v75 = v120;
          v76 = *(v120 + 3);
          v174[2] = *(v120 + 2);
          v174[3] = v76;
          v175 = v120[64];
          v77 = *(v120 + 1);
          v174[0] = *v120;
          v174[1] = v77;
          _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOhTm_0(v174, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
          *v75 = v117;
          v78 = v121;
          v79 = v122;
          *v122 = 0u;
          v79[1] = 0u;
          v79[2] = 0u;
          *(v79 + 48) = 0;
          outlined assign with take of PlatformItemList.Item.Accessibility?(&v142, v78);
          *(v52 + v116) = 0;
          *(v52 + 48) = 0;
          *(v52 + 936) = v26;
          *(v52 + 952) = 0;
          v80 = *(v52 + 384);
          v146 = *(v52 + 368);
          v147 = v80;
          *&v148 = *(v52 + 400);
          v81 = *(v52 + 320);
          v142 = *(v52 + 304);
          v143 = v81;
          v82 = *(v52 + 352);
          v144 = *(v52 + 336);
          v145 = v82;
          _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOhTm_0(&v142, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem);
          *(v52 + 304) = 2;
          *(v52 + 312) = 0;
          *(v52 + 320) = 0;
          *(v52 + 328) = 0;
          *(v52 + 336) = 0xC000000000000000;
          v83 = v123;
          *v123 = 0u;
          v83[1] = 0u;
          v83[2] = 0u;
          v83[3] = 0u;
          _s7SwiftUI16PlatformItemListV0D0VWOcTm_1(v52, v125, type metadata accessor for PlatformItemList.Item);
          v84 = v133;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v31 = v134;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v84[2] + 1, 1, v84);
          }

          v87 = v84[2];
          v86 = v84[3];
          v133 = v84;
          v88 = v87 + 1;
          v115 = v87 + 1;
          v116 = v87;
          v89 = v87 >= v86 >> 1;
          v90 = v138;
          v3 = v139;
          if (v89)
          {
            v133 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v86 > 1, v88, 1, v133);
            v90 = v138;
          }

          _s7SwiftUI16PlatformItemListV0D0VWOhTm_1(v90, type metadata accessor for PlatformItemList.Item?);
          v91 = v133;
          v92 = v116;
          v133[2] = v115;
          v93 = v91 + v140 + v92 * v33;
          v94 = v138;
          outlined init with take of PlatformItemList.Item(v125, v93);
          v176 = v91;
          _s7SwiftUI16PlatformItemListV0D0VWOhTm_1(v124, type metadata accessor for PlatformItemList.Item);
        }

        else
        {
          v94 = v138;
          _s7SwiftUI16PlatformItemListV0D0VWOhTm_1(v138, type metadata accessor for PlatformItemList.Item?);

          v31 = v134;
        }
      }

      else
      {
        v98 = v51;
        v99 = v130;
        outlined init with take of PlatformItemList.Item(v98, v130);

        *(v99 + 936) = v26;
        _s7SwiftUI16PlatformItemListV0D0VWOcTm_1(v99, v127, type metadata accessor for PlatformItemList.Item);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v133 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v133[2] + 1, 1, v133);
        }

        v31 = v134;
        v100 = v133[3];
        v101 = v138;
        v134 = v133[2];
        v116 = v134 + 1;
        if (v134 >= v100 >> 1)
        {
          v133 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v100 > 1, v134 + 1, 1, v133);
          v101 = v138;
        }

        _s7SwiftUI16PlatformItemListV0D0VWOhTm_1(v101, type metadata accessor for PlatformItemList.Item?);
        v103 = v133;
        v102 = v134;
        v133[2] = v116;
        v104 = v103 + v140 + v102 * v33;
        v94 = v138;
        outlined init with take of PlatformItemList.Item(v127, v104);
        v176 = v103;
        _s7SwiftUI16PlatformItemListV0D0VWOhTm_1(v130, type metadata accessor for PlatformItemList.Item);
      }

      (v131)(v94, 1, 1, v136);
      goto LABEL_43;
    }

    if (v34 == 0xC000000000000000 && v35 == 2 && !(v37 | v36 | v38 | v40 | v39 | v41 | v42 | v43 | v44 | v45 | v46))
    {
      if (v134)
      {
        _s7SwiftUI16PlatformItemListV0D0VWOcTm_1(v21, v135, type metadata accessor for PlatformItemList.Item);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
        }

        v96 = v26[2];
        v95 = v26[3];
        v97 = v96 + 1;
        if (v96 >= v95 >> 1)
        {
          v114 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v95 > 1, v96 + 1, 1, v26);
          v97 = v96 + 1;
          v26 = v114;
        }

        v26[2] = v97;
        outlined init with take of PlatformItemList.Item(v135, v26 + v140 + v96 * v33);
        result = _s7SwiftUI16PlatformItemListV0D0VWOhTm_1(v21, type metadata accessor for PlatformItemList.Item);
        LODWORD(v134) = 1;
        v3 = v139;
        if (v128 == v32)
        {
          goto LABEL_60;
        }

        ++v32;
      }

      else
      {
        v105 = v138;
        _s7SwiftUI16PlatformItemListV0D0VWOhTm_1(v138, type metadata accessor for PlatformItemList.Item?);
        _s7SwiftUI16PlatformItemListV0D0VWOcTm_1(v21, v105, type metadata accessor for PlatformItemList.Item);
        result = (v131)(v105, 0, 1, v136);
        v106 = v133;
        v107 = v133[2];
        v134 = v26[2];
        v115 = v107;
        v116 = v107 + v134;
        if (__OFADD__(v107, v134))
        {
          goto LABEL_65;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || v116 > v106[3] >> 1)
        {
          if (v115 <= v116)
          {
            v108 = v116;
          }

          else
          {
            v108 = v115;
          }

          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v108, 1, v106);
          v133 = result;
        }

        v3 = v139;
        if (v26[2])
        {
          if ((v133[3] >> 1) - v133[2] < v134)
          {
            goto LABEL_67;
          }

          v109 = v134;
          swift_arrayInitWithCopy();

          v110 = v133;
          if (v109)
          {
            v111 = v133[2];
            v112 = __OFADD__(v111, v109);
            v113 = v111 + v109;
            if (v112)
            {
              goto LABEL_68;
            }

            v133[2] = v113;
          }
        }

        else
        {

          v110 = v133;
          if (v134)
          {
            goto LABEL_66;
          }
        }

        v176 = v110;
LABEL_43:
        result = _s7SwiftUI16PlatformItemListV0D0VWOhTm_1(v21, type metadata accessor for PlatformItemList.Item);
        if (v128 == v32)
        {
          v26 = MEMORY[0x1E69E7CC0];
          goto LABEL_60;
        }

        LODWORD(v134) = v48 ^ 1;
        ++v32;
        v26 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
LABEL_16:
      _s7SwiftUI16PlatformItemListV0D0VWOcTm_1(v21, v5, type metadata accessor for PlatformItemList.Item);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
      }

      v50 = v26[2];
      v49 = v26[3];
      if (v50 >= v49 >> 1)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v49 > 1, v50 + 1, 1, v26);
      }

      ++v32;
      v26[2] = v50 + 1;
      outlined init with take of PlatformItemList.Item(v5, v26 + v140 + v50 * v33);
      result = _s7SwiftUI16PlatformItemListV0D0VWOhTm_1(v21, type metadata accessor for PlatformItemList.Item);
      v3 = v139;
      if (v31 == v32)
      {
        goto LABEL_60;
      }
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

void type metadata accessor for AddGestureModifier<_EndedGesture<PhysicalButtonPressGesture>, DefaultGestureCombiner>()
{
  if (!lazy cache variable for type metadata for AddGestureModifier<_EndedGesture<PhysicalButtonPressGesture>, DefaultGestureCombiner>)
  {
    type metadata accessor for _EndedGesture<PhysicalButtonPressGesture>();
    lazy protocol witness table accessor for type _EndedGesture<PhysicalButtonPressGesture> and conformance _EndedGesture<A>(&lazy protocol witness table cache variable for type _EndedGesture<PhysicalButtonPressGesture> and conformance _EndedGesture<A>, type metadata accessor for _EndedGesture<PhysicalButtonPressGesture>);
    lazy protocol witness table accessor for type DefaultGestureCombiner and conformance DefaultGestureCombiner();
    v0 = type metadata accessor for AddGestureModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AddGestureModifier<_EndedGesture<PhysicalButtonPressGesture>, DefaultGestureCombiner>);
    }
  }
}

void type metadata accessor for _EndedGesture<PhysicalButtonPressGesture>()
{
  if (!lazy cache variable for type metadata for _EndedGesture<PhysicalButtonPressGesture>)
  {
    lazy protocol witness table accessor for type PhysicalButtonPressGesture and conformance PhysicalButtonPressGesture();
    v0 = type metadata accessor for _EndedGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EndedGesture<PhysicalButtonPressGesture>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EndedGesture<PhysicalButtonPressGesture> and conformance _EndedGesture<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI13_EndedGestureVyAA019PhysicalButtonPressD0VGACyxGAA0D0AAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t closure #2 in View.platformItemChildren<A>(systemItem:primaryAction:menuIndicatorVisibility:controlSize:children:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v50 = a6;
  v47 = a5;
  v52 = a1;
  v8 = type metadata accessor for PlatformItemList.Item();
  v9 = (v8 - 8);
  v49 = *(v8 - 8);
  v51 = v49;
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  v46 = *a1;
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v73);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v56 = 0u;
  v54 = 0u;
  v55 = 0u;
  v13[32] = 0;
  *(v13 + 3) = 0;
  *(v13 + 8) = 0u;
  *(v13 + 5) = -1;
  v13[56] = 1;
  v14 = v82;
  *(v13 + 12) = v81;
  *(v13 + 13) = v14;
  *(v13 + 14) = v83[0];
  *(v13 + 235) = *(v83 + 11);
  v15 = v78;
  *(v13 + 8) = v77;
  *(v13 + 9) = v15;
  v16 = v80;
  *(v13 + 10) = v79;
  *(v13 + 11) = v16;
  v17 = v74;
  *(v13 + 4) = v73;
  *(v13 + 5) = v17;
  v18 = v76;
  *(v13 + 6) = v75;
  *(v13 + 7) = v18;
  *(v13 + 19) = 0u;
  *(v13 + 20) = 0u;
  *(v13 + 17) = 0u;
  *(v13 + 18) = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 42) = 0x3FFFFFFFCLL;
  *(v13 + 344) = 0u;
  *(v13 + 360) = 0u;
  *(v13 + 376) = 0u;
  *(v13 + 392) = 0u;
  *(v13 + 51) = 0;
  *(v13 + 52) = 1;
  *(v13 + 424) = 0u;
  *(v13 + 440) = 0u;
  *(v13 + 456) = 0u;
  v13[472] = 0;
  *(v13 + 60) = 0;
  *(v13 + 488) = 0u;
  v13[504] = 0;
  *(v13 + 32) = 0u;
  v13[528] = 4;
  *(v13 + 536) = 0u;
  *(v13 + 552) = 0u;
  *(v13 + 568) = 0u;
  *(v13 + 584) = 0u;
  *(v13 + 600) = 0u;
  *(v13 + 616) = 0u;
  *(v13 + 632) = 0u;
  *(v13 + 648) = 0u;
  *(v13 + 664) = 0u;
  *(v13 + 680) = 0u;
  *(v13 + 696) = 0u;
  *(v13 + 712) = 0u;
  *(v13 + 728) = 0u;
  *(v13 + 744) = 0u;
  *(v13 + 760) = 0u;
  *(v13 + 776) = 0u;
  *(v13 + 792) = 0u;
  *(v13 + 808) = 0u;
  *(v13 + 824) = 0u;
  *(v13 + 840) = 0u;
  *(v13 + 107) = 0;
  *(v13 + 108) = 1;
  *(v13 + 118) = 0;
  *(v13 + 872) = 0u;
  *(v13 + 888) = 0u;
  *(v13 + 904) = 0u;
  *(v13 + 920) = 0u;
  *(v13 + 953) = 773;
  v19 = v9[30];
  v20 = type metadata accessor for CommandOperation();
  (*(*(v20 - 8) + 56))(&v13[v19], 1, 1, v20);
  v13[v9[31]] = 0;
  v13[v9[32]] = 0;
  v13[v9[33]] = 2;
  v13[v9[34]] = 0;
  v13[v9[35]] = 0;
  v45 = v9[36];
  *v13 = 0;
  v21 = *(v13 + 13);
  v84[8] = *(v13 + 12);
  v84[9] = v21;
  v85[0] = *(v13 + 14);
  *(v85 + 11) = *(v13 + 235);
  v22 = *(v13 + 9);
  v84[4] = *(v13 + 8);
  v84[5] = v22;
  v23 = *(v13 + 11);
  v84[6] = *(v13 + 10);
  v84[7] = v23;
  v24 = *(v13 + 5);
  v84[0] = *(v13 + 4);
  v84[1] = v24;
  v25 = *(v13 + 7);
  v84[2] = *(v13 + 6);
  v84[3] = v25;
  _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v84, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
  v26 = v82;
  *(v13 + 12) = v81;
  *(v13 + 13) = v26;
  *(v13 + 14) = v83[0];
  *(v13 + 235) = *(v83 + 11);
  v27 = v78;
  *(v13 + 8) = v77;
  *(v13 + 9) = v27;
  v28 = v80;
  *(v13 + 10) = v79;
  *(v13 + 11) = v28;
  v29 = v74;
  *(v13 + 4) = v73;
  *(v13 + 5) = v29;
  v30 = v76;
  *(v13 + 6) = v75;
  *(v13 + 7) = v30;
  v31 = *(v13 + 456);
  v86[2] = *(v13 + 440);
  v86[3] = v31;
  v87 = v13[472];
  v32 = *(v13 + 424);
  v86[0] = *(v13 + 408);
  v86[1] = v32;
  _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v86, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
  *(v13 + 408) = xmmword_18CD633F0;
  *(v13 + 424) = 0u;
  *(v13 + 440) = 0u;
  *(v13 + 456) = 0u;
  v13[472] = 0;
  outlined assign with take of PlatformItemList.Item.Accessibility?(&v54, (v13 + 536), &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility);
  v33 = v46;
  *&v13[v45] = 0;
  *(v13 + 6) = 0;
  *(v13 + 117) = v33;
  v13[952] = v47;
  v34 = *(v13 + 24);
  v58 = *(v13 + 23);
  v59 = v34;
  *&v60 = *(v13 + 50);
  v35 = *(v13 + 20);
  v54 = *(v13 + 19);
  v55 = v35;
  v36 = *(v13 + 22);
  v56 = *(v13 + 21);
  v57 = v36;
  outlined init with copy of PlatformItemList.Item.SystemItem?(a2, &v53, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem);
  _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(&v54, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem);
  v37 = *(a2 + 80);
  *(v13 + 23) = *(a2 + 64);
  *(v13 + 24) = v37;
  *(v13 + 50) = *(a2 + 96);
  v38 = *(a2 + 16);
  *(v13 + 19) = *a2;
  *(v13 + 20) = v38;
  v39 = *(a2 + 48);
  *(v13 + 21) = *(a2 + 32);
  *(v13 + 22) = v39;
  v13[953] = v50;
  v40 = v48;
  outlined init with copy of PlatformItemList.Item(v13, v48);
  _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
  v41 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_18CD63400;
  outlined init with take of PlatformItemList.Item(v40, v42 + v41);
  result = _s7SwiftUI16CommandOperationVWOhTm_0(v13, type metadata accessor for PlatformItemList.Item);
  *v52 = v42;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, FocusEventProxyModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, FocusEventProxyModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, FocusEventProxyModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, FocusEventProxyModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, FocusEventProxyModifier>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, FocusEventProxyModifier>, AddGestureModifier<_EndedGesture<PhysicalButtonPressGesture>, DefaultGestureCombiner>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityCombinedLabeledContent> and conformance ViewInputFlagModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, FocusEventProxyModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

double DefaultToggleStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v22 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 64);
  v7 = *(a1 + 72);
  if (v7)
  {
    v20 = *(a1 + 48);
    v21 = *(a1 + 64) & 1;
    v18 = *(a1 + 80);
    v19 = *(a1 + 56);
    v17 = *(a1 + 88);
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v17 = 0;
    v18 = 0;
  }

  KeyPath = swift_getKeyPath();
  v60 = 0;

  outlined copy of ToggleStyleConfiguration.Effect(v5, v6, v8, v7);
  outlined copy of Environment<Color?>.Content(KeyPath, 0);
  outlined consume of Environment<Color?>.Content(KeyPath, 0);
  v10 = swift_getKeyPath();
  v28 = 0;
  v11 = swift_getKeyPath();
  v27 = 0;
  v12 = swift_getKeyPath();
  v26 = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  v25 = BYTE8(v52);
  v24 = BYTE8(v53);
  *&v29 = v10;
  BYTE8(v29) = 0;
  *&v30 = v11;
  BYTE8(v30) = 0;
  v31 = v12;
  v32 = 0uLL;
  LOBYTE(v33) = 0;
  *(&v33 + 1) = v52;
  LOBYTE(v34) = BYTE8(v52);
  *(&v34 + 1) = v53;
  LOBYTE(v35) = BYTE8(v53);
  *(&v35 + 1) = v54;
  v36 = BYTE8(v54);
  v59 = BYTE8(v54);
  v57 = v34;
  v58 = v35;
  v55 = 0uLL;
  v56 = v33;
  v53 = v30;
  v54 = v12;
  v52 = v29;
  v37 = v10;
  v38 = 0;
  v39 = v11;
  v40 = 0;
  v41 = v12;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = *(&v33 + 1);
  v47 = v25;
  v48 = *(&v34 + 1);
  v49 = v24;
  v50 = *(&v35 + 1);
  v51 = v36;
  outlined init with copy of StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>(&v29, v23);
  outlined destroy of StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>(&v37);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v22;
  *(a2 + 24) = v20;
  *(a2 + 32) = v19;
  *(a2 + 40) = v21;
  *(a2 + 48) = v7;
  *(a2 + 56) = v18;
  *(a2 + 64) = v17;
  *(a2 + 72) = KeyPath;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v13 = v57;
  *(a2 + 160) = v56;
  *(a2 + 176) = v13;
  *(a2 + 192) = v58;
  *(a2 + 208) = v59;
  v14 = v53;
  *(a2 + 96) = v52;
  *(a2 + 112) = v14;
  result = *&v54;
  v16 = v55;
  *(a2 + 128) = v54;
  *(a2 + 144) = v16;
  return result;
}

uint64_t sub_18C014A10@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.sizeCategory.getter();
  *a1 = v3;
  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>(uint64_t a1)
{
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ToggleStyleModifier<CheckmarkToggleStyle>, EmptyModifier>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>> and conformance <> LabeledContent<A, B>()
{
  result = lazy protocol witness table cache variable for type LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>> and conformance <> LabeledContent<A, B>;
  if (!lazy protocol witness table cache variable for type LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>> and conformance <> LabeledContent<A, B>)
  {
    type metadata accessor for LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>> and conformance <> LabeledContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<ToggleStyleConfiguration.Label, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier>, AccessibilityAttachmentModifier>, IgnoreViewRespondersModifier>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, FocusEventProxyModifier>, AddGestureModifier<_EndedGesture<PhysicalButtonPressGesture>, DefaultGestureCombiner>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, lazy protocol witness table accessor for type ModifiedContent<Switch, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _ContentShapeModifier<Capsule> and conformance _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Switch, _FixedSizeLayout>, _ContentShapeModifier<Capsule>>, CaptureViewRespondersModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ButtonToggleStyle(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = a2[2];

  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Switch, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Switch, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Switch, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Switch, _FixedSizeLayout>(255, &lazy cache variable for type metadata for ModifiedContent<Switch, _FixedSizeLayout>, MEMORY[0x1E697EBE8], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Switch, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ContentShapeModifier<Capsule> and conformance _ContentShapeModifier<A>()
{
  result = lazy protocol witness table cache variable for type _ContentShapeModifier<Capsule> and conformance _ContentShapeModifier<A>;
  if (!lazy protocol witness table cache variable for type _ContentShapeModifier<Capsule> and conformance _ContentShapeModifier<A>)
  {
    type metadata accessor for _ContentShapeModifier<Capsule>(255, &lazy cache variable for type metadata for _ContentShapeModifier<Capsule>, lazy protocol witness table accessor for type Capsule and conformance Capsule, MEMORY[0x1E69819A8], MEMORY[0x1E697FD48]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ContentShapeModifier<Capsule> and conformance _ContentShapeModifier<A>);
  }

  return result;
}

uint64_t destroy for ButtonToggleStyle(uint64_t a1)
{
  outlined consume of Environment<Color?>.Content(*a1, *(a1 + 8));
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout> and conformance ViewInputFlagModifier<A>)
  {
    _s7SwiftUI21ViewInputFlagModifierVyAA41ListLabeledContentPrefersHorizontalLayout33_2076B144509B2EE42BE09458ED88A0ECLLVGMaTm_0(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>, lazy protocol witness table accessor for type ListLabeledContentPrefersHorizontalLayout and conformance ListLabeledContentPrefersHorizontalLayout, &type metadata for ListLabeledContentPrefersHorizontalLayout, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<ListLabeledContentAllowsOutsetting> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<ListLabeledContentAllowsOutsetting> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<ListLabeledContentAllowsOutsetting> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>, lazy protocol witness table accessor for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting, &type metadata for ListLabeledContentAllowsOutsetting, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<ListLabeledContentAllowsOutsetting> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t closure #1 in TooltipModifier.TransformPlatformItems.value.getter(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2)
  {
    v3 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    }

    for (i = 0; i != v2; ++i)
    {
      if (i >= v1[2])
      {
        __break(1u);
        goto LABEL_9;
      }

      v5 = *(type metadata accessor for PlatformItemList.Item() - 8);
      v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * i;
      Value = AGGraphGetValue();
      v9 = *Value;
      v8 = Value[1];
      *(v6 + 904) = v9;
      *(v6 + 912) = v8;
    }

    *v3 = v1;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityCombinedLabeledContent> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<AccessibilityCombinedLabeledContent> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<AccessibilityCombinedLabeledContent> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for WheelPicker_Phone<DataSource>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityCombinedLabeledContent>, lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<AccessibilityCombinedLabeledContent> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

void type metadata accessor for WheelPicker_Phone<DataSource>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t TooltipModifier.ResolveText.value.getter()
{
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = *(Value + 8);
  v3 = *(Value + 16);
  outlined copy of Text.Storage(*Value, v2, v3);

  v4 = AGGraphGetValue();
  v6 = *v4;
  v5 = v4[1];
  v10[3] = v6;
  v10[4] = v5;
  v10[1] = 0;
  v10[2] = 0;

  MEMORY[0x18D009CB0](v10, v7);
  v8 = Text.resolveString(in:with:idiom:)();
  outlined consume of Text.Storage(v1, v2, v3);

  return v8;
}

uint64_t ResolvedHelpStyle.body.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  _ss23_ContiguousArrayStorageCy7SwiftUI4TextVGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, MEMORY[0x1E6981148], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18CD63400;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v5;
  *(v7 + 56) = v6;
  __src[0] = v7;
  outlined copy of Text.Storage(v4, v3, v5);

  outlined copy of Text.Storage(v4, v3, v5);

  AccessibilityProperties.init<A>(_:_:)();
  outlined init with copy of AccessibilityProperties(v12, v10);
  AccessibilityAttachment.init(properties:)();
  outlined destroy of AccessibilityProperties(v12);
  _ss23_ContiguousArrayStorageCy7SwiftUI4TextVGMaTm_0(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v8 = swift_allocObject();
  memcpy((v8 + 16), __src, 0x128uLL);

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  *(a1 + 40) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type AddGestureModifier<_EndedGesture<PhysicalButtonPressGesture>, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>()
{
  result = lazy protocol witness table cache variable for type AddGestureModifier<_EndedGesture<PhysicalButtonPressGesture>, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>;
  if (!lazy protocol witness table cache variable for type AddGestureModifier<_EndedGesture<PhysicalButtonPressGesture>, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>)
  {
    type metadata accessor for AddGestureModifier<_EndedGesture<PhysicalButtonPressGesture>, DefaultGestureCombiner>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddGestureModifier<_EndedGesture<PhysicalButtonPressGesture>, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>);
  }

  return result;
}

void _ss23_ContiguousArrayStorageCyyXlGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t protocol witness for StyleableView.configuration.getter in conformance ResolvedHelpStyle@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  outlined copy of Text.Storage(v2, v3, v4);
}

uint64_t HelpStyleModifier.styleBody(configuration:)(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v12 = *(a1 + 16);
  v13 = *(a1 + 3);
  v17 = *a1;
  v18 = v12;
  v19 = v13;
  (*(v3 + 24))(&v17, v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  v15 = *(v6 + 8);
  v15(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v15)(v11, AssociatedTypeWitness);
}

uint64_t DefaultHelpStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  outlined copy of Text.Storage(v3, v2, v4);
}

uint64_t closure #1 in UIKitMenuButton.TransformItemList.value.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v87 = a7;
  v88 = a8;
  v86 = a6;
  v84 = a5;
  v82 = a4;
  v83 = a3;
  v80 = a1;
  v85 = a9;
  v10 = type metadata accessor for PlatformItemList.Item();
  v11 = (v10 - 8);
  v89 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v90 = &v78[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v78[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v78[-v17];
  v19 = &v78[-v17 + 408];
  v79 = *AGGraphGetValue();
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v104);
  v102 = 0u;
  memset(v103, 0, sizeof(v103));
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v93 = 0u;
  v18[32] = 0;
  *(v18 + 3) = 0;
  *(v18 + 8) = 0u;
  *(v18 + 5) = -1;
  v18[56] = 1;
  v20 = v113;
  *(v18 + 12) = v112;
  *(v18 + 13) = v20;
  *(v18 + 14) = v114[0];
  *(v18 + 235) = *(v114 + 11);
  v21 = v109;
  *(v18 + 8) = v108;
  *(v18 + 9) = v21;
  v22 = v111;
  *(v18 + 10) = v110;
  *(v18 + 11) = v22;
  v23 = v105;
  *(v18 + 4) = v104;
  *(v18 + 5) = v23;
  v24 = v107;
  *(v18 + 6) = v106;
  *(v18 + 7) = v24;
  *(v18 + 19) = 0u;
  *(v18 + 20) = 0u;
  *(v18 + 17) = 0u;
  *(v18 + 18) = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 42) = 0x3FFFFFFFCLL;
  *(v18 + 344) = 0u;
  *(v18 + 360) = 0u;
  *(v18 + 376) = 0u;
  *(v18 + 392) = 0u;
  *(v18 + 51) = 0;
  *(v18 + 52) = 1;
  *(v18 + 424) = 0u;
  *(v18 + 440) = 0u;
  *(v18 + 456) = 0u;
  v18[472] = 0;
  *(v18 + 60) = 0;
  *(v18 + 488) = 0u;
  v18[504] = 0;
  *(v18 + 32) = 0u;
  v18[528] = 4;
  *(v18 + 536) = 0u;
  *(v18 + 552) = 0u;
  *(v18 + 568) = 0u;
  *(v18 + 584) = 0u;
  *(v18 + 600) = 0u;
  *(v18 + 616) = 0u;
  *(v18 + 632) = 0u;
  *(v18 + 648) = 0u;
  *(v18 + 664) = 0u;
  *(v18 + 680) = 0u;
  *(v18 + 696) = 0u;
  *(v18 + 712) = 0u;
  *(v18 + 728) = 0u;
  *(v18 + 744) = 0u;
  *(v18 + 760) = 0u;
  *(v18 + 776) = 0u;
  *(v18 + 792) = 0u;
  *(v18 + 808) = 0u;
  *(v18 + 824) = 0u;
  *(v18 + 840) = 0u;
  *(v18 + 107) = 0;
  *(v18 + 108) = 1;
  *(v18 + 118) = 0;
  *(v18 + 109) = 0;
  *(v18 + 111) = 0;
  *(v18 + 110) = 0;
  *(v18 + 904) = 0u;
  *(v18 + 920) = 0u;
  *(v18 + 953) = 773;
  v25 = v11[30];
  v26 = type metadata accessor for CommandOperation();
  (*(*(v26 - 8) + 56))(&v18[v25], 1, 1, v26);
  v18[v11[31]] = 0;
  v18[v11[32]] = 0;
  v27 = v11[34];
  v81 = v11[33];
  v18[v27] = 0;
  v18[v11[35]] = 0;
  v28 = v11[36];
  v29 = *(v18 + 13);
  v115[8] = *(v18 + 12);
  v115[9] = v29;
  v116[0] = *(v18 + 14);
  *(v116 + 11) = *(v18 + 235);
  v30 = *(v18 + 9);
  v115[4] = *(v18 + 8);
  v115[5] = v30;
  v31 = *(v18 + 11);
  v115[6] = *(v18 + 10);
  v115[7] = v31;
  v32 = *(v18 + 5);
  v115[0] = *(v18 + 4);
  v115[1] = v32;
  v33 = *(v18 + 7);
  v115[2] = *(v18 + 6);
  v115[3] = v33;
  _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOhTm_1(v115, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
  v34 = v113;
  *(v18 + 12) = v112;
  *(v18 + 13) = v34;
  *(v18 + 14) = v114[0];
  *(v18 + 235) = *(v114 + 11);
  v35 = v109;
  *(v18 + 8) = v108;
  *(v18 + 9) = v35;
  v36 = v111;
  *(v18 + 10) = v110;
  *(v18 + 11) = v36;
  v37 = v105;
  *(v18 + 4) = v104;
  *(v18 + 5) = v37;
  v38 = v107;
  *(v18 + 6) = v106;
  *(v18 + 7) = v38;
  v39 = *(v19 + 3);
  v117[2] = *(v19 + 2);
  v117[3] = v39;
  v118 = v18[472];
  v40 = *(v19 + 1);
  v117[0] = *v19;
  v117[1] = v40;
  _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOhTm_1(v117, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
  *v19 = xmmword_18CD633F0;
  *(v18 + 424) = 0u;
  *(v18 + 440) = 0u;
  *(v18 + 456) = 0u;
  v41 = v80;
  v18[472] = 0;
  outlined assign with take of PlatformItemList.Item.Accessibility?(&v93, (v18 + 536));
  *&v18[v28] = 0;
  *(v18 + 6) = 0;
  *(v18 + 117) = a2;
  v18[952] = v79;
  v42 = *(v18 + 24);
  v119[4] = *(v18 + 23);
  v119[5] = v42;
  v120 = *(v18 + 50);
  v43 = *(v18 + 20);
  v119[0] = *(v18 + 19);
  v119[1] = v43;
  v44 = *(v18 + 21);
  v119[3] = *(v18 + 22);
  v119[2] = v44;

  _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOhTm_1(v119, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem);
  *(v18 + 19) = 0u;
  *(v18 + 20) = 0u;
  *(v18 + 42) = 0x3FFFFFFFCLL;
  *(v18 + 344) = 0u;
  *(v18 + 360) = 0u;
  *(v18 + 376) = 0u;
  *(v18 + 392) = 0u;
  PlatformItemList.mergedContentItem.getter(*v41, v15);

  v45 = *(v15 + 13);
  v46 = *(v15 + 11);
  v128 = *(v15 + 12);
  v129 = v45;
  v47 = *(v15 + 13);
  v130[0] = *(v15 + 14);
  *(v130 + 11) = *(v15 + 235);
  v48 = *(v15 + 9);
  v50 = *(v15 + 7);
  v124 = *(v15 + 8);
  v49 = v124;
  v125 = v48;
  v51 = *(v15 + 9);
  v52 = *(v15 + 11);
  v126 = *(v15 + 10);
  v53 = v126;
  v127 = v52;
  v54 = *(v15 + 5);
  v121[0] = *(v15 + 4);
  v121[1] = v54;
  v55 = *(v15 + 7);
  v57 = *(v15 + 4);
  v56 = *(v15 + 5);
  v122 = *(v15 + 6);
  v58 = v122;
  v123 = v55;
  v59 = *(v18 + 13);
  v101 = *(v18 + 12);
  v102 = v59;
  v103[0] = *(v18 + 14);
  *(v103 + 11) = *(v18 + 235);
  v60 = *(v18 + 9);
  v97 = *(v18 + 8);
  v98 = v60;
  v61 = *(v18 + 11);
  v99 = *(v18 + 10);
  v100 = v61;
  v62 = *(v18 + 5);
  v93 = *(v18 + 4);
  v94 = v62;
  v63 = *(v18 + 7);
  v95 = *(v18 + 6);
  v96 = v63;
  *(v18 + 12) = v128;
  *(v18 + 13) = v47;
  *(v18 + 14) = *(v15 + 14);
  *(v18 + 235) = *(v15 + 235);
  *(v18 + 8) = v49;
  *(v18 + 9) = v51;
  *(v18 + 10) = v53;
  *(v18 + 11) = v46;
  *(v18 + 4) = v57;
  *(v18 + 5) = v56;
  v64 = *v15;
  *v18 = *v15;
  v65 = *(v15 + 112);
  *(v18 + 112) = v65;
  *(v18 + 6) = v58;
  *(v18 + 7) = v50;
  outlined init with copy of Image.Resolved?(v121, v91);
  v66 = v64;
  v67 = v65;
  _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOhTm_1(&v93, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
  v18[v81] = *AGGraphGetValue();
  v18[v27] = *AGGraphGetValue();
  v68 = UIKitMenuButton.TransformItemList.primaryAction.getter();
  if (v68)
  {
    v70 = v68;
    v71 = v69;
    v72 = *(v19 + 3);
    v91[2] = *(v19 + 2);
    v91[3] = v72;
    v92 = v19[64];
    v73 = *(v19 + 1);
    v91[0] = *v19;
    v91[1] = v73;
    _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOhTm_1(v91, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
    v18[408] = 1;
    *(v19 + 1) = 0;
    *(v18 + 52) = v70;
    *(v18 + 53) = v71;
    *(v18 + 27) = 0u;
    *(v18 + 28) = 0u;
    *(v18 + 457) = 0u;
  }

  v74 = v90;
  outlined init with copy of WeakBox<UIButton>?(v18, v90, type metadata accessor for PlatformItemList.Item);
  type metadata accessor for WeakBox<UIButton>?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
  v75 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_18CD63400;
  outlined init with take of WeakBox<UIButton>?(v74, v76 + v75, type metadata accessor for PlatformItemList.Item);
  outlined destroy of WeakBox<UIButton>?(v15, type metadata accessor for PlatformItemList.Item);
  *v41 = v76;
  return outlined destroy of WeakBox<UIButton>?(v18, type metadata accessor for PlatformItemList.Item);
}

uint64_t outlined destroy of PlatformItemList.Item.SystemItem?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_0(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOhTm_1(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s14AttributeGraph0A0Vy7SwiftUI16PlatformItemListVGMaTm_1(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOhTm_2(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for _EnvironmentKeyTransformModifier<SymbolVariants>(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOhTm_3(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for CollectionOfOne<String>(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined assign with take of PlatformItemList.Item.Accessibility?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Image.Resolved?(0, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Image.Resolved?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StyleContextAcceptsPredicate<AnyListStyleContext>(0, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (*UIKitMenuButton.TransformItemList.primaryAction.getter())()
{
  type metadata accessor for (())?();
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = Value[1];
  if (*Value)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v4 = 0;
  }

  outlined copy of AppIntentExecutor?(v1);
  return v4;
}

uint64_t partial apply for specialized closure #1 in Attribute.subscript.getter()
{
  return swift_getAtKeyPath();
}

{
  return specialized closure #1 in Attribute.subscript.getter();
}

{
  return swift_getAtKeyPath();
}

uint64_t key path getter for UIKitMenuButton.action : <A, B>UIKitMenuButton<A, B>@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @callee_guaranteed () -> ();
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of AppIntentExecutor?(v3);
}

uint64_t sub_18C016474()
{

  return swift_deallocObject();
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedLabeledContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedLabeledContent and conformance ResolvedLabeledContent();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t outlined destroy of WeakBox<UIButton>?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of WeakBox<UIButton>?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in AsyncImage.body.getter()
{
  v1 = type metadata accessor for AsyncImage();
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)));
  return AsyncImage.didChangeURL(oldValue:newValue:)(v2, v2, v1);
}

uint64_t AsyncImage.didChangeURL(oldValue:newValue:)(uint64_t a1, void (*a2)(_BYTE *, _BYTE *, uint64_t), uint64_t a3)
{
  v4 = v3;
  v78 = a2;
  v6 = MEMORY[0x1E69E6720];
  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v72 = &v62[-v8];
  v66 = type metadata accessor for TaskConfig(0);
  v68 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v69 = v9;
  v70 = &v62[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v62[-v11];
  v12 = type metadata accessor for URL();
  v77 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v62[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v62[-v15];
  type metadata accessor for (URL?, URL?)();
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v62[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], v6);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v74 = &v62[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v62[-v23];
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v62[-v26];
  v28 = type metadata accessor for LoadingState(0);
  v29 = v28 - 8;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v62[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v76 = a3;
  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for State<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981790]);
  v32 = v4;
  v33 = v77;
  v65 = v34;
  State.wrappedValue.getter();
  v35 = *(v29 + 28);
  v36 = v78;
  outlined init with copy of URL?(&v31[v35], v27);
  outlined destroy of LoadingState(v31, type metadata accessor for LoadingState);
  v37 = *(v17 + 56);
  outlined init with copy of URL?(v36, v19);
  outlined init with copy of URL?(v27, &v19[v37]);
  v38 = *(v33 + 48);
  if (v38(v19, 1, v12) == 1)
  {
    _s10Foundation3URLVSgWOhTm_1(v27, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
    if (v38(&v19[v37], 1, v12) == 1)
    {
      return _s10Foundation3URLVSgWOhTm_1(v19, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
    }
  }

  else
  {
    outlined init with copy of URL?(v19, v24);
    if (v38(&v19[v37], 1, v12) != 1)
    {
      v58 = v73;
      (*(v33 + 32))(v73, &v19[v37], v12);
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
      v63 = dispatch thunk of static Equatable.== infix(_:_:)();
      v64 = v32;
      v59 = *(v33 + 8);
      v59(v58, v12);
      v60 = MEMORY[0x1E6968FB0];
      _s10Foundation3URLVSgWOhTm_1(v27, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
      v59(v24, v12);
      v32 = v64;
      v61 = v60;
      v36 = v78;
      result = _s10Foundation3URLVSgWOhTm_1(v19, &lazy cache variable for type metadata for URL?, v61);
      if (v63)
      {
        return result;
      }

      goto LABEL_7;
    }

    _s10Foundation3URLVSgWOhTm_1(v27, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
    (*(v33 + 8))(v24, v12);
  }

  outlined destroy of LoadingState(v19, type metadata accessor for (URL?, URL?));
LABEL_7:
  v40 = v74;
  outlined init with copy of URL?(v36, v74);
  if (v38(v40, 1, v12) == 1)
  {
    _s10Foundation3URLVSgWOhTm_1(v40, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
    return AsyncImage.resetLoadingState()();
  }

  else
  {
    v78 = *(v33 + 32);
    v41 = v75;
    v78(v75, v40, v12);
    v42 = v76;
    v43 = v71;
    State.projectedValue.getter();
    v44 = *(v42 + 36);
    v45 = *(v42 + 40);
    v64 = v32;
    v46 = *(v32 + v45);
    v47 = v66;
    *(v43 + *(v66 + 20)) = *(v32 + v44);
    *(v43 + *(v47 + 24)) = v46;

    v48 = v72;
    static TaskPriority.userInitiated.getter();
    v49 = type metadata accessor for TaskPriority();
    (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
    v50 = v73;
    (*(v33 + 16))(v73, v41, v12);
    v51 = v70;
    outlined init with copy of TaskConfig(v43, v70);
    v52 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v53 = v33;
    v54 = (v67 + *(v68 + 80) + v52) & ~*(v68 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = 0;
    *(v55 + 24) = 0;
    v78((v55 + v52), v50, v12);
    outlined init with take of TaskConfig(v51, v55 + v54, type metadata accessor for TaskConfig);
    v56 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v48, &async function pointer to partial apply for closure #1 in AsyncImage.didChangeURL(oldValue:newValue:), v55);
    _s10Foundation3URLVSgWOhTm_1(v48, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0]);
    v57 = v75;
    AsyncImage.updateTask(_:url:)(v56, v75, v76);

    outlined destroy of LoadingState(v43, type metadata accessor for TaskConfig);
    return (*(v53 + 8))(v57, v12);
  }
}

uint64_t sub_18C016EB8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for TaskConfig(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  swift_unknownObjectRelease();
  v12 = *(v2 + 8);
  v12(v0 + v3, v1);

  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for Binding<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981948]);
  v8 = v0 + v6 + *(v7 + 32);

  v9 = type metadata accessor for LoadingState(0);
  v10 = *(v9 + 20);
  if (!(*(v2 + 48))(v8 + v10, 1, v1))
  {
    v12(v8 + v10, v1);
  }

  outlined consume of AsyncImagePhase(*(v8 + *(v9 + 24)));

  return swift_deallocObject();
}

void type metadata completion function for TaskConfig()
{
  type metadata accessor for State<LoadingState>(319, &lazy cache variable for type metadata for Binding<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void type metadata accessor for (URL?, URL?)()
{
  if (!lazy cache variable for type metadata for (URL?, URL?))
  {
    type metadata accessor for URL?();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (URL?, URL?));
    }
  }
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for URL?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Predicate<Pack{URL}>?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of URL?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for UTType?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s10Foundation3URLVSgWOhTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  _s10Foundation3URLVSgMaTm_0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s10Foundation3URLVSgWOhTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for State<LoadingState>(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s10Foundation3URLVSgWOhTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for WeakBox<DocumentViewController>(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of TaskConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *initializeWithCopy for TaskConfig(void *a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for Binding<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981948]);
  v7 = *(v6 + 32);
  v22 = a2;
  v8 = a2 + v7;
  v20 = a1 + v7;
  *(a1 + v7) = *(a2 + v7);
  v19 = type metadata accessor for LoadingState(0);
  v9 = *(v19 + 20);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);

  if (v12(&v8[v9], 1, v10))
  {
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v14 = v20;
    memcpy(&v20[v9], &v8[v9], *(*(v13 - 8) + 64));
  }

  else
  {
    v14 = v20;
    (*(v11 + 16))(&v20[v9], &v8[v9], v10);
    (*(v11 + 56))(&v20[v9], 0, 1, v10);
  }

  v15 = *(v19 + 24);
  v16 = *&v8[v15];
  outlined copy of AsyncImagePhase(v16);
  *&v14[v15] = v16;
  v17 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(v22 + *(a3 + 20));
  *(a1 + v17) = *(v22 + v17);

  return a1;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AccessibilityLabeledContentRootModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type AccessibilityLabeledContentRootModifier and conformance AccessibilityLabeledContentRootModifier();

  return MEMORY[0x1EEDE0CC8](a1, a2, a3, a4, a5, v10);
}

unint64_t lazy protocol witness table accessor for type AccessibilityLabeledContentRootModifier and conformance AccessibilityLabeledContentRootModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityLabeledContentRootModifier and conformance AccessibilityLabeledContentRootModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityLabeledContentRootModifier and conformance AccessibilityLabeledContentRootModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityLabeledContentRootModifier and conformance AccessibilityLabeledContentRootModifier);
  }

  return result;
}

uint64_t AsyncImage.updateTask(_:url:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a2;
  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - v8;
  v10 = type metadata accessor for LoadingState(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v27 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v27 - v17);
  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for State<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981790]);
  v20 = v19;
  State.wrappedValue.getter();
  v21 = *v18;
  if (*v18)
  {

    outlined destroy of LoadingState(v18, type metadata accessor for LoadingState);
    MEMORY[0x18D00D010](v21, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  else
  {
    outlined destroy of LoadingState(v18, type metadata accessor for LoadingState);
  }

  v22 = v4 + *(a3 + 48);
  State.wrappedValue.getter();
  *v15 = a1;

  v23 = *(v22 + *(v20 + 28));
  if (v23)
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  outlined destroy of LoadingState(v15, type metadata accessor for LoadingState);
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v9, v28, v24);
  (*(v25 + 56))(v9, 0, 1, v24);
  State.wrappedValue.getter();
  outlined assign with take of URL?(v9, &v12[*(v10 + 20)]);
  if (v23)
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return outlined destroy of LoadingState(v12, type metadata accessor for LoadingState);
}

char *assignWithCopy for LoadingState(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 20);
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
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 16))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
LABEL_7:
  v13 = *(a3 + 24);
  v14 = *&a2[v13];
  outlined copy of AsyncImagePhase(v14);
  v15 = *&a1[v13];
  *&a1[v13] = v14;
  outlined consume of AsyncImagePhase(v15);
  return a1;
}

uint64_t destroy for TaskConfig(uint64_t a1)
{

  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for Binding<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981948]);
  v3 = a1 + *(v2 + 32);

  v4 = type metadata accessor for LoadingState(0);
  v5 = *(v4 + 20);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  outlined consume of AsyncImagePhase(*(v3 + *(v4 + 24)));
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(uint64_t a1)
{
  type metadata accessor for (UUID, PlatformItemList)(0, &lazy cache variable for type metadata for (UUID, PlatformItemList), MEMORY[0x1E69695A8]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    type metadata accessor for _DictionaryStorage<UUID, PlatformItemList>();
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      outlined init with copy of (UIApplicationOpenExternalURLOptionsKey, Any)(v10, v6, &lazy cache variable for type metadata for (UUID, PlatformItemList), MEMORY[0x1E69695A8]);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void type metadata accessor for (AttributedString, EnvironmentValues)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata completion function for TaskResult()
{
  type metadata accessor for State<LoadingState>(319, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t type metadata completion function for MenuVisitor.MenuStackGroup()
{
  result = type metadata accessor for PlatformItemList.Item();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t one-time initialization function for empty()
{
  v0 = type metadata accessor for PlatformItemList.Item();
  v1 = (v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v27[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
  __swift_allocate_value_buffer(v4, static MenuVisitor.MenuStackGroup.empty);
  v5 = __swift_project_value_buffer(v4, static MenuVisitor.MenuStackGroup.empty);
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v28);
  memset(v27, 0, sizeof(v27));
  v3[32] = 0;
  *(v3 + 3) = 0;
  *(v3 + 8) = 0u;
  *(v3 + 5) = -1;
  v3[56] = 1;
  v6 = v37;
  *(v3 + 12) = v36;
  *(v3 + 13) = v6;
  *(v3 + 14) = v38[0];
  *(v3 + 235) = *(v38 + 11);
  v7 = v33;
  *(v3 + 8) = v32;
  *(v3 + 9) = v7;
  v8 = v35;
  *(v3 + 10) = v34;
  *(v3 + 11) = v8;
  v9 = v29;
  *(v3 + 4) = v28;
  *(v3 + 5) = v9;
  v10 = v31;
  *(v3 + 6) = v30;
  *(v3 + 7) = v10;
  *(v3 + 19) = 0u;
  *(v3 + 20) = 0u;
  *(v3 + 17) = 0u;
  *(v3 + 18) = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 42) = 0x3FFFFFFFCLL;
  *(v3 + 344) = 0u;
  *(v3 + 360) = 0u;
  *(v3 + 376) = 0u;
  *(v3 + 392) = 0u;
  *(v3 + 51) = 0;
  *(v3 + 52) = 1;
  *(v3 + 424) = 0u;
  *(v3 + 440) = 0u;
  *(v3 + 456) = 0u;
  v3[472] = 0;
  *(v3 + 60) = 0;
  *(v3 + 488) = 0u;
  v3[504] = 0;
  *(v3 + 32) = 0u;
  v3[528] = 4;
  *(v3 + 536) = 0u;
  *(v3 + 552) = 0u;
  *(v3 + 568) = 0u;
  *(v3 + 584) = 0u;
  *(v3 + 600) = 0u;
  *(v3 + 616) = 0u;
  *(v3 + 632) = 0u;
  *(v3 + 648) = 0u;
  *(v3 + 664) = 0u;
  *(v3 + 680) = 0u;
  *(v3 + 696) = 0u;
  *(v3 + 712) = 0u;
  *(v3 + 728) = 0u;
  *(v3 + 744) = 0u;
  *(v3 + 760) = 0u;
  *(v3 + 776) = 0u;
  *(v3 + 792) = 0u;
  *(v3 + 808) = 0u;
  *(v3 + 824) = 0u;
  *(v3 + 840) = 0u;
  *(v3 + 107) = 0;
  *(v3 + 108) = 1;
  *(v3 + 872) = 0u;
  *(v3 + 888) = 0u;
  *(v3 + 904) = 0u;
  *(v3 + 920) = 0u;
  *(v3 + 936) = 0u;
  *(v3 + 476) = 1283;
  v3[954] = 3;
  v11 = v1[30];
  v12 = type metadata accessor for CommandOperation();
  (*(*(v12 - 8) + 56))(&v3[v11], 1, 1, v12);
  v3[v1[31]] = 0;
  v3[v1[32]] = 0;
  v3[v1[33]] = 2;
  v3[v1[34]] = 0;
  v3[v1[35]] = 0;
  v13 = v1[36];
  *v3 = 0;
  v14 = *(v3 + 13);
  v39[8] = *(v3 + 12);
  v39[9] = v14;
  v40[0] = *(v3 + 14);
  *(v40 + 11) = *(v3 + 235);
  v15 = *(v3 + 9);
  v39[4] = *(v3 + 8);
  v39[5] = v15;
  v16 = *(v3 + 11);
  v39[6] = *(v3 + 10);
  v39[7] = v16;
  v17 = *(v3 + 5);
  v39[0] = *(v3 + 4);
  v39[1] = v17;
  v18 = *(v3 + 7);
  v39[2] = *(v3 + 6);
  v39[3] = v18;
  outlined destroy of AnyAccessibilityValue?(v39, &lazy cache variable for type metadata for Image.Resolved?);
  v19 = v37;
  *(v3 + 12) = v36;
  *(v3 + 13) = v19;
  *(v3 + 14) = v38[0];
  *(v3 + 235) = *(v38 + 11);
  v20 = v33;
  *(v3 + 8) = v32;
  *(v3 + 9) = v20;
  v21 = v35;
  *(v3 + 10) = v34;
  *(v3 + 11) = v21;
  v22 = v29;
  *(v3 + 4) = v28;
  *(v3 + 5) = v22;
  v23 = v31;
  *(v3 + 6) = v30;
  *(v3 + 7) = v23;
  v24 = *(v3 + 456);
  v41[2] = *(v3 + 440);
  v41[3] = v24;
  v42 = v3[472];
  v25 = *(v3 + 424);
  v41[0] = *(v3 + 408);
  v41[1] = v25;
  outlined destroy of AnyAccessibilityValue?(v41, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?);
  *(v3 + 408) = xmmword_18CD633F0;
  *(v3 + 424) = 0u;
  *(v3 + 440) = 0u;
  *(v3 + 456) = 0u;
  v3[472] = 0;
  outlined assign with take of PlatformItemList.Item.Accessibility?(v27, (v3 + 536));
  *&v3[v13] = 0;
  *(v3 + 6) = 0;
  result = outlined init with take of CommandOperation(v3, v5, type metadata accessor for PlatformItemList.Item);
  *(v5 + *(v4 + 20)) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t closure #1 in AsyncImage.didChangeURL(oldValue:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = type metadata accessor for TaskResult(0);
  v5[4] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[5] = v7;
  v8 = swift_task_alloc();
  v5[6] = v8;
  *v8 = v5;
  v8[1] = closure #1 in AsyncImage.didChangeURL(oldValue:newValue:);

  return downloadURL(_:)(v7, a4);
}

uint64_t initializeWithCopy for MenuVisitor.MenuStackGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  v7 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v7;
  *(a1 + 32) = *(a2 + 32);
  v8 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v8;
  *(a1 + 56) = *(a2 + 56);
  v9 = *(a2 + 192);
  v10 = v5;
  v11 = v6;

  if (v9 >> 1 != 4294967294)
  {
    v21 = *(a2 + 72);
    if (v21 == 255)
    {
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
    }

    else
    {
      v22 = *(a2 + 64);
      outlined copy of GraphicsImage.Contents(v22, *(a2 + 72));
      *(a1 + 64) = v22;
      *(a1 + 72) = v21;
      v9 = *(a2 + 192);
    }

    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 170) = *(a2 + 170);
    *(a1 + 171) = *(a2 + 171);
    if (v9 >> 1 == 0xFFFFFFFF)
    {
      v23 = *(a2 + 192);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 192) = v23;
    }

    else
    {
      v24 = *(a2 + 176);
      v25 = *(a2 + 184);
      v26 = *(a2 + 200);
      outlined copy of AccessibilityImageLabel(v24, v25, v9);
      *(a1 + 176) = v24;
      *(a1 + 184) = v25;
      *(a1 + 192) = v9;
      *(a1 + 200) = v26;
    }

    v27 = *(a2 + 216);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = v27;
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 228) = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    v28 = *(a2 + 240);
    *(a1 + 240) = v28;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 250) = *(a2 + 250);
    swift_unknownObjectRetain();

    v29 = v28;
    v17 = *(a2 + 264);
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_13:
    v30 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v30;
    *(a1 + 288) = *(a2 + 288);
    goto LABEL_14;
  }

  v12 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v12;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 235) = *(a2 + 235);
  v13 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v13;
  v14 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v14;
  v15 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v15;
  v16 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v16;
  v17 = *(a2 + 264);
  if (!v17)
  {
    goto LABEL_13;
  }

LABEL_3:
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = v17;
  v18 = *(a2 + 272);

  if (v18 >= 2)
  {
    v19 = v18;
  }

  *(a1 + 272) = v18;
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 285) = *(a2 + 285);
  v20 = *(a2 + 296);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = v20;

LABEL_14:
  v31 = *(a2 + 336);
  if (v31 >> 2 == 0xFFFFFFFF)
  {
    v32 = *(a2 + 384);
    *(a1 + 368) = *(a2 + 368);
    *(a1 + 384) = v32;
    *(a1 + 400) = *(a2 + 400);
    v33 = *(a2 + 320);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = v33;
    v34 = *(a2 + 352);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 352) = v34;
  }

  else
  {
    v35 = *(a2 + 304);
    v36 = *(a2 + 312);
    v37 = *(a2 + 320);
    v38 = *(a2 + 328);
    v39 = *(a2 + 344);
    v40 = *(a2 + 352);
    v41 = *(a2 + 360);
    v94 = *(a2 + 368);
    v96 = *(a2 + 376);
    v99 = *(a2 + 384);
    v101 = *(a2 + 392);
    __dsta = *(a2 + 400);
    outlined copy of PlatformItemList.Item.SystemItem(v35, v36, v37, v38, v31, v39, v40, v41, v94, v96, v99, v101, __dsta);
    *(a1 + 304) = v35;
    *(a1 + 312) = v36;
    *(a1 + 320) = v37;
    *(a1 + 328) = v38;
    *(a1 + 336) = v31;
    *(a1 + 344) = v39;
    *(a1 + 352) = v40;
    *(a1 + 360) = v41;
    *(a1 + 368) = v94;
    *(a1 + 376) = v96;
    *(a1 + 384) = v99;
    *(a1 + 392) = v101;
    *(a1 + 400) = __dsta;
  }

  v42 = *(a2 + 416);
  if (v42 == 1)
  {
    v43 = *(a2 + 456);
    *(a1 + 440) = *(a2 + 440);
    *(a1 + 456) = v43;
    *(a1 + 472) = *(a2 + 472);
    v44 = *(a2 + 424);
    *(a1 + 408) = *(a2 + 408);
    *(a1 + 424) = v44;
    goto LABEL_27;
  }

  *(a1 + 408) = *(a2 + 408);
  *(a1 + 412) = *(a2 + 412);
  if (v42)
  {
    v45 = *(a2 + 424);
    *(a1 + 416) = v42;
    *(a1 + 424) = v45;

    v46 = *(a2 + 432);
    if (v46)
    {
      goto LABEL_21;
    }

LABEL_24:
    *(a1 + 432) = *(a2 + 432);
    v48 = *(a2 + 448);
    if (v48)
    {
      goto LABEL_22;
    }

LABEL_25:
    *(a1 + 448) = *(a2 + 448);
    goto LABEL_26;
  }

  *(a1 + 416) = *(a2 + 416);
  v46 = *(a2 + 432);
  if (!v46)
  {
    goto LABEL_24;
  }

LABEL_21:
  v47 = *(a2 + 440);
  *(a1 + 432) = v46;
  *(a1 + 440) = v47;

  v48 = *(a2 + 448);
  if (!v48)
  {
    goto LABEL_25;
  }

LABEL_22:
  v49 = *(a2 + 456);
  *(a1 + 448) = v48;
  *(a1 + 456) = v49;

LABEL_26:
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = *(a2 + 472);
LABEL_27:
  v50 = *(a2 + 488);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = v50;
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  v51 = *(a2 + 512);

  if (v51)
  {
    v52 = *(a2 + 520);
    *(a1 + 512) = v51;
    *(a1 + 520) = v52;
  }

  else
  {
    *(a1 + 512) = *(a2 + 512);
  }

  *(a1 + 528) = *(a2 + 528);
  if (!*(a2 + 816))
  {
    memcpy((a1 + 536), (a2 + 536), 0x130uLL);
    goto LABEL_42;
  }

  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  v53 = (a1 + 600);
  v54 = (a2 + 600);
  v55 = *(a2 + 624);

  if (!v55)
  {
    v57 = *(a2 + 616);
    *v53 = *v54;
    *(a1 + 616) = v57;
    *(a1 + 632) = *(a2 + 632);
LABEL_37:
    *(a1 + 640) = *(a2 + 640);

    goto LABEL_38;
  }

  if (v55 != 1)
  {
    *(a1 + 624) = v55;
    *(a1 + 632) = *(a2 + 632);
    (**(v55 - 8))(a1 + 600, a2 + 600, v55);
    goto LABEL_37;
  }

  v56 = *(a2 + 616);
  *v53 = *v54;
  *(a1 + 616) = v56;
  *(a1 + 632) = *(a2 + 632);
LABEL_38:
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 656) = *(a2 + 656);
  v58 = (a1 + 664);
  v59 = (a2 + 664);
  v60 = *(a2 + 776);
  if (v60 == 1)
  {
    v61 = *(a2 + 776);
    *(a1 + 760) = *(a2 + 760);
    *(a1 + 776) = v61;
    *(a1 + 792) = *(a2 + 792);
    *(a1 + 808) = *(a2 + 808);
    v62 = *(a2 + 712);
    *(a1 + 696) = *(a2 + 696);
    *(a1 + 712) = v62;
    v63 = *(a2 + 744);
    *(a1 + 728) = *(a2 + 728);
    *(a1 + 744) = v63;
    v64 = *(a2 + 680);
    *v58 = *v59;
    *(a1 + 680) = v64;
  }

  else
  {
    *v58 = *v59;
    *(a1 + 672) = *(a2 + 672);
    *(a1 + 680) = *(a2 + 680);
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 689) = *(a2 + 689);
    *(a1 + 691) = *(a2 + 691);
    *(a1 + 692) = *(a2 + 692);
    *(a1 + 696) = *(a2 + 696);
    v65 = *(a2 + 720);
    *(a1 + 704) = *(a2 + 704);
    *(a1 + 720) = v65;
    *(a1 + 736) = *(a2 + 736);
    *(a1 + 744) = *(a2 + 744);
    *(a1 + 752) = *(a2 + 752);
    *(a1 + 768) = *(a2 + 768);
    *(a1 + 776) = v60;
    *(a1 + 784) = *(a2 + 784);
    *(a1 + 800) = *(a2 + 800);
    *(a1 + 808) = *(a2 + 808);
  }

  *(a1 + 816) = *(a2 + 816);
  *(a1 + 824) = *(a2 + 824);
  *(a1 + 832) = *(a2 + 832);

LABEL_42:
  v66 = (a1 + 840);
  v67 = (a2 + 840);
  v68 = *(a2 + 864);
  if (v68)
  {
    if (v68 == 1)
    {
      v69 = *(a2 + 856);
      *v66 = *v67;
      *(a1 + 856) = v69;
      *(a1 + 872) = *(a2 + 872);
      *(a1 + 888) = *(a2 + 888);
      goto LABEL_49;
    }

    *(a1 + 864) = v68;
    *(a1 + 872) = *(a2 + 872);
    (**(v68 - 8))(v66, v67);
    v71 = *(a2 + 880);
    if (!v71)
    {
      goto LABEL_48;
    }

LABEL_46:
    v72 = *(a2 + 888);
    *(a1 + 880) = v71;
    *(a1 + 888) = v72;

    goto LABEL_49;
  }

  v70 = *(a2 + 856);
  *v66 = *v67;
  *(a1 + 856) = v70;
  *(a1 + 872) = *(a2 + 872);
  v71 = *(a2 + 880);
  if (v71)
  {
    goto LABEL_46;
  }

LABEL_48:
  *(a1 + 880) = *(a2 + 880);
LABEL_49:
  v73 = *(a2 + 896);
  *(a1 + 896) = v73;
  *(a1 + 904) = *(a2 + 904);
  *(a1 + 912) = *(a2 + 912);
  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);
  *(a1 + 936) = *(a2 + 936);
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 952) = *(a2 + 952);
  *(a1 + 954) = *(a2 + 954);
  v74 = type metadata accessor for PlatformItemList.Item();
  v75 = *(v74 + 112);
  v102 = v74;
  __dst = (a1 + v75);
  v76 = (a2 + v75);
  v77 = type metadata accessor for CommandOperation();
  v78 = *(v77 - 8);
  v97 = *(v78 + 48);
  v79 = v73;

  if (v97(v76, 1, v77))
  {
    type metadata accessor for HashableCommandGroupPlacementWrapper?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(__dst, v76, *(*(v80 - 8) + 64));
  }

  else
  {
    *__dst = *v76;
    v81 = *(v77 + 20);
    v98 = v76;
    v100 = v77;
    v82 = &__dst[v81];
    v83 = &v76[v81];
    v84 = *&v76[v81];
    v85 = *(v83 + 1);
    v86 = v83[16];
    outlined copy of Text.Storage(v84, v85, v86);
    *v82 = v84;
    *(v82 + 1) = v85;
    v82[16] = v86;
    *(v82 + 3) = *(v83 + 3);
    v87 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v88 = type metadata accessor for UUID();
    v95 = *(*(v88 - 8) + 16);

    v95(&v82[v87], &v83[v87], v88);
    v89 = *(v100 + 24);
    v90 = &__dst[v89];
    v91 = &v98[v89];
    if (*v91)
    {
      v92 = v91[1];
      *v90 = *v91;
      v90[1] = v92;
    }

    else
    {
      *v90 = *v91;
    }

    (*(v78 + 56))(__dst, 0, 1, v100);
  }

  *(a1 + v102[29]) = *(a2 + v102[29]);
  *(a1 + v102[30]) = *(a2 + v102[30]);
  *(a1 + v102[31]) = *(a2 + v102[31]);
  *(a1 + v102[32]) = *(a2 + v102[32]);
  *(a1 + v102[33]) = *(a2 + v102[33]);
  *(a1 + v102[34]) = *(a2 + v102[34]);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  return a1;
}

uint64_t partial apply for closure #1 in AsyncImage.didChangeURL(oldValue:newValue:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TaskConfig(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in AsyncImage.didChangeURL(oldValue:newValue:)(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t downloadURL(_:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](downloadURL(_:), 0, 0);
}

uint64_t downloadURL(_:)()
{
  v0[7] = [objc_opt_self() sharedSession];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = downloadURL(_:);
  v2 = v0[6];
  v3 = v0[3];

  return MEMORY[0x1EEDC6280](v2, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MenuVisitor.visit(_:uniqueNames:)(uint64_t a1, uint64_t *a2)
{
  v219 = a2;
  v227 = a1;
  v209 = type metadata accessor for UUID();
  v185 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v210 = &v173 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E69E6720];
  type metadata accessor for HashableCommandGroupPlacementWrapper?(0, &lazy cache variable for type metadata for HashableCommandGroupPlacementWrapper?, type metadata accessor for HashableCommandGroupPlacementWrapper, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v191 = &v173 - v6;
  v213 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  v226 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v176 = &v173 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v183 = &v173 - v9;
  v10 = type metadata accessor for CommandOperation();
  v207.value = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v204 = &v173 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v179 = &v173 - v13;
  v212 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v212);
  v224 = &v173 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for CommandGroupPlacement(0);
  MEMORY[0x1EEE9AC00](v203);
  v211 = &v173 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v175 = &v173 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v174 = &v173 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v181 = &v173 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v180 = &v173 - v23;
  v24 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
  v25 = *(v24 - 1);
  MEMORY[0x1EEE9AC00](v24);
  v192 = &v173 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v206 = &v173 - v28;
  type metadata accessor for HashableCommandGroupPlacementWrapper?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, v4);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v217 = &v173 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v182 = &v173 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v178 = &v173 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v184 = &v173 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v189 = &v173 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v218 = &v173 - v40;
  v222 = type metadata accessor for PlatformItemList.Item();
  v41 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v205 = &v173 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v225 = (&v173 - v44);
  v45 = MEMORY[0x1E69E7CC0];
  v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  v47 = MEMORY[0x1E69E7CC8];
  v2[8] = 0;
  *(v2 + 2) = v47;
  *(v2 + 3) = v46;
  *(v2 + 4) = v45;
  *(v2 + 5) = v47;
  v177 = v2 + 40;
  v2[48] = 0;
  type metadata accessor for HashableCommandGroupPlacementWrapper?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, MEMORY[0x1E69E6F90]);
  v48 = *(v25 + 80);
  v49 = (v48 + 32) & ~v48;
  v214 = *(v25 + 72);
  v200 = v48;
  v201 = v50;
  v51 = swift_allocObject();
  v199 = xmmword_18CD63400;
  *(v51 + 1) = xmmword_18CD63400;
  if (one-time initialization token for empty != -1)
  {
    goto LABEL_101;
  }

  while (1)
  {
    v202 = v24;
    v198 = __swift_project_value_buffer(v24, static MenuVisitor.MenuStackGroup.empty);
    outlined init with copy of MenuVisitor.MenuStackGroup(v198, v51 + v49, type metadata accessor for MenuVisitor.MenuStackGroup);

    *(v2 + 7) = v51;
    v223 = *v2;
    v52 = *(v227 + 16);
    v53 = v2;
    if (!v52)
    {
      break;
    }

    v215 = v49;
    v197 = 0;
    v188 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v54 = v227 + v188;
    v220 = *(v41 + 72);
    v221 = v207.value + 6;
    v24 = v225;
    v186 = (v225 + 43);
    v208 = (v226 + 56);
    v173 = v207.value + 7;
    v190 = (v226 + 48);
    v193 = (v185 + 16);
    v187 = (v185 + 8);
    v55 = v218;
    v216 = v10;
    while (1)
    {
      v226 = v54;
      v227 = v52;
      outlined init with copy of MenuVisitor.MenuStackGroup(v54, v24, type metadata accessor for PlatformItemList.Item);
      if (!*(v53 + 8))
      {
        outlined init with copy of HashableCommandGroupPlacementWrapper?(v24 + *(v222 + 112), v55, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
        if ((v221->super.isa)(v55, 1, v10) == 1)
        {
          outlined destroy of HashableCommandGroupPlacementWrapper?(v55, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
        }

        else
        {
          v56 = *v55;
          _s7SwiftUI16PlatformItemListV0D0VWOhTm_0(v55, type metadata accessor for CommandOperation);
          if (v56 == 3)
          {
            v57 = 1;
          }

          else
          {
            v57 = 2;
          }

          *(v53 + 8) = v57;
        }
      }

      v58 = v24[42];
      if (v58 >> 62 != 3)
      {
        break;
      }

      if ((v58 & 0xFFFFFFFFFFFFFFFCLL) == 0x3FFFFFFFCLL)
      {
        break;
      }

      if (v58 != 0xC000000000000000)
      {
        break;
      }

      v59 = v225[39];
      v60 = v225[40];
      v61 = v225[41];
      v62 = v225[43];
      v63 = v225[44];
      v64 = v225[45];
      v65 = v225[46];
      v67 = v225[47];
      v66 = v225[48];
      v68 = v225[49];
      v69 = v225[50];
      if (v59 | v225[38] | v60 | v61 | v62 | v63 | v64 | v65 | v67 | v66 | v68 | v69)
      {
        break;
      }

      v194 = v225[38];
      v70 = v206;
      v195 = v62;
      v196 = v63;
      v207.value = v64;
      outlined init with copy of MenuVisitor.MenuStackGroup(v225, v206, type metadata accessor for PlatformItemList.Item);
      *(v70 + *(v202 + 5)) = MEMORY[0x1E69E7CC0];
      v71 = *(v53 + 56);
      outlined copy of PlatformItemList.Item.SystemItem(v194, v59, v60, v61, 0xC000000000000000, v195, v196, v207.value, v65, v67, v66, v68, v69);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v71[2] + 1, 1, v71);
      }

      v73 = v71[2];
      v72 = v71[3];
      v10 = v216;
      v49 = v217;
      v55 = v218;
      v24 = v225;
      if (v73 >= v72 >> 1)
      {
        v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v72 > 1, v73 + 1, 1, v71);
      }

      v71[2] = v73 + 1;
      outlined init with take of CommandOperation(v206, v71 + v215 + v73 * v214, type metadata accessor for MenuVisitor.MenuStackGroup);
      *(v53 + 56) = v71;
      v74 = v189;
      outlined init with copy of HashableCommandGroupPlacementWrapper?(v24 + *(v222 + 112), v189, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
      if ((v221->super.isa)(v74, 1, v10) == 1)
      {
        outlined destroy of HashableCommandGroupPlacementWrapper?(v74, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
      }

      else
      {
        v117 = v181;
        outlined init with copy of MenuVisitor.MenuStackGroup(v74 + *(v10 + 20), v181, type metadata accessor for CommandGroupPlacement);
        _s7SwiftUI16PlatformItemListV0D0VWOhTm_0(v74, type metadata accessor for CommandOperation);
        v118 = v180;
        outlined init with take of CommandOperation(v117, v180, type metadata accessor for CommandGroupPlacement);
        v119 = *(v212 + 32);
        outlined destroy of HashableCommandGroupPlacementWrapper?(v53 + v119, &lazy cache variable for type metadata for HashableCommandGroupPlacementWrapper?, type metadata accessor for HashableCommandGroupPlacementWrapper);
        outlined init with take of CommandOperation(v118, v53 + v119, type metadata accessor for CommandGroupPlacement);
        (*v208)(v53 + v119, 0, 1, v213);
      }

      *(v53 + 48) = 0;
      if (v223)
      {
        goto LABEL_75;
      }

LABEL_4:
      _s7SwiftUI16PlatformItemListV0D0VWOhTm_0(v24, type metadata accessor for PlatformItemList.Item);
LABEL_5:
      v54 = v226 + v220;
      v52 = v227 - 1;
      if (v227 == 1)
      {
        v51 = *(v53 + 56);
        v49 = v215;
        goto LABEL_97;
      }
    }

    v24 = v225;
    v75 = v225[117];
    if (v75)
    {
      v76 = *v53;
      v77 = v224;
      *(v224 + 8) = 0;
      v78 = MEMORY[0x1E69E7CC8];
      *(v77 + 16) = MEMORY[0x1E69E7CC8];
      *(v77 + 24) = v78;
      *(v77 + 32) = MEMORY[0x1E69E7CC0];
      *(v77 + 40) = v78;
      *(v77 + 48) = 0;
      v79 = v215;
      v80 = swift_allocObject();
      *(v80 + 16) = v199;
      outlined init with copy of MenuVisitor.MenuStackGroup(v198, v80 + v79, type metadata accessor for MenuVisitor.MenuStackGroup);
      *(v77 + 56) = v80;
      (*v208)(v77 + *(v212 + 32), 1, 1, v213);
      *v77 = v76;
      MenuVisitor.visit(_:uniqueNames:)(v75, v219);
      v81 = v24[42];
      if (v81 >> 62 == 3 && (v81 & 0xFFFFFFFFFFFFFFFCLL) != 0x3FFFFFFFCLL && ((v82 = v24[38], v83 = vorrq_s8(vorrq_s8(*v186, v186[2]), vorrq_s8(v186[1], v186[3])), v84 = *&vorr_s8(*v83.i8, *&vextq_s8(v83, v83, 8uLL)) | v24[40] | v24[39] | v24[41], v81 == 0xC000000000000000) && v82 == 2 && !v84 || v81 == 0xC000000000000000 && v82 == 4 && !v84))
      {
        v85 = v192;
        outlined init with copy of MenuVisitor.MenuStackGroup(v24, v192, type metadata accessor for PlatformItemList.Item);
        *(v85 + *(v202 + 5)) = *(v224 + 32);
        v86 = *(v53 + 56);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v86[2] + 1, 1, v86);
        }

        v10 = v216;
        v49 = v217;
        v55 = v218;
        v88 = v86[2];
        v87 = v86[3];
        if (v88 >= v87 >> 1)
        {
          v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v87 > 1, v88 + 1, 1, v86);
        }

        v86[2] = v88 + 1;
        outlined init with take of CommandOperation(v192, v86 + v215 + v88 * v214, type metadata accessor for MenuVisitor.MenuStackGroup);
        *(v53 + 56) = v86;
        *(v53 + 48) = 1;
        if ((v223 & 2) == 0)
        {
LABEL_70:
          _s7SwiftUI16PlatformItemListV0D0VWOhTm_0(v224, type metadata accessor for MenuVisitor);
          if (v223)
          {
            goto LABEL_75;
          }

          goto LABEL_4;
        }
      }

      else
      {
        PlatformItemList.Item.configurationIdentifier.getter(v230);
        v89 = PlatformItemList.Item.ConfigurationIdentifier.identifier.getter();
        v91 = v90;
        outlined destroy of PlatformItemList.Item.ConfigurationIdentifier(v230);
        if ((*(v53 + 48) & 1) == 0)
        {
          v92 = *v219;
          v89 = MenuVisitor.uniqueMenuIdentifier(in:candidate:)(*v219, v89, v91);
          v94 = v93;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v92 + 16) + 1, 1, v92);
          }

          v96 = *(v92 + 16);
          v95 = *(v92 + 24);
          if (v96 >= v95 >> 1)
          {
            v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v96 + 1, 1, v92);
          }

          *(v92 + 16) = v96 + 1;
          v97 = v92 + 16 * v96;
          *(v97 + 32) = v89;
          *(v97 + 40) = v94;
          *v219 = v92;
          v91 = v94;
        }

        v98 = PlatformItemList.Item.uiAction(_:)(v89, v91);
        static Semantics.v6.getter();
        v99 = isLinkedOnOrAfter(_:)();
        v100 = 16;
        if ((v99 & 1) == 0)
        {
          v100 = 0;
        }

        v101 = v24[42];
        v102 = v100 | 0x81;
        if (v101 >> 62)
        {
          v102 = v100;
        }

        if (v101 >> 2 != 0xFFFFFFFF)
        {
          v100 = v102;
        }

        v207.value = v100;
        v103 = [v98 title];
        v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v106 = v105;

        v107 = [v98 subtitle];
        if (v107)
        {
          v108 = v107;
          v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v111 = v110;
        }

        else
        {
          v109 = 0;
          v111 = 0;
        }

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
        v120 = [v98 image];
        v121 = MEMORY[0x18D00C850](v89, v91);

        v122._countAndFlagsBits = v104;
        v122._object = v106;
        v123.value._countAndFlagsBits = v109;
        v123.value._object = v111;
        v232.value.super.isa = v120;
        v232.is_nil = v121;
        UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(&var40, v122, v123, v232, v207, 0xFFFFFFFFFFFFFFFFLL, v171, v172);
        v125 = v124;
        v24 = v225;
        specialized PlatformItemList.Item.applyAccessibilityProperties(to:)(v124, v225, partial apply for closure #1 in PlatformItemList.Item.applyAccessibilityProperties(to:), &block_descriptor_36);
        v126 = v125;
        MenuVisitor.appendMenuItem(_:)(v126);
        if ((v223 & 2) == 0)
        {

          v10 = v216;
          v49 = v217;
          v55 = v218;
          goto LABEL_70;
        }

        v127 = v184;
        outlined init with copy of HashableCommandGroupPlacementWrapper?(v24 + *(v222 + 112), v184, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
        v10 = v216;
        if ((v221->super.isa)(v127, 1, v216) == 1)
        {

          outlined destroy of HashableCommandGroupPlacementWrapper?(v127, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
        }

        else
        {
          v128 = v127;
          v129 = v179;
          outlined init with take of CommandOperation(v128, v179, type metadata accessor for CommandOperation);
          v130 = v178;
          outlined init with copy of MenuVisitor.MenuStackGroup(v129, v178, type metadata accessor for CommandOperation);
          (v173->super.isa)(v130, 0, 1, v10);
          specialized Dictionary.subscript.setter(v130, v126);

          _s7SwiftUI16PlatformItemListV0D0VWOhTm_0(v129, type metadata accessor for CommandOperation);
        }

        v49 = v217;
        v55 = v218;
      }

      v131 = *(v224 + 16);
      v132 = *(v224 + 24);
      v133 = *(v224 + 40);
      if (*(v131 + 16) || *(v132 + 16) || *(v133 + 16))
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v229 = *(v53 + 16);
        v135 = v197;
        specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v131, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v229);

        *(v53 + 16) = v229;

        v136 = swift_isUniquelyReferenced_nonNull_native();
        v229 = *(v53 + 24);
        specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v132, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v136, &v229);

        *(v53 + 24) = v229;

        v137 = swift_isUniquelyReferenced_nonNull_native();
        v229 = *(v53 + 40);
        specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v133, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v137, &v229);
        v197 = v135;

        *(v53 + 40) = v229;
      }

      goto LABEL_70;
    }

    v112 = v191;
    outlined init with copy of HashableCommandGroupPlacementWrapper?(v53 + *(v212 + 32), v191, &lazy cache variable for type metadata for HashableCommandGroupPlacementWrapper?, type metadata accessor for HashableCommandGroupPlacementWrapper);
    v113 = (*v190)(v112, 1, v213);
    v10 = v216;
    if (v113 == 1)
    {
      outlined destroy of HashableCommandGroupPlacementWrapper?(v112, &lazy cache variable for type metadata for HashableCommandGroupPlacementWrapper?, type metadata accessor for HashableCommandGroupPlacementWrapper);
      v49 = v217;
      v55 = v218;
    }

    else
    {
      v114 = v183;
      outlined init with take of CommandOperation(v112, v183, type metadata accessor for HashableCommandGroupPlacementWrapper);
      v115 = v182;
      outlined init with copy of HashableCommandGroupPlacementWrapper?(v24 + *(v222 + 112), v182, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
      v116 = (v221->super.isa)(v115, 1, v10);
      v49 = v217;
      if (v116 == 1)
      {
        _s7SwiftUI16PlatformItemListV0D0VWOhTm_0(v114, type metadata accessor for HashableCommandGroupPlacementWrapper);
        outlined destroy of HashableCommandGroupPlacementWrapper?(v115, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
        v55 = v218;
      }

      else
      {
        v138 = v175;
        outlined init with copy of MenuVisitor.MenuStackGroup(v115 + *(v10 + 20), v175, type metadata accessor for CommandGroupPlacement);
        _s7SwiftUI16PlatformItemListV0D0VWOhTm_0(v115, type metadata accessor for CommandOperation);
        v139 = v174;
        outlined init with take of CommandOperation(v138, v174, type metadata accessor for CommandGroupPlacement);
        v140 = v176;
        outlined init with copy of MenuVisitor.MenuStackGroup(v139, v176, type metadata accessor for CommandGroupPlacement);
        v141 = static UUID.== infix(_:_:)();
        _s7SwiftUI16PlatformItemListV0D0VWOhTm_0(v140, type metadata accessor for HashableCommandGroupPlacementWrapper);
        _s7SwiftUI16PlatformItemListV0D0VWOhTm_0(v139, type metadata accessor for CommandGroupPlacement);
        _s7SwiftUI16PlatformItemListV0D0VWOhTm_0(v114, type metadata accessor for HashableCommandGroupPlacementWrapper);
        v55 = v218;
        if ((v141 & 1) == 0)
        {
          *(v53 + 48) = 1;
        }
      }
    }

    MenuVisitor.buildUIMenuElement(_:uniqueNames:)(v24, v219);
    if ((v223 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_75:
    outlined init with copy of HashableCommandGroupPlacementWrapper?(v24 + *(v222 + 112), v49, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
    if ((v221->super.isa)(v49, 1, v10) == 1)
    {
      _s7SwiftUI16PlatformItemListV0D0VWOhTm_0(v24, type metadata accessor for PlatformItemList.Item);
      outlined destroy of HashableCommandGroupPlacementWrapper?(v49, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
      goto LABEL_5;
    }

    v142 = v204;
    outlined init with take of CommandOperation(v49, v204, type metadata accessor for CommandOperation);
    v143 = v142 + *(v10 + 20);
    outlined init with copy of MenuVisitor.MenuStackGroup(v143, v211, type metadata accessor for CommandGroupPlacement);
    v144 = *(v53 + 24);
    if (*(v144 + 16) && (v145 = specialized __RawDictionaryStorage.find<A>(_:)(v143 + *(v203 + 20)), (v146 & 1) != 0))
    {
      v41 = *(*(v144 + 56) + 8 * v145);
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

    outlined init with copy of MenuVisitor.MenuStackGroup(v24, v205, type metadata accessor for PlatformItemList.Item);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 16) + 1, 1, v41);
    }

    v148 = *(v41 + 16);
    v147 = *(v41 + 24);
    if (v148 >= v147 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v147 > 1, v148 + 1, 1, v41);
    }

    *(v41 + 16) = v148 + 1;
    outlined init with take of CommandOperation(v205, v41 + v188 + v148 * v220, type metadata accessor for PlatformItemList.Item);
    v51 = *v193;
    v149 = v210;
    (*v193)(v210, v211 + *(v203 + 20), v209);
    v150 = swift_isUniquelyReferenced_nonNull_native();
    v229 = *(v53 + 24);
    v2 = v229;
    v151 = specialized __RawDictionaryStorage.find<A>(_:)(v149);
    v153 = *(v2 + 2);
    v154 = (v152 & 1) == 0;
    v155 = __OFADD__(v153, v154);
    v156 = v153 + v154;
    if (!v155)
    {
      v157 = v152;
      if (*(v2 + 3) >= v156)
      {
        if (v150)
        {
          goto LABEL_90;
        }

        v159 = v151;
        specialized _NativeDictionary.copy()();
        v151 = v159;
        v2 = v229;
        if ((v157 & 1) == 0)
        {
          goto LABEL_93;
        }

LABEL_91:
        *(*(v2 + 7) + 8 * v151) = v41;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v156, v150);
        v151 = specialized __RawDictionaryStorage.find<A>(_:)(v210);
        if ((v157 & 1) != (v158 & 1))
        {
          goto LABEL_103;
        }

LABEL_90:
        v2 = v229;
        if (v157)
        {
          goto LABEL_91;
        }

LABEL_93:
        *&v2[8 * (v151 >> 6) + 64] |= 1 << v151;
        v160 = v151;
        v51(*(v2 + 6) + *(v185 + 72) * v151, v210, v209);
        *(*(v2 + 7) + 8 * v160) = v41;
        v161 = *(v2 + 2);
        v155 = __OFADD__(v161, 1);
        v162 = v161 + 1;
        if (v155)
        {
          goto LABEL_100;
        }

        *(v2 + 2) = v162;
      }

      (*v187)(v210, v209);
      *(v53 + 24) = v2;
      _s7SwiftUI16PlatformItemListV0D0VWOhTm_0(v211, type metadata accessor for CommandGroupPlacement);
      _s7SwiftUI16PlatformItemListV0D0VWOhTm_0(v204, type metadata accessor for CommandOperation);
      _s7SwiftUI16PlatformItemListV0D0VWOhTm_0(v24, type metadata accessor for PlatformItemList.Item);
      goto LABEL_5;
    }

    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    swift_once();
  }

LABEL_97:
  v229 = MEMORY[0x1E69E7CC0];
  v163 = *(v51 + 2);
  if (v163)
  {
    v164 = (v223 >> 1) & 1;
    v165 = v51 + v49;
    v166 = *(v51 + v49 + *(v202 + 5));
    v167 = (2 * v163) | 1;

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs10ArraySliceVy7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLV0H10StackGroupVG_So06UIMenuB0Cs5NeverOTg503_s7f4UI11h11Visitor33_0jklmnopq59LLV5visit_11uniqueNamesyAA16PlatformItemListV_SaySSGztFSo13tb7CAD0C10rS6VXEfU_AKSaySSGSbTf1cn_nTf4xnnn_n(v165, 1, v167, v53, &v229, v164);
    v228 = v166;
    specialized Array.append<A>(contentsOf:)(v168);
    v169 = v228;

    *(v53 + 32) = v169;
  }

  else
  {
    __break(1u);
LABEL_103:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of MenuVisitor.MenuStackGroup(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLV0C10StackGroupVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLV0C10StackGroupVWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t destroy for MenuVisitor.MenuStackGroup(uint64_t a1)
{

  v2 = *(a1 + 192);
  v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
  if ((v2 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
  {
    v4 = *(a1 + 72);
    if (v4 != 255)
    {
      outlined consume of GraphicsImage.Contents(*(a1 + 64), v4);
      v2 = *(a1 + 192);
      v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
    }

    if (v3 != 0x1FFFFFFFELL)
    {
      outlined consume of AccessibilityImageLabel(*(a1 + 176), *(a1 + 184), v2);
    }

    swift_unknownObjectRelease();
  }

  if (*(a1 + 264))
  {

    v5 = *(a1 + 272);
    if (v5 >= 2)
    {
    }
  }

  v6 = *(a1 + 336);
  if (v6 >> 2 != 0xFFFFFFFF)
  {
    outlined consume of PlatformItemList.Item.SystemItem(*(a1 + 304), *(a1 + 312), *(a1 + 320), *(a1 + 328), v6, *(a1 + 344), *(a1 + 352), *(a1 + 360), *(a1 + 368), *(a1 + 376), *(a1 + 384), *(a1 + 392), *(a1 + 400));
  }

  v7 = *(a1 + 416);
  if (v7)
  {
    if (v7 == 1)
    {
      goto LABEL_20;
    }
  }

  if (*(a1 + 432))
  {
  }

  if (*(a1 + 448))
  {
  }

LABEL_20:

  if (*(a1 + 512))
  {
  }

  if (*(a1 + 816))
  {

    v8 = *(a1 + 624);
    if (v8)
    {
      if (v8 == 1)
      {
LABEL_27:
        if (*(a1 + 776) != 1)
        {
        }

        goto LABEL_30;
      }

      __swift_destroy_boxed_opaque_existential_1(a1 + 600);
    }

    goto LABEL_27;
  }

LABEL_30:
  v9 = *(a1 + 864);
  if (v9)
  {
    if (v9 == 1)
    {
      goto LABEL_35;
    }

    __swift_destroy_boxed_opaque_existential_1(a1 + 840);
  }

  if (*(a1 + 880))
  {
  }

LABEL_35:

  v10 = a1 + *(type metadata accessor for PlatformItemList.Item() + 112);
  v11 = type metadata accessor for CommandOperation();
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = v10 + *(v11 + 20);
    outlined consume of Text.Storage(*v12, *(v12 + 8), *(v12 + 16));

    v13 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(v12 + v13, v14);
    if (*(v10 + *(v11 + 24)))
    {
    }
  }
}

uint64_t outlined init with copy of HashableCommandGroupPlacementWrapper?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for HashableCommandGroupPlacementWrapper?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of HashableCommandGroupPlacementWrapper?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for HashableCommandGroupPlacementWrapper?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void MenuVisitor.buildUIMenuElement(_:uniqueNames:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  type metadata accessor for HashableCommandGroupPlacementWrapper?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for CommandOperation();
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  PlatformItemList.Item.configurationIdentifier.getter(v47);
  v14 = PlatformItemList.Item.ConfigurationIdentifier.identifier.getter();
  v16 = v15;
  outlined destroy of PlatformItemList.Item.ConfigurationIdentifier(v47);
  if (v2[6])
  {
    v17 = v16;
    if ((v13 & 1) == 0)
    {
LABEL_13:
      if (*(a1 + 416) != 1 && *(a1 + 464) && (v32 = *a1) != 0)
      {

        v33 = [v32 string];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICommand);
        v45 = 0u;
        v46 = 0u;
        v34 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      }

      else
      {
        v34 = PlatformItemList.Item.uiAction(_:)(v14, v17);
      }

      v24 = v34;
      MenuVisitor.appendMenuItem(_:)(v24);

      if ((v13 & 1) == 0)
      {

        return;
      }

      v29 = v43;
      goto LABEL_23;
    }
  }

  else
  {
    v18 = *a2;
    v14 = MenuVisitor.uniqueMenuIdentifier(in:candidate:)(*a2, v14, v16);
    v17 = v19;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18);
    }

    v21 = *(v18 + 16);
    v20 = *(v18 + 24);
    if (v21 >= v20 >> 1)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
    }

    *(v18 + 16) = v21 + 1;
    v22 = v18 + 16 * v21;
    *(v22 + 32) = v14;
    *(v22 + 40) = v17;
    *a2 = v18;
    if ((v13 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v23 = PlatformItemList.Item.uiKeyCommand.getter();
  if (!v23)
  {
    goto LABEL_13;
  }

  v24 = v23;
  v25 = UIKeyCommand.discoverabilityID.getter();
  v27 = v26;

  if (v27)
  {
    __break(1u);
    return;
  }

  v28 = *(a1 + 416);
  v29 = v43;
  if (v28 >= 2)
  {
    v35 = *(a1 + 424);
    v31 = swift_allocObject();
    *(v31 + 16) = v28;
    *(v31 + 24) = v35;

    v30 = partial apply for thunk for @callee_guaranteed () -> ();
  }

  else
  {
    v30 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
    v31 = 0;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v45 = v3[2];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v31, v25, isUniquelyReferenced_nonNull_native);
  v3[2] = v45;
  MenuVisitor.appendMenuItem(_:)(v24);

LABEL_23:
  v37 = type metadata accessor for PlatformItemList.Item();
  outlined init with copy of HashableCommandGroupPlacementWrapper?(a1 + *(v37 + 112), v10, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
  v38 = v44;
  if ((*(v29 + 48))(v10, 1, v44) == 1)
  {

    outlined destroy of HashableCommandGroupPlacementWrapper?(v10, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
  }

  else
  {
    v39 = v41;
    outlined init with take of CommandOperation(v10, v41, type metadata accessor for CommandOperation);
    v40 = v42;
    outlined init with copy of MenuVisitor.MenuStackGroup(v39, v42, type metadata accessor for CommandOperation);
    (*(v29 + 56))(v40, 0, 1, v38);
    specialized Dictionary.subscript.setter(v40, v24);
    _s7SwiftUI16PlatformItemListV0D0VWOhTm_0(v39, type metadata accessor for CommandOperation);
  }
}

uint64_t sub_18C01B948()
{

  return swift_deallocObject();
}

id PlatformItemList.Item.configurationIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 208);
  v21[8] = *(v1 + 192);
  v21[9] = v3;
  v22[0] = *(v1 + 224);
  *(v22 + 11) = *(v1 + 235);
  v4 = *(v1 + 144);
  v21[4] = *(v1 + 128);
  v21[5] = v4;
  v5 = *(v1 + 176);
  v21[6] = *(v1 + 160);
  v21[7] = v5;
  v6 = *(v1 + 80);
  v21[0] = *(v1 + 64);
  v21[1] = v6;
  v7 = *(v1 + 112);
  v8 = *(v1 + 336);
  v21[2] = *(v1 + 96);
  v21[3] = v7;
  if (v8 >> 2 == 0xFFFFFFFF)
  {
    v9 = 0;
  }

  else
  {
    v12 = v8 == 0xC000000000000000;
    v10 = vorrq_s8(vorrq_s8(*(v1 + 344), *(v1 + 376)), vorrq_s8(*(v1 + 360), *(v1 + 392)));
    v11 = *&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) | *(v1 + 328) | *(v1 + 320) | *(v1 + 312) | *(v1 + 304);
    v12 = v12 && v11 == 0;
    v9 = v12;
  }

  v13 = *(v1 + 936);
  v15 = *(v1 + 16);
  v14 = *(v1 + 24);
  v20 = *v1;
  v16 = *(v1 + 944);
  if (v16)
  {
    if (v16[2])
    {
      v17 = *(type metadata accessor for PlatformItemList.Item() - 8);
      v16 = *(v16 + ((*(v17 + 80) + 32) & ~*(v17 + 80)));
      v18 = v16;
    }

    else
    {
      v16 = 0;
    }
  }

  *a1 = _s7SwiftUI5ImageVAAE8ResolvedVSgWOg(v21) == 0;
  *(a1 + 1) = v13 != 0;
  *(a1 + 2) = v9;
  *(a1 + 8) = v15;
  *(a1 + 16) = v14;
  *(a1 + 24) = v20;
  *(a1 + 32) = v16;

  return v20;
}

unint64_t PlatformItemList.Item.ConfigurationIdentifier.identifier.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v0 + 8);
  if (*(&v27 + 1))
  {
    v5 = v27;
  }

  else
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    v6 = *(v0 + 24);
    if (v6)
    {
      v7 = v6;
      v8 = [v7 string];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      MEMORY[0x18D00C9B0](v9, v11);
    }

    v12 = *(v0 + 32);
    if (v12)
    {
      v13 = v12;
      v14 = [v13 string];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      MEMORY[0x18D00C9B0](v15, v17);
    }

    v5 = v25;
    v18 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v18 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (!v18)
    {

      v23 = 0;
      v24 = 0xE000000000000000;
      _StringGuts.grow(_:)(33);

      v23 = 0xD00000000000001FLL;
      v24 = 0x800000018CD5CB60;
      UUID.init()();
      v19 = UUID.uuidString.getter();
      v21 = v20;
      (*(v2 + 8))(v4, v1);
      MEMORY[0x18D00C9B0](v19, v21);

      v5 = v23;
    }
  }

  outlined init with copy of String?(&v27, &v25);
  return v5;
}

uint64_t outlined init with copy of String?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for String?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void destroy for PlatformItemList.Item.ConfigurationIdentifier(uint64_t a1)
{

  v2 = *(a1 + 32);
}

uint64_t MenuVisitor.uniqueMenuIdentifier(in:candidate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {

    v7 = (a1 + 40);
    v8 = 1;
    v9 = a2;
    v10 = a3;
    while (1)
    {
      v11 = *(v7 - 1) == v9 && *v7 == v10;
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        MEMORY[0x18D00C9B0](46, 0xE100000000000000);
        v12 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x18D00C9B0](v12);

        if (__OFADD__(v8++, 1))
        {
          __break(1u);
          return result;
        }

        v9 = a2;
        v10 = a3;
      }

      v7 += 2;
      if (!--v5)
      {
        return v9;
      }
    }
  }

  return a2;
}

id PlatformItemList.Item.uiAction(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = type metadata accessor for PlatformItemList.Item();
  v6 = *(v37 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v37);
  v9 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v2 + 896);
  v10 = v34;
  if (v34 || (v10 = *v2) != 0)
  {
    v11 = [v10 string];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v13;
    v36 = v12;
  }

  else
  {
    v35 = 0xE000000000000000;
    v36 = 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction);
  PlatformItemList.Item.resolvedMenuItemImage.getter();
  MEMORY[0x18D00C850](a1, a2);
  outlined init with copy of MenuVisitor.MenuStackGroup(v3, &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlatformItemList.Item);
  v14 = *(v6 + 80);
  v15 = swift_allocObject();
  outlined init with take of CommandOperation(v9, v15 + ((v14 + 16) & ~v14), type metadata accessor for PlatformItemList.Item);

  v16 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v17 = v16;
  v18 = *(v3 + 944);
  if (v18 && *(v18 + 16) && (v19 = *(v18 + ((v14 + 32) & ~v14))) != 0)
  {
    v20 = v16;
    v21 = [v19 string];
    v22 = v37;
    if (!v21)
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = MEMORY[0x18D00C850](v23);
    }
  }

  else
  {
    v24 = v16;
    v21 = 0;
    v22 = v37;
  }

  [v17 setSubtitle_];

  [v17 setState_];
  if (*(v3 + *(v22 + 132)) == 1)
  {
    static Semantics.v7.getter();
    if (isLinkedOnOrAfter(_:)())
    {
      v25 = v34;
      if (v34)
      {
        v26 = v34;
      }

      else
      {
        v26 = *v3;
        v25 = 0;
      }

      v27 = v25;
      [v17 setAttributedTitle_];
    }
  }

  v28 = *(v3 + 336);
  if (v28 >> 2 != 0xFFFFFFFF && !(v28 >> 62) && *(v3 + 305) << 8 != 1024)
  {
    v29 = PlatformItemList.Item.resolvedMenuItemImage.getter();
    [v17 setSelectedImage_];
  }

  v30 = *(v3 + 416);
  if (!v30)
  {
    goto LABEL_30;
  }

  if (v30 != 1)
  {
    if (*(v3 + 56))
    {
      goto LABEL_24;
    }

LABEL_30:
    if (*(v3 + *(v22 + 120)))
    {
      v31 = 9;
    }

    else
    {
      v31 = 1;
    }

    goto LABEL_33;
  }

  if (!*(v3 + 936))
  {
    goto LABEL_30;
  }

LABEL_24:
  if (*(v3 + 528))
  {
    v31 = 8;
  }

  else
  {
    v31 = 10;
  }

  if (*(v3 + *(v22 + 120)) != 1)
  {
    v31 = 2 * (*(v3 + 528) == 0);
  }

LABEL_33:
  [v17 setAttributes_];
  v32 = v17;
  specialized PlatformItemList.Item.applyAccessibilityProperties(to:)(v32, v3, closure #1 in PlatformItemList.Item.applyAccessibilityProperties(to:)partial apply, &block_descriptor_13_0);

  return v32;
}

uint64_t sub_18C01C380()
{
  v1 = type metadata accessor for PlatformItemList.Item();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v2 + 192);
  v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
  if ((v3 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
  {
    v5 = *(v2 + 72);
    if (v5 != 255)
    {
      outlined consume of GraphicsImage.Contents(*(v2 + 64), v5);
      v3 = *(v2 + 192);
      v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
    }

    if (v4 != 0x1FFFFFFFELL)
    {
      outlined consume of AccessibilityImageLabel(*(v2 + 176), *(v2 + 184), v3);
    }

    swift_unknownObjectRelease();
  }

  if (*(v2 + 264))
  {

    v6 = *(v2 + 272);
    if (v6 >= 2)
    {
    }
  }

  v7 = *(v2 + 336);
  if (v7 >> 2 != 0xFFFFFFFF)
  {
    outlined consume of PlatformItemList.Item.SystemItem(*(v2 + 304), *(v2 + 312), *(v2 + 320), *(v2 + 328), v7, *(v2 + 344), *(v2 + 352), *(v2 + 360), *(v2 + 368), *(v2 + 376), *(v2 + 384), *(v2 + 392), *(v2 + 400));
  }

  v8 = *(v2 + 416);
  if (v8)
  {
    if (v8 == 1)
    {
      goto LABEL_20;
    }
  }

  if (*(v2 + 432))
  {
  }

  if (*(v2 + 448))
  {
  }

LABEL_20:

  if (*(v2 + 512))
  {
  }

  if (*(v2 + 816))
  {

    v9 = *(v2 + 624);
    if (v9)
    {
      if (v9 == 1)
      {
LABEL_27:
        if (*(v2 + 776) != 1)
        {
        }

        goto LABEL_30;
      }

      __swift_destroy_boxed_opaque_existential_1(v2 + 600);
    }

    goto LABEL_27;
  }

LABEL_30:
  v10 = *(v2 + 864);
  if (v10)
  {
    if (v10 == 1)
    {
      goto LABEL_35;
    }

    __swift_destroy_boxed_opaque_existential_1(v2 + 840);
  }

  if (*(v2 + 880))
  {
  }

LABEL_35:

  v11 = v2 + *(v1 + 112);
  v12 = type metadata accessor for CommandOperation();
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v13 = v11 + *(v12 + 20);
    outlined consume of Text.Storage(*v13, *(v13 + 8), *(v13 + 16));

    v14 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 8))(v13 + v14, v15);
    if (*(v11 + *(v12 + 24)))
    {
    }
  }

  return swift_deallocObject();
}

uint64_t PlatformItemList.Item.image.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 176);
  v31 = *(v0 + 192);
  v32 = v1;
  v3 = *(v0 + 208);
  v33[0] = *(v0 + 224);
  *(v33 + 11) = *(v0 + 235);
  v4 = *(v0 + 144);
  v5 = *(v0 + 112);
  v27 = *(v0 + 128);
  v28 = v4;
  v6 = *(v0 + 144);
  v7 = *(v0 + 176);
  v29 = *(v0 + 160);
  v30 = v7;
  v8 = *(v0 + 80);
  v24[0] = *(v0 + 64);
  v24[1] = v8;
  v9 = *(v0 + 112);
  v11 = *(v0 + 64);
  v10 = *(v0 + 80);
  v25 = *(v0 + 96);
  v26 = v9;
  v41 = v31;
  v42 = v3;
  v43[0] = *(v0 + 224);
  *(v43 + 11) = *(v0 + 235);
  v38 = v27;
  *v39 = v6;
  *&v39[16] = v29;
  v40 = v2;
  v34 = v11;
  v35 = v10;
  v36 = v25;
  v37 = v5;
  if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v34) == 1)
  {
    return 0;
  }

  if (v42)
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    return swift_dynamicCastObjCClassUnconditional();
  }

  else
  {
    v22 = v38;
    v23[0] = *v39;
    *(v23 + 12) = *&v39[12];
    v18 = v34;
    v19 = v35;
    v20 = v36;
    v21 = v37;
    v13 = *(v0 + 48);
    v14 = MEMORY[0x1E6981730];
    outlined init with copy of PlatformItemList.Item.SystemItem?(v24, v16, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
    outlined init with copy of GraphicsImage(&v34, v16);
    v15 = GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(0, 0, v13);
    _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v24, &lazy cache variable for type metadata for Image.Resolved?, v14);
    v16[4] = v22;
    v17[0] = v23[0];
    *(v17 + 12) = *(v23 + 12);
    v16[0] = v18;
    v16[1] = v19;
    v16[2] = v20;
    v16[3] = v21;
    outlined destroy of GraphicsImage(v16);
    return v15;
  }
}

uint64_t PlatformItemList.Item.resolvedMenuItemImage.getter()
{
  static Semantics.v6_4.getter();
  v1 = isLinkedOnOrAfter(_:)();
  if (*(v0 + *(type metadata accessor for PlatformItemList.Item() + 136)))
  {
    v2 = *(v0 + 336);
    if (v2 >> 62)
    {
      v3 = 1;
    }

    else
    {
      v3 = (v2 & 0xFFFFFFFFFFFFFFFCLL) == 0x3FFFFFFFCLL;
    }

    if (!v3)
    {
      outlined copy of PlatformItemList.Item.SystemItem(*(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328), v2, *(v0 + 344), *(v0 + 352), *(v0 + 360), *(v0 + 368), *(v0 + 376), *(v0 + 384), *(v0 + 392), *(v0 + 400));
LABEL_11:
      _s7SwiftUI5ImageVAAE8ResolvedVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_18CD69590;
      type metadata accessor for UIColor();
      v6 = swift_retain_n();
      *(v5 + 32) = UIColor.init(_:)(v6);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v8 = [objc_opt_self() configurationWithPaletteColors_];

      v9 = PlatformItemList.Item.image.getter();
      if (v9)
      {
        v10 = v9;
        v11 = [v9 imageWithSymbolConfiguration_];
      }

      else
      {

        return 0;
      }

      return v11;
    }

    if (v1)
    {
      goto LABEL_11;
    }
  }

  return PlatformItemList.Item.image.getter();
}

void specialized PlatformItemList.Item.applyAccessibilityProperties(to:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of PlatformItemList.Item.Accessibility?((a2 + 67), &aBlock);
  if (!v60)
  {
    outlined destroy of AnyAccessibilityValue?(&aBlock, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?);
LABEL_12:
    v17 = *a2;
    [a1 setSwiftUI:*a2 accessibilityStoredLabel:?];
    if (v17)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

  v8 = v61;
  v9 = v62;

  outlined destroy of PlatformItemList.Item.Accessibility(&aBlock);
  v47 = v8;
  v48 = v9;
  v10 = EnvironmentValues.accessibilityEnabled.getter();

  if ((v10 & 1) == 0)
  {
    goto LABEL_12;
  }

  v11 = [a1 swiftUI_accessibilityStoredLabel];
  if (v11)
  {

    [a1 setSwiftUI:0 accessibilityStoredLabel:?];
  }

  v12 = PlatformItemList.Item.accessibilityEffectiveText.getter();
  if (v12)
  {
    [a1 setAccessibilityAttributedLabel_];
  }

  outlined init with copy of PlatformItemList.Item.Accessibility?((a2 + 67), &aBlock);
  if (v60)
  {
    outlined init with copy of AccessibilityProperties(&aBlock, &v47);
    outlined destroy of PlatformItemList.Item.Accessibility(&aBlock);
    v14 = v47;
    v13 = v48;
    v15 = v49;

    outlined destroy of AccessibilityProperties(&v47);
    if (v13)
    {
      if (v15 >= 2)
      {
      }

      else
      {
        v16 = MEMORY[0x18D00C850](v14, v13);

        [a1 setAccessibilityIdentifier_];
      }
    }
  }

  else
  {
    outlined destroy of AnyAccessibilityValue?(&aBlock, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?);
  }

  outlined init with copy of PlatformItemList.Item.Accessibility?((a2 + 67), &aBlock);
  if (v60)
  {
    outlined init with copy of AccessibilityProperties(&aBlock, &v47);
    outlined destroy of PlatformItemList.Item.Accessibility(&aBlock);
    v20 = v50;
    v21 = v51;
    outlined destroy of AccessibilityProperties(&v47);
    if ((v21 & 1) == 0)
    {
      v44 = a4;
      v43 = a3;
      v42 = [a1 accessibilityTraits];
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = outlined read-only object #0 of static AccessibilityTrait.allCases.getter[v22 + 32];
        if (v24 <= 0xD && ((1 << v24) & 0x2844) != 0 && ((v20 >> v24) & 1) != 0)
        {
          LOBYTE(aBlock) = outlined read-only object #0 of static AccessibilityTrait.allCases.getter[v22 + 32];
          v26 = AccessibilityTrait.uiTrait.getter();
          if ((v27 & 1) == 0)
          {
            v23 |= v26;
          }
        }

        ++v22;
      }

      while (v22 != 32);
      [a1 setAccessibilityTraits_];
      a3 = v43;
      a4 = v44;
    }
  }

  else
  {
    outlined destroy of AnyAccessibilityValue?(&aBlock, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?);
  }

  outlined init with copy of PlatformItemList.Item.Accessibility?((a2 + 67), &aBlock);
  if (!v60)
  {
    goto LABEL_38;
  }

  outlined init with copy of AccessibilityProperties(&aBlock, &v47);
  outlined destroy of PlatformItemList.Item.Accessibility(&aBlock);
  v28 = AccessibilityProperties.hints.getter();
  outlined destroy of AccessibilityProperties(&v47);
  if (!*(v28 + 16))
  {

    goto LABEL_41;
  }

  outlined init with copy of PlatformItemList.Item.Accessibility?((a2 + 67), &aBlock);
  if (!v60)
  {

LABEL_38:
    outlined destroy of AnyAccessibilityValue?(&aBlock, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?);
    goto LABEL_41;
  }

  v45 = v12;
  v29 = a3;
  v30 = a4;
  v31 = v61;
  v32 = v62;

  v33 = outlined destroy of PlatformItemList.Item.Accessibility(&aBlock);
  aBlock = v31;
  v55 = v32;
  v47 = 0;
  v48 = 0;
  MEMORY[0x18D005BE0](&v46, v33);
  v34 = static AccessibilityCore.textsResolvedToPlainText(_:in:options:idiom:separator:)();
  v36 = v35;

  if (v36)
  {
    v37 = MEMORY[0x18D00C850](v34, v36);
  }

  else
  {
    v37 = 0;
  }

  a4 = v30;
  a3 = v29;
  [a1 setAccessibilityHint_];

  v12 = v45;
LABEL_41:
  outlined init with copy of PlatformItemList.Item.Accessibility?((a2 + 67), &aBlock);
  if (!v60)
  {

    outlined destroy of AnyAccessibilityValue?(&aBlock, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?);
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_50:
    [a1 setAccessibilityLabelBlock_];
    return;
  }

  outlined init with copy of AccessibilityProperties(&aBlock, &v47);
  outlined destroy of PlatformItemList.Item.Accessibility(&aBlock);
  v38 = v52;
  v39 = v53;
  outlined destroy of AccessibilityProperties(&v47);
  if ((v39 & 1) == 0)
  {
    v40 = (v38 >> 3) & 1;
    if ((v38 & 0x400000000) != 0)
    {
      v40 = 0;
    }

    if ((v38 & 4) != 0)
    {
      v41 = 1;
    }

    else
    {
      v41 = v40;
    }

    [a1 setAccessibilityElementsHidden_];
  }

  if (!v12)
  {
    goto LABEL_50;
  }

LABEL_13:
  if (![a1 _accessibilityGetBlockForAttribute_])
  {
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v58 = a3;
    v59 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v55 = 1107296256;
    v56 = thunk for @escaping @callee_guaranteed () -> (@owned String?);
    v57 = a4;
    v19 = _Block_copy(&aBlock);

    [a1 setAccessibilityLabelBlock_];
    _Block_release(v19);
  }
}

uint64_t sub_18C01CFDC()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

id PlatformItemList.Item.accessibilityEffectiveText.getter()
{
  outlined init with copy of AnyAccessibilityValue?((v0 + 67), &v12, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?);
  if (v14)
  {
    v1 = v15;
    v2 = v16;

    outlined destroy of PlatformItemList.Item.Accessibility(&v12);
  }

  else
  {
    outlined destroy of AnyAccessibilityValue?(&v12, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?);
    if (one-time initialization token for configuredForPlatform != -1)
    {
      swift_once();
    }

    v2 = *(&static EnvironmentValues.configuredForPlatform + 1);
    v1 = static EnvironmentValues.configuredForPlatform;
  }

  outlined init with copy of AnyAccessibilityValue?((v0 + 67), &v12, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?);
  if (v14)
  {
    outlined init with copy of AccessibilityProperties(&v12, v9);
    outlined destroy of PlatformItemList.Item.Accessibility(&v12);
    v3 = v9[3];
    v4 = v10;

    outlined destroy of AccessibilityProperties(v9);
    if (!v3 || (, v4 == 3))
    {
      v5 = *v0;
      if (*v0)
      {
        goto LABEL_10;
      }
    }

LABEL_13:
    v12 = v1;
    v13 = v2;
    v5 = PlatformItemList.Item.accessibilityResolvedAttributedLabel(in:)(&v12);

    return v5;
  }

  outlined destroy of AnyAccessibilityValue?(&v12, &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?);
  v5 = *v0;
  if (!*v0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v9[0] = v5;
  v12 = v1;
  v13 = v2;
  v11 = 0;
  v6 = v5;
  v7 = static AccessibilityCore.resolveAttributedTextAttributes(in:environment:options:)();

  if (v7)
  {

    return v9[0];
  }

  else
  {
  }

  return v5;
}

void specialized static SwiftUIAccessibilityTextResolver.resolveDefaultAttributes(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x1E69E7CA0];
  if (*(*a1 + 16))
  {
    v4 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E69DB648]);
    if (v5)
    {
      outlined init with copy of Any(*(v2 + 56) + 32 * v4, &v51);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont);
      if (swift_dynamicCast())
      {
        v6 = static NSAttributedStringKey.coreAXFontName.getter();
        v7 = [v50 fontName];
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

        v11 = MEMORY[0x1E69E6158];
        *(&v52 + 1) = MEMORY[0x1E69E6158];
        *&v51 = v8;
        *(&v51 + 1) = v10;
        specialized Dictionary.subscript.setter(&v51, v6);
        v12 = static NSAttributedStringKey.coreAXFontSize.getter();
        [v50 pointSize];
        *(&v52 + 1) = MEMORY[0x1E69E7DE0];
        *&v51 = v13;
        specialized Dictionary.subscript.setter(&v51, v12);
        v14 = static NSAttributedStringKey.coreAXFontFamily.getter();
        v15 = [v50 familyName];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        *(&v52 + 1) = v11;
        *&v51 = v16;
        *(&v51 + 1) = v18;
        specialized Dictionary.subscript.setter(&v51, v14);
      }
    }
  }

  v19 = *a1;
  if (*(*a1 + 16))
  {
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E69DB650]);
    if (v21)
    {
      outlined init with copy of Any(*(v19 + 56) + 32 * v20, &v51);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
      if (swift_dynamicCast())
      {
        v22 = [v50 CGColor];
        v23 = _AXSwiftUINameFromColor(v22);

        if (v23)
        {
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;

          v27 = static NSAttributedStringKey.coreAXForegroundColor.getter();
          *(&v52 + 1) = MEMORY[0x1E69E6158];
          *&v51 = v24;
          *(&v51 + 1) = v26;
          specialized Dictionary.subscript.setter(&v51, v27);
        }
      }
    }
  }

  v28 = *a1;
  if (*(*a1 + 16) && (v29 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E69DB6B8]), (v30 & 1) != 0))
  {
    outlined init with copy of Any(*(v28 + 56) + 32 * v29, &v51);
    _sypSgWOhTm_3(&v51, &lazy cache variable for type metadata for Any?, v3 + 8);
    v31 = static NSAttributedStringKey.coreAXStrikethrough.getter();
    *(&v52 + 1) = MEMORY[0x1E69E6370];
    LOBYTE(v51) = 1;
    specialized Dictionary.subscript.setter(&v51, v31);
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
    _sypSgWOhTm_3(&v51, &lazy cache variable for type metadata for Any?, v3 + 8);
  }

  v32 = *a1;
  if (*(*a1 + 16) && (v33 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E69DB758]), (v34 & 1) != 0))
  {
    outlined init with copy of Any(*(v32 + 56) + 32 * v33, &v51);
    _sypSgWOhTm_3(&v51, &lazy cache variable for type metadata for Any?, v3 + 8);
    v35 = static NSAttributedStringKey.coreAXUnderline.getter();
    *(&v52 + 1) = MEMORY[0x1E69E6370];
    LOBYTE(v51) = 1;
    specialized Dictionary.subscript.setter(&v51, v35);
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
    _sypSgWOhTm_3(&v51, &lazy cache variable for type metadata for Any?, v3 + 8);
  }

  v36 = *a1;
  if (*(*a1 + 16))
  {
    v37 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E69DB688]);
    if (v38)
    {
      outlined init with copy of Any(*(v36 + 56) + 32 * v37, &v51);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSParagraphStyle);
      if (swift_dynamicCast())
      {
        v39 = static NSAttributedStringKey.coreAXAlignment.getter();
        v40 = [v50 horizontalAlignment];
        *(&v52 + 1) = MEMORY[0x1E69E6530];
        *&v51 = v40;
        specialized Dictionary.subscript.setter(&v51, v39);
      }
    }
  }

  v41 = *a1;
  if (*(*a1 + 16))
  {
    v42 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E69DB5F8]);
    if (v43)
    {
      outlined init with copy of Any(*(v41 + 56) + 32 * v42, &v51);
      v44 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSTextAttachment);
      if (swift_dynamicCast())
      {
        v45 = static NSAttributedStringKey.coreAXAttachment.getter();
        *(&v52 + 1) = v44;
        *&v51 = v50;
        specialized Dictionary.subscript.setter(&v51, v45);
      }
    }
  }

  v46 = *a1;
  if (*(*a1 + 16) && (v47 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E69DB670]), (v48 & 1) != 0))
  {
    outlined init with copy of Any(*(v46 + 56) + 32 * v47, &v51);
    _sypSgWOhTm_3(&v51, &lazy cache variable for type metadata for Any?, v3 + 8);
    v49 = static NSAttributedStringKey.coreAXLink.getter();
    *(&v52 + 1) = MEMORY[0x1E69E6370];
    LOBYTE(v51) = 1;
    specialized Dictionary.subscript.setter(&v51, v49);
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
    _sypSgWOhTm_3(&v51, &lazy cache variable for type metadata for Any?, v3 + 8);
  }
}

void HostingScrollView.PlatformGroupContainer.pruneFillerItems()()
{
  v1 = v0;
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v81 - v6;
  v8 = OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer_fillerItems;
  if (!*(*&v0[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer_fillerItems] + 16))
  {
    return;
  }

  v9 = HostingScrollView.PlatformGroupContainer.visibleBounds.getter();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v90 = MEMORY[0x1E69E7CC0];
  v16 = v0;

  v88 = specialized _ArrayProtocol.filter(_:)(v17, v16, &v90, v9, v11, v13, v15);

  v18 = v90;
  v19 = v90[2];
  if (!v19)
  {
    goto LABEL_26;
  }

  v86 = v4;
  v20 = v8;
  v21 = 0;
  v22 = (v90 + 4);
  while (1)
  {
    if (v21 >= v18[2])
    {
      __break(1u);
      goto LABEL_34;
    }

    type metadata accessor for UIKitFocusableFillerItem();
    swift_unknownObjectRetain();
    v23 = UIFocusItem.isFocused.getter();
    swift_unknownObjectRelease();
    if (v23)
    {
      break;
    }

    ++v21;
    ++v22;
    if (v19 == v21)
    {
      v8 = v20;
      goto LABEL_26;
    }
  }

  if (v21 >= v18[2])
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v87 = *v22;
  swift_unknownObjectRetain();
  specialized Array.remove(at:)(v21);
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  v18 = v88;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_10;
  }

LABEL_35:
  v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
LABEL_10:
  v8 = v20;
  v25 = v18[2];
  v24 = v18[3];
  if (v25 >= v24 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v18);
  }

  v18[2] = v25 + 1;
  *&v18[2 * v25 + 4] = v87;
  v26 = swift_unknownObjectRetain();
  v27 = HostingScrollView.PlatformGroupContainer.querySubstitute(for:)(v26);
  v88 = v18;
  if (v27)
  {
    *&v16[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer_requestedFocusItem] = v27;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    static Log.focus.getter();
    v28 = type metadata accessor for Logger();
    v29 = *(v28 - 8);
    v86 = v28;
    *&v87 = v29;
    if ((*(v29 + 48))(v7, 1) == 1)
    {
      outlined destroy of Logger?(v7);
    }

    else
    {
      v33 = v16;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      v84 = v33;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      LODWORD(v85) = v35;
      v36 = v35;
      v37 = v34;
      if (os_log_type_enabled(v34, v36))
      {
        v38 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v89[0] = v83;
        *v38 = 136315650;
        v39 = swift_unknownObjectRetain();
        v40 = _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCSo07UIFocusE0_p_Tt0g5Tf4e_nAA0c15FocusableFillerE033_60C465D0E37117769FC505C04DE5239ALLC_Tg5Tf4g_n(v39);
        v82 = v37;
        v42 = v41;
        swift_unknownObjectRelease();
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v89);

        *(v38 + 4) = v43;
        *(v38 + 12) = 2080;
        swift_getObjectType();
        v44 = swift_unknownObjectRetain();
        v45 = _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCSo07UIFocusE0_p_Tt0g5Tf4e_nTf4g_n(v44);
        v47 = v46;
        swift_unknownObjectRelease();
        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v89);

        *(v38 + 14) = v48;
        *(v38 + 22) = 2080;
        v49 = v84;
        v50 = _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCAA17HostingScrollViewC22PlatformGroupContainerC_Tt0g5Tf4g_n();
        v52 = v51;

        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v89);

        *(v38 + 24) = v53;
        v54 = v82;
        _os_log_impl(&dword_18BD4A000, v82, v85, "substituting: %s with: %s in host: %s", v38, 0x20u);
        v55 = v83;
        swift_arrayDestroy();
        MEMORY[0x18D0110E0](v55, -1, -1);
        MEMORY[0x18D0110E0](v38, -1, -1);
      }

      else
      {
      }

      (*(v87 + 8))(v7, v86);
    }

    [v16 setNeedsFocusUpdate];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();
  }

  else
  {
    v30 = v86;
    static Log.focus.getter();
    v31 = type metadata accessor for Logger();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v30, 1, v31) == 1)
    {
      swift_unknownObjectRelease_n();
      outlined destroy of Logger?(v30);
    }

    else
    {
      v56 = v16;
      swift_unknownObjectRetain();
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v89[0] = v85;
        *v59 = 136315394;
        v60 = swift_unknownObjectRetain();
        v61 = _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCSo07UIFocusE0_p_Tt0g5Tf4e_nAA0c15FocusableFillerE033_60C465D0E37117769FC505C04DE5239ALLC_Tg5Tf4g_n(v60);
        LODWORD(v83) = v58;
        v62 = v61;
        v84 = v57;
        v64 = v63;
        swift_unknownObjectRelease();
        v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v89);

        *(v59 + 4) = v65;
        *(v59 + 12) = 2080;
        *&v87 = v32;
        v66 = v59;
        v67 = v56;
        v68 = _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCAA17HostingScrollViewC22PlatformGroupContainerC_Tt0g5Tf4g_n();
        v70 = v69;

        v30 = v86;
        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, v89);

        *(v66 + 14) = v71;
        v72 = v84;
        _os_log_impl(&dword_18BD4A000, v84, v83, "rouge filler: %s in host: %s", v66, 0x16u);
        v73 = v85;
        swift_arrayDestroy();
        MEMORY[0x18D0110E0](v73, -1, -1);
        v74 = v66;
        v32 = v87;
        MEMORY[0x18D0110E0](v74, -1, -1);

        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease_n();
      }

      (*(v32 + 8))(v30, v31);
    }
  }

LABEL_26:
  v75 = v90;
  v76 = v90[2];
  if (v76)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFocusSystem);
    v77 = v75 + 4;
    do
    {
      v78 = *v77;
      swift_unknownObjectRetain();
      v79 = static UIFocusSystem.focusSystem(for:)();
      if (v79)
      {
        v80 = v79;
        [v79 _focusEnvironmentWillDisappear_];
      }

      swift_unknownObjectRelease();
      v77 += 2;
      --v76;
    }

    while (v76);
  }

  *&v1[v8] = v88;
}

void HostingScrollView.bounds.didset()
{
  HostingScrollView.PlatformGroupContainer.pruneFillerItems()();
  v1 = [v0 isTracking];
  if (v1 && *&v0[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationTarget])
  {
    *(*&v0[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_helper] + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_isAnimationCheckPending) = 0;
  }

  v2 = *&v0[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_helper];
  v3 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_ignoreUpdates;
  v4 = *(v2 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_ignoreUpdates);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v2 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_ignoreUpdates) = v6;
  MEMORY[0x1EEE9AC00](v1);
  static Update.ensure<A>(_:)();
  v7 = *(v2 + v3);
  v5 = __OFSUB__(v7, 1);
  v8 = v7 - 1;
  if (v5)
  {
LABEL_11:
    __break(1u);
    return;
  }

  *(v2 + v3) = v8;
  if (!v8 && *(v2 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingUpdate) != 2)
  {
    ScrollViewHelper.updateGraphState(isPreferred:)(0);
  }
}

void closure #1 in HostingScrollView.bounds.didset(char *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v30.receiver = a1;
  v30.super_class = type metadata accessor for HostingScrollView();
  objc_msgSendSuper2(&v30, sel_bounds);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = a4;
  v31.size.height = a5;
  v32.origin.x = v11;
  v32.origin.y = v13;
  v32.size.width = v15;
  v32.size.height = v17;
  if (!CGRectEqualToRect(v31, v32))
  {
    v18 = &a1[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationTarget];
    v19 = *&a1[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_animationTarget];
    if (v19)
    {
      v20 = v18[1];
      *v18 = 0;
      v18[1] = 0;
      HostingScrollView.updateAnimationTarget(_:)();
      if ([a1 isScrollAnimating])
      {
        v21 = *v18;
        *v18 = v19;
        v18[1] = v20;

        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v21);
      }

      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v19);
    }
  }

  if (v11 != a2 || v13 != a3)
  {
    ScrollViewHelper.updateGraphState(isPreferred:)(0);
  }

  EnvironmentValues.pixelLength.getter();
  if (v23 == 1.0)
  {
    v24 = round(a4);
    v25 = round(a5);
    v26 = round(v15);
    v27 = round(v17);
  }

  else
  {
    v24 = v23 * round(a4 / v23);
    v25 = v23 * round(a5 / v23);
    v26 = v23 * round(v15 / v23);
    v27 = v23 * round(v17 / v23);
  }

  if (v24 != v26 || v25 != v27)
  {
    v29 = v25 != 0.0 || v24 != 0.0;
    ScrollViewHelper.updateScrollBehaviorState(canRetarget:)(v29);
  }
}

void specialized Dictionary.subscript.setter(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v7;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CA0];
    v6 = MEMORY[0x1E69E6720];
    outlined destroy of TabEntry?(a1, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v8);

    outlined destroy of TabEntry?(v8, &lazy cache variable for type metadata for Any?, v5 + 8, v6);
  }
}

{
  v3 = v2;
  if (*(a1 + 48))
  {
    v4 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v5)
    {
      v6 = v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      *&v13[0] = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v8 = *&v13[0];
      }

      specialized _NativeDictionary._delete(at:)(v6, v8);
      *v3 = v8;
    }

    else
    {
    }
  }

  else
  {
    v9 = *(a1 + 16);
    v13[0] = *a1;
    v13[1] = v9;
    v13[2] = *(a1 + 32);
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, v10);

    *v2 = v12;
  }
}

{
  type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for CommandOperation();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    v13 = MEMORY[0x1E69E6720];
    outlined destroy of [UTType](a1, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v7);

    outlined destroy of [UTType](v7, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, v13);
  }

  else
  {
    outlined init with take of WeakBox<EntityGestureResponder>(a1, v11, type metadata accessor for CommandOperation);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v16;
  }
}

{
  if (*(a1 + 24))
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(a1, &v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(a2, &v6);

    if (v7)
    {
      __swift_destroy_boxed_opaque_existential_1(&v6);
    }
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for NSAttributedStringKey(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v19);

    return outlined init with take of Any(a1, v19);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    return a2;
  }
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<NSAttributedStringKey, Any>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        outlined init with take of Any(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<SensoryFeedback.FeedbackType, UIFeedbackGenerator>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<UIDragItem, CGPoint>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<UIDragItem, CGAffineTransform>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 48 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = (*(v4 + 56) + 48 * v17);
        *v23 = v20;
        v23[1] = v21;
        v23[2] = v22;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for CommandOperation();
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DictionaryStorage<UIMenuElement, CommandOperation>();
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        outlined init with copy of TabSidebarCustomization(*(v5 + 56) + v22, v4, type metadata accessor for CommandOperation);
        *(*(v7 + 48) + 8 * v20) = v21;
        outlined init with take of TabSidebarCustomization(v4, *(v7 + 56) + v22, type metadata accessor for CommandOperation);
        result = v21;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v7;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, PinnedBarPortalView>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<NSAttributedStringKey, any ValidatingTextAttributeDefinition<Self.ValidatingTextAttributeDefinition.ValidationToken == AttributedTextFormatting.Constraints>>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        outlined init with copy of _Benchmark(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v19, *(v4 + 56) + 40 * v17);
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<UIPasteboardName, AttributedString.PasteboardOwner>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<UISplitViewControllerColumn, NavigationStackCoordinator<SplitColumnNavigationStrategy>>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v30 = type metadata accessor for UTType();
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DictionaryStorage<NSFileWrapper, UTType>();
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v10 = 0;
    v11 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v11;
    v12 = 1 << *(v3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v3 + 64);
    v15 = (v12 + 63) >> 6;
    v27[1] = v32 + 32;
    v27[2] = v32 + 16;
    for (i = v3; v14; v3 = i)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v19 = v16 | (v10 << 6);
      v20 = *(v3 + 56);
      v21 = *(*(v3 + 48) + 8 * v19);
      v22 = v32;
      v23 = *(v32 + 72) * v19;
      v25 = v29;
      v24 = v30;
      (*(v32 + 16))(v29, v20 + v23, v30);
      v26 = v31;
      *(*(v31 + 48) + 8 * v19) = v21;
      (*(v22 + 32))(*(v26 + 56) + v23, v25, v24);
      result = v21;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27[0];
        v5 = v31;
        goto LABEL_21;
      }

      v18 = *(v7 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<UIMenuIdentifier, UIMenuIdentifier>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<String, UIAccessibilityCustomRotor>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<NavigationContentAbstractPosition, NavigationStackHostingController<AnyView>>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 16 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
        result = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}