uint64_t merge32(_:_:)(uint64_t a1, unsigned int a2)
{
  v2 = (a2 | (a1 << 32)) + ~(a2 << 32);
  v3 = (v2 ^ (v2 >> 22)) + ~((v2 ^ (v2 >> 22)) << 13);
  v4 = (9 * (v3 ^ (v3 >> 8))) ^ ((9 * (v3 ^ (v3 >> 8))) >> 15);
  return ((v4 + ~(v4 << 27)) >> 31) ^ (v4 + ~(v4 << 27));
}

uint64_t closure #1 in ToolbarModifier.TransformProperties.value.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolbarStorage.NavigationProperties?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_1(a1, &v17 - v12, type metadata accessor for ToolbarStorage.NavigationProperties?);
  v14 = *(v5 + 48);
  v15 = v14(v13, 1, v4);
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOhTm_0(v13, type metadata accessor for ToolbarStorage.NavigationProperties?);
  if (v15 == 1)
  {
    return outlined assign with copy of ToolbarStorage.NavigationProperties?(a2, a1);
  }

  _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_1(a2, v10, type metadata accessor for ToolbarStorage.NavigationProperties?);
  result = v14(v10, 1, v4);
  if (result != 1)
  {
    outlined init with take of ToolbarStorage.SearchItem?(v10, v7, type metadata accessor for ToolbarStorage.NavigationProperties);
    result = v14(a1, 1, v4);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      ToolbarStorage.NavigationProperties.merge(_:)(v7);
      return _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOhTm_0(v7, type metadata accessor for ToolbarStorage.NavigationProperties);
    }
  }

  return result;
}

uint64_t outlined assign with copy of ToolbarStorage.NavigationProperties?(uint64_t a1, uint64_t a2)
{
  _sSay7SwiftUI14ToolbarStorageV5EntryVGMaTm_0(0, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for UIViewControllerRepresentable.updateUIViewController(_:context:) in conformance NavigationStackRepresentable(void *a1, void *a2)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = *(v2 + 116);
  v8 = specialized Environment.wrappedValue.getter(*(v2 + 168), *(v2 + 176));
  _s7SwiftUI11PPTTestCaseVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_VariadicView_Children>, MEMORY[0x1E697FFD0], MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18CD63400;
  outlined init with copy of _VariadicView_Children(v2 + 24, v9 + 32);

  specialized NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(a1, v5, v6, v4, v7, v8 & 1, v5, v6, v9, &unk_1F0002320, &unk_1F0002370, partial apply for specialized closure #2 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:), qword_1F0002348);
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void *sub_18BF6A0FC(void *result, const void *a2)
{
  if (result != a2)
  {
    v4 = result;
    outlined destroy of NavigationState.Base(result);

    return memcpy(v4, a2, 0x1C1uLL);
  }

  return result;
}

uint64_t outlined consume of Binding<AnyNavigationPath>?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI33NavigationLinkSelectionIdentifierV_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x1E69E6530];
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationLinkSelectionIdentifier, Int>, lazy protocol witness table accessor for type NavigationLinkSelectionIdentifier and conformance NavigationLinkSelectionIdentifier);
    v4 = static _DictionaryStorage.allocate(capacity:)();
    v5 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, TabEntry)(v5, v15, &lazy cache variable for type metadata for (NavigationLinkSelectionIdentifier, Int), &type metadata for NavigationLinkSelectionIdentifier, v3, type metadata accessor for (Badge, Spacer));
      result = specialized __RawDictionaryStorage.find<A>(_:)(v15);
      if (v7)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = (v4[6] + (result << 6));
      v9 = v15[0];
      v10 = v15[1];
      v11 = v15[3];
      v8[2] = v15[2];
      v8[3] = v11;
      *v8 = v9;
      v8[1] = v10;
      *(v4[7] + 8 * result) = v16;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      v5 += 72;
      if (!--v1)
      {

        return v4;
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

uint64_t NavigationColumnState.ColumnContent.stack(path:views:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = v3[2];
  v11 = v3[3];
  *v12 = v3[4];
  *&v12[16] = v3[5];
  v8 = *v3;
  v9 = v3[1];
  if ((*(v3 + 120) & 1) == 0)
  {

    v3[2] = v10;
    v3[3] = v11;
    v3[4] = *v12;
    *(v3 + 73) = *&v12[9];
    *v3 = v8;
    v3[1] = v9;
  }

  *(v3 + 12) = a1;
  *(v3 + 13) = a2;
  *(v3 + 14) = a3;
  *(v3 + 120) = 0;
}

uint64_t getEnumTagSinglePayload for ConfirmationDialog(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 178))
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

uint64_t getEnumTagSinglePayload for SpringLoadedResponderFilter(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t AccessibilityLargeContentViewModifier.init(flags:largeContentView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for AccessibilityLargeContentViewModifier();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t initializeBufferWithCopyOfBuffer for ToolbarButtonContentModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  outlined copy of Environment<Selector?>.Content(v3, v4);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return a1;
}

uint64_t destroy for ToolbarButtonStyle.ResolvedBody(uint64_t a1, uint64_t a2)
{
  v4 = a1 + *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  type metadata accessor for ButtonAction();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v4, *(v4 + 8), *(v4 + 16));
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined consume of Environment<OpenURLAction>.Content(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 34));
      outlined consume of Environment<OpenURLAction>.Content(*(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 74));
      v6 = *(type metadata accessor for LinkDestination() + 24);
      v7 = type metadata accessor for URL();
      (*(*(v7 - 8) + 8))(v4 + v6, v7);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  v8 = a1 + *(a2 + 24);
  v9 = *v8;
  v10 = *(v8 + 8);

  return outlined consume of Environment<Selector?>.Content(v9, v10);
}

uint64_t specialized LazyMapSequence.Iterator.next()@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 4 * v13);
    outlined init with copy of ConfirmationDialog(*(v3 + 56) + 184 * v13, v18);
    LODWORD(v20[0]) = v14;
    outlined init with take of ConfirmationDialog(v18, v20 + 8);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    v15 = v1[5];
    result = outlined init with take of (key: NavigationLinkSelectionIdentifier, value: UpdateViewDestinationRequest)?(v20, v18, &lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog)?, &lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog));
    if (v19)
    {
      outlined init with take of (key: ViewIdentity, value: ConfirmationDialog)(v18, v17, &lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog));
      v15(v17);
      return outlined destroy of (key: ViewIdentity, value: ConfirmationDialog)(v17, &lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog));
    }

    else
    {
      *(a1 + 170) = 0u;
      a1[9] = 0u;
      a1[10] = 0u;
      a1[7] = 0u;
      a1[8] = 0u;
      a1[5] = 0u;
      a1[6] = 0u;
      a1[3] = 0u;
      a1[4] = 0u;
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v12 = 0;
        memset(v20, 0, 186);
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    outlined init with copy of _Benchmark(*(v3 + 56) + 40 * v13, v18);
    *&v21 = v14;
    result = outlined init with take of ScrollEnvironmentTransform(v18, &v21 + 8);
    v16 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18[0] = v21;
      v18[1] = v22;
      v19 = v16;
      v20 = *(&v23 + 1);
      v17(v18);
      return _s7SwiftUI7BindingVySbGWOhTm_0(v18, type metadata accessor for (key: Selector, value: CommandAction));
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(_OWORD *a1@<X8>)
{
  result = outlined init with copy of Environment<HeaderFooterConfiguration>(v1, &v10, &lazy cache variable for type metadata for Environment<ToolbarItemPlacement.Role>.Content, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E697DCB8]);
  if (v12 == 1)
  {
    v4 = *v11;
    *a1 = v10;
    a1[1] = v4;
    *(a1 + 25) = *&v11[9];
  }

  else
  {
    v5 = static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(1701605202, 0xE400000000000000, &v9);
      _os_log_impl(&dword_18BD4A000, v6, v5, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x18D0110E0](v8, -1, -1);
      MEMORY[0x18D0110E0](v7, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
  }

  return result;
}

{
  result = outlined init with copy of Environment<HoverEffectContext?>(v1, &v10, &lazy cache variable for type metadata for Environment<ToolbarItemPlacement?>.Content, &lazy cache variable for type metadata for ToolbarItemPlacement?, &type metadata for ToolbarItemPlacement, MEMORY[0x1E697DCB8]);
  if (v12 == 1)
  {
    v4 = *v11;
    *a1 = v10;
    a1[1] = v4;
    *(a1 + 25) = *&v11[9];
  }

  else
  {
    v5 = static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x800000018CD3F880, &v9);
      _os_log_impl(&dword_18BD4A000, v6, v5, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x18D0110E0](v8, -1, -1);
      MEMORY[0x18D0110E0](v7, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
  }

  return result;
}

{
  v3 = *(v1 + 112);
  v4 = *(v1 + 80);
  v49 = *(v1 + 96);
  v50 = v3;
  v5 = *(v1 + 112);
  v51 = *(v1 + 128);
  v6 = *(v1 + 48);
  v7 = *(v1 + 16);
  v45 = *(v1 + 32);
  v46 = v6;
  v8 = *(v1 + 48);
  v9 = *(v1 + 80);
  v47 = *(v1 + 64);
  v48 = v9;
  v10 = *(v1 + 16);
  v43 = *v1;
  v44 = v10;
  v53[6] = v49;
  v53[7] = v5;
  v53[8] = *(v1 + 128);
  v53[2] = v45;
  v53[3] = v8;
  v53[4] = v47;
  v53[5] = v4;
  v52 = *(v1 + 144);
  v54 = *(v1 + 144);
  v53[0] = v43;
  v53[1] = v7;
  if (_s7SwiftUI11EnvironmentV7ContentOyAA26PresentSharingPickerActionVSg_GWOg(v53) == 1)
  {
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v53, v11, v12, v13);
    v39 = v49;
    v40 = v50;
    v41 = v51;
    v42 = v52;
    v35 = v45;
    v36 = v46;
    v37 = v47;
    v38 = v48;
    v33 = v43;
    v34 = v44;
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(&v33, v14, v15, v16);
    *a1 = *v17;
    v18 = v17[4];
    v20 = v17[1];
    v19 = v17[2];
    a1[3] = v17[3];
    a1[4] = v18;
    a1[1] = v20;
    a1[2] = v19;
    v21 = v17[8];
    v23 = v17[5];
    v22 = v17[6];
    a1[7] = v17[7];
    a1[8] = v21;
    a1[5] = v23;
    a1[6] = v22;
    return outlined init with copy of Environment<HoverEffectContext?>(v1, &v32, &lazy cache variable for type metadata for Environment<PresentSharingPickerAction?>, &lazy cache variable for type metadata for PresentSharingPickerAction?, &type metadata for PresentSharingPickerAction, MEMORY[0x1E697DCC0]);
  }

  else
  {
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v53, v11, v12, v13);
    outlined init with copy of Environment<HoverEffectContext?>(v1, &v33, &lazy cache variable for type metadata for Environment<PresentSharingPickerAction?>, &lazy cache variable for type metadata for PresentSharingPickerAction?, &type metadata for PresentSharingPickerAction, MEMORY[0x1E697DCC0]);
    v25 = static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v26, v25))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v33 = v28;
      *v27 = 136315138;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000018CD3F620, &v33);
      _os_log_impl(&dword_18BD4A000, v26, v25, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x18D0110E0](v28, -1, -1);
      MEMORY[0x18D0110E0](v27, -1, -1);
    }

    v39 = v49;
    v40 = v50;
    v41 = v51;
    v42 = v52;
    v35 = v45;
    v36 = v46;
    v37 = v47;
    v38 = v48;
    v33 = v43;
    v34 = v44;
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(&v33, v29, v30, v31);
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of Environment<ToolbarItemMetrics?>(v1, &lazy cache variable for type metadata for Environment<PresentSharingPickerAction?>, &lazy cache variable for type metadata for PresentSharingPickerAction?, &type metadata for PresentSharingPickerAction);
  }
}

uint64_t sub_18BF6AA1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  result = a2 == 2 && a1 == 2;
  if (v2 != 2)
  {
    v4 = ((a2 ^ v2) & 1) == 0;
    if (a2 == 2)
    {
      return result;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

uint64_t UIViewRepresentableContext.coordinator.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t closure #1 in ResolvedScrollBehavior.containsLazyScrollableCollection.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)?(0, &lazy cache variable for type metadata for [ScrollableCollection], type metadata accessor for ScrollableCollection, MEMORY[0x1E69E62F8]);
  if (AGGraphGetWeakValue())
  {
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

  *a1 = result;
  return result;
}

BOOL ScrollViewCommitMutation.merge(_:)(__int128 *a1)
{
  v3 = *(a1 + 27);
  v26 = *(a1 + 26);
  v4 = *(a1 + 28);
  v5 = *(a1 + 18);
  v25 = *(a1 + 17);
  v28 = *(a1 + 152);
  v29 = *(a1 + 120);
  v6 = *(a1 + 21);
  v7 = *(a1 + 176);
  v8 = *(a1 + 177);
  v27 = *(a1 + 12);
  v9 = *(v1 + 96) >> 60 == 15 || v27 >> 60 == 15;
  if (!v9 && (static WeakAttribute.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + 120) != 5 && v29 != 5 && (static WeakAttribute.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (((*(v1 + 176) | v7) & 1) == 0)
  {
    type metadata accessor for CGSize(0);
    if ((static WeakAttribute.== infix(_:_:)() & 1) == 0)
    {
      return 0;
    }
  }

  if (*(v1 + 177) != 1)
  {
    if (v27 >> 60 == 15)
    {
      if (v29 == 5)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v11 = *(v1 + 64);
      v12 = *(v1 + 96);
      v31[5] = *(v1 + 80);
      v31[6] = v12;
      v13 = *(v1 + 16);
      v31[0] = *v1;
      v14 = *(v1 + 32);
      v15 = *(v1 + 48);
      v31[1] = v13;
      v31[2] = v14;
      v31[3] = v15;
      v31[4] = v11;
      v16 = a1[1];
      *v1 = *a1;
      *(v1 + 16) = v16;
      v17 = a1[3];
      v19 = a1[4];
      v18 = a1[5];
      *(v1 + 64) = v19;
      *(v1 + 80) = v18;
      v20 = a1[3];
      v21 = *a1;
      v22 = a1[1];
      v23 = a1[2];
      *(v1 + 32) = v23;
      *(v1 + 48) = v20;
      v32 = *(v1 + 112);
      *(v1 + 96) = v27;
      *(v1 + 104) = v26;
      *(v1 + 108) = v3;
      *(v1 + 112) = v4;
      v33[0] = v21;
      v33[1] = v22;
      v24 = a1[5];
      v33[4] = v19;
      v33[5] = v24;
      v33[2] = v23;
      v33[3] = v17;
      v34 = v27;
      v35 = v26;
      v36 = v3;
      v37 = v4;
      outlined init with copy of (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)?(v33, v30, type metadata accessor for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>));
      outlined destroy of (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)?(v31, type metadata accessor for (value: SystemScrollLayoutState, attr: WeakAttribute<SystemScrollLayoutState>)?);
      if (v29 == 5)
      {
LABEL_16:
        if (v7)
        {
LABEL_18:
          *(v1 + 177) = v8;
          return 1;
        }

LABEL_17:
        *(v1 + 152) = v28;
        *(v1 + 168) = v6;
        *(v1 + 176) = 0;
        goto LABEL_18;
      }
    }

    *(v1 + 120) = v29;
    *(v1 + 136) = v25;
    *(v1 + 144) = v5;
    if (v7)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  return (v8 & 1) == 0;
}

Swift::Void __swiftcall UIKitBarItemHost.initializeSize()()
{
  swift_getObjectType();
  swift_getWitnessTable();
  v1 = ViewRendererHost.idealSize()();

  [v0 setBounds_];
}

uint64_t protocol witness for ViewGraphFeature.update(graph:) in conformance PlatformItemListViewGraph(uint64_t result)
{
  if (*(v1 + 9) == 1)
  {
    v2 = result;
    result = swift_beginAccess();
    if ((*(v2 + 361) & 2) != 0)
    {
      PlatformItemListViewGraph.readAndUpdate(graph:)(v2);
    }
  }

  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance DefaultToolbarBarPocketModifier@<X0>(char *a1@<X8>)
{
  result = DefaultToolbarBarPocketModifier.needsPocket.getter();
  if (result)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  *a1 = v3;
  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance BarPocketModifier()
{
  type metadata accessor for _ViewModifier_Content<BarPocketModifier>();
  type metadata accessor for CoreInteractionRepresentableAdaptor<ScrollPocketElementInteractionRepresentable>();
  type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for BarMagicPocketStyle.Role?, &type metadata for BarMagicPocketStyle.Role, MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type _ViewModifier_Content<BarPocketModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<BarPocketModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<BarPocketModifier>);
  lazy protocol witness table accessor for type _ViewModifier_Content<BarPocketModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type CoreInteractionRepresentableAdaptor<ScrollPocketElementInteractionRepresentable> and conformance CoreInteractionRepresentableAdaptor<A>, type metadata accessor for CoreInteractionRepresentableAdaptor<ScrollPocketElementInteractionRepresentable>);
  lazy protocol witness table accessor for type BarMagicPocketStyle.Role? and conformance <A> A?();
  return View.coreInteractionRepresentable<A, B>(_:id:)();
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

id _UIInteractionView.init(coreInteractions:)(uint64_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *a1;
  swift_weakInit();
  v6 = &v2[direct field offset for _UIInteractionView.containerProxy];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v7 = &v2[direct field offset for _UIInteractionView.responderHost];
  *&v2[direct field offset for _UIInteractionView.responderHost + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for _UIInteractionView.coreInteractions] = v5;
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for ViewGraph();
  v8 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = *(v8 + 208);

  if (Strong)
  {
    v11 = swift_getObjectType();
    v12 = type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for EventGraphHost);
    (*(v10 + 16))(v16, v12, v12, v11, v10);
    swift_unknownObjectRelease();
    v13 = v16[1];
  }

  else
  {
    v13 = 0;
  }

  *(v7 + 1) = v13;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v15.receiver = v2;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

uint64_t _UIInteractionView.coreInteractions.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = direct field offset for _UIInteractionView.coreInteractions;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

Swift::Void __swiftcall BoundNavigationPathDetector.updateValue()()
{
  type metadata accessor for ObservationTracking?(0, &lazy cache variable for type metadata for ObservationTracking?, MEMORY[0x1E69E81D8]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v59 - v2;
  v4 = type metadata accessor for ObservationTracking();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ObservationTracking?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59 - v12;
  if ((*AGGraphGetValue() & 1) == 0)
  {
    type metadata accessor for NavigationState.StackContent.Key?(0, &lazy cache variable for type metadata for NavigationState.StackContent.Key?, &type metadata for NavigationState.StackContent.Key, MEMORY[0x1E69E6720]);
    AGGraphGetWeakValue();
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      v15 = *(WeakValue + 8);
      if (v15 != 6)
      {
        v16 = *(WeakValue + 16);
        if (v15 != 1 || v16 != 2)
        {
          v69 = *WeakValue;
          if (*(v0 + 64) != *AGGraphGetValue() >> 1)
          {
            *(v0 + 64) = *AGGraphGetValue() >> 1;

            *(v0 + 80) = 0;

            *(v0 + 96) = 0;

            *(v0 + 72) = 0;
            *(v0 + 52) = 0xFFFFFFFFLL;
            *(v0 + 60) = 0;
          }

          type metadata accessor for NavigationState.StackContent.Key?(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
          v18 = AGGraphGetWeakValue();
          if (v18)
          {
            outlined init with copy of NavigationAuthority?(v18, &v72);
            if (v73 == 1)
            {
              outlined destroy of NavigationAuthority?(&v72);
              return;
            }

            v63 = v16;
            v64 = v15;
            outlined init with take of NavigationAuthority(&v72, v86);
            v19 = *(v0 + 80);
            v20 = *(v0 + 8);
            type metadata accessor for NavigationState.StackContent.Key?(0, &lazy cache variable for type metadata for Binding<AnyNavigationPath>, &type metadata for AnyNavigationPath, MEMORY[0x1E6981948]);
            v22 = v21;

            LODWORD(v71) = v20;
            v70 = v22;
            AGGraphGetValue();

            v23 = Transaction.animation.getter();

            if (v19)
            {
              if (v23)
              {
                v24 = static Animation.== infix(_:_:)();

                v25 = v24 ^ 1;
LABEL_18:
                LODWORD(v67) = v25;
                goto LABEL_19;
              }
            }

            else if (!v23)
            {
              LODWORD(v67) = 0;
LABEL_19:
              v26 = *(v0 + 88);
              AGGraphGetValue();

              v27 = Transaction.disablesAnimations.getter();

              if (v26 == 2)
              {
                v28 = 1;
              }

              else
              {
                v28 = v27 ^ v26;
              }

              v66 = v28;
              v29 = *(*(v0 + 40) + OBJC_IVAR____TtCV7SwiftUI27BoundNavigationPathDetector15PathObservation_updateObserved);
              type metadata accessor for ObservationCenter();
              v71 = v0;
              v30 = static ObservationCenter.current.getter();
              MEMORY[0x1EEE9AC00](v30);
              *(&v59 - 2) = v71;
              type metadata accessor for (AnyNavigationPath, Bool)();
              ObservationCenter._withObservation<A>(do:)();

              v68 = v72;
              v31 = v73;
              outlined init with copy of ObservationTracking._AccessList?(v13, v10);
              ObservationTracking.init(_:)();
              v32 = *(v71 + 40);
              (*(v5 + 16))(v3, v7, v4);
              (*(v5 + 56))(v3, 0, 1, v4);
              BoundNavigationPathDetector.PathObservation.tracking.setter(v3);
              v33 = v71;

              MEMORY[0x18D000770](v7, partial apply for closure #2 in BoundNavigationPathDetector.updateValue(), v32, 0, 0);

              v34 = v31 | v29;
              v35 = *(v33 + 8);
              v36 = *(AGGraphGetValue() + 8);
              if (*(v33 + 96))
              {

                v37 = dispatch thunk of AnyLocation.isEqual(to:)();
                v33 = v71;
                v38 = v37;

                v39 = v38 ^ 1;
                *(v33 + 96) = v36;
                if ((v34 & 1) == 0)
                {
                  if (((v67 | v39 | v66) & 1) == 0)
                  {

LABEL_52:
                    (*(v5 + 8))(v7, v4);
                    outlined destroy of ObservationTracking?(v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0]);
                    AGGraphGetValue();

                    v58 = Transaction.animation.getter();

                    *(v33 + 80) = v58;
                    AGGraphGetValue();

                    LOBYTE(v58) = Transaction.disablesAnimations.getter();

                    outlined destroy of NavigationAuthority(v86);
                    *(v33 + 88) = v58 & 1;
                    return;
                  }

                  goto LABEL_31;
                }
              }

              else
              {
                *(v33 + 96) = v36;

                v39 = 1;
                if ((v34 & 1) == 0)
                {
LABEL_31:
                  v42 = 0;
                  goto LABEL_34;
                }
              }

              if (*(v33 + 72))
              {
                v40 = *(*v68 + 96);

                LOBYTE(v40) = v40(v41);

                if (v40)
                {
                  if (((v67 | v39 | v66) & 1) == 0)
                  {

                    v33 = v71;
                    goto LABEL_52;
                  }

                  v42 = 0;
                }

                else
                {
                  v42 = 1;
                }
              }

              else
              {
                v42 = 1;
              }

LABEL_34:
              v43 = UpdateCycleDetector.dispatch(label:isDebug:)();
              v65 = v35;
              if (v43)
              {
                if (((v67 | v39 | v66) & 1) == 0)
                {
                  v47 = v71;
                  if (!v42)
                  {
                    (*(v5 + 8))(v7, v4);
                    outlined destroy of ObservationTracking?(v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0]);
LABEL_49:

                    goto LABEL_50;
                  }

                  Value = AGGraphGetValue();
                  v53 = *Value;
                  v54 = Value[1];

                  AGGraphGetValue();
                  v72 = v68;
                  v73 = v53;
                  v74 = v54;
                  v77 = 6;

                  v55 = Transaction.disablesAnimations.getter();
                  v56 = Transaction.animation.getter();

                  v78 = v69;
                  v79 = v64;
                  v80 = v63;
                  v81 = 0;
                  v82 = 0;
                  v83 = 0;
                  v84 = v55 & 1;
                  v85 = v56;
                  if ((*(v47 + 28) & 1) == 0)
                  {
                    NavigationAuthority.enqueueRequest(_:)(&v72);
                    v47 = v71;
                  }

                  outlined destroy of NavigationRequest(&v72);
                  (*(v5 + 8))(v7, v4);
                  outlined destroy of ObservationTracking?(v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0]);
LABEL_46:

                  *(v47 + 72) = v68;
LABEL_50:
                  AGGraphGetValue();

                  v57 = Transaction.animation.getter();

                  *(v47 + 80) = v57;
                  AGGraphGetValue();

                  LOBYTE(v57) = Transaction.disablesAnimations.getter();

                  outlined destroy of NavigationAuthority(v86);
                  *(v47 + 88) = v57 & 1;
                  return;
                }

                v66 = v42;
                v44 = AGGraphGetValue();
                v45 = v44[1];
                v67 = *v44;
                v61 = v45;
                v46 = v44[2];
                v47 = v71;

                v48 = v46;

                v49 = AGGraphGetValue();
                v51 = *v49;
                v50 = v49[1];

                v59 = *AGGraphGetValue();
                v72 = v67;
                v73 = v61;
                v74 = v48;
                v75 = v51;
                v76 = v50;
                v77 = 1;

                v60 = Transaction.disablesAnimations.getter();
                v62 = Transaction.animation.getter();

                v78 = v69;
                v79 = v64;
                v80 = v63;
                v81 = 0;
                v82 = 0;
                v83 = 0;
                v84 = v60 & 1;
                v85 = v62;
                if ((*(v47 + 28) & 1) == 0)
                {
                  NavigationAuthority.enqueueRequest(_:)(&v72);
                  v47 = v71;
                }

                outlined destroy of NavigationRequest(&v72);
                (*(v5 + 8))(v7, v4);
                outlined destroy of ObservationTracking?(v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0]);
                LOBYTE(v42) = v66;
              }

              else
              {
                (*(v5 + 8))(v7, v4);
                outlined destroy of ObservationTracking?(v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0]);
                v47 = v71;
              }

              if ((v42 & 1) == 0)
              {
                goto LABEL_49;
              }

              goto LABEL_46;
            }

            v25 = 1;
            goto LABEL_18;
          }
        }
      }
    }
  }
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t static UITraitBridgedEnvironmentResolver.write<A>(for:to:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    v7 = result;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();

    return static UITraitBridgedEnvironmentResolver.write<A, B>(bridgedKey:to:value:)(a1, a2, a3, a1, AssociatedTypeWitness, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized implicit closure #1 in _ViewOutputs.writePlatformItemList(inputs:value:)()
{
  v0 = type metadata accessor for PlatformItemList.Item();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  v9 = 1uLL;
  v10 = 0;
  v11 = 0;
  v12 = 0xC000000000000000;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  PlatformItemList.Item.init(systemItem:)(&v9, v3);
  _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18CD63400;
  outlined init with take of PlatformItemList.Item(v3, v5 + v4);
  *&v9 = v5;
  v8[7] = 5;
  v6 = GraphHost.intern<A>(_:for:id:)();

  return v6;
}

{
  v0 = type metadata accessor for PlatformItemList.Item();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  memset(v9, 0, sizeof(v9));
  v10 = 0xC000000000000000;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  PlatformItemList.Item.init(systemItem:)(v9, v3);
  _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18CD63400;
  outlined init with take of PlatformItemList.Item(v3, v5 + v4);
  *&v9[0] = v5;
  v8[15] = 5;
  v6 = GraphHost.intern<A>(_:for:id:)();

  return v6;
}

id outlined copy of PlatformItemList.Item.SystemItem(id result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  if (a5 >> 62 == 2)
  {
    outlined copy of AnyShareConfiguration.Storage(result, a2, a3, a4, a5);
    outlined copy of Text?(a6, a7, a8, a9);

    return outlined copy of Text?(a10, a11, a12, a13);
  }

  else if (a5 >> 62 == 1)
  {

    return result;
  }

  return result;
}

uint64_t protocol witness for ViewGraphFeature.uninstantiate(graph:) in conformance AccessibilityViewGraph()
{
  v0[1] = 0;
  *(v0 + 28) = 0;

  *v0 = 0;
  return result;
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type AttributeInvalidatingSubscriber<ObservableObjectPublisher> and conformance AttributeInvalidatingSubscriber<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AttributeInvalidatingSubscriber<ObservableObjectPublisher>(255, &lazy cache variable for type metadata for AttributeInvalidatingSubscriber<ObservableObjectPublisher>, MEMORY[0x1E695BFE8], MEMORY[0x1E695BFE0], MEMORY[0x1E6980A48]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Divider, OpacityRendererEffect>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type _UnaryViewAdaptor<BorderedButton_CarCatalyst> and conformance _UnaryViewAdaptor<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>();
    lazy protocol witness table accessor for type ToolbarButtonLabelModifier and conformance ToolbarButtonLabelModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarButtonLabelModifier and conformance ToolbarButtonLabelModifier()
{
  result = lazy protocol witness table cache variable for type ToolbarButtonLabelModifier and conformance ToolbarButtonLabelModifier;
  if (!lazy protocol witness table cache variable for type ToolbarButtonLabelModifier and conformance ToolbarButtonLabelModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarButtonLabelModifier and conformance ToolbarButtonLabelModifier);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for Gradient.CubicDefinition(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTag for SearchScopeActivation.Role(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTag for HandGestureShortcutInteractiveControl.BorderShape(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>, ModifiedContent<Divider, _PaddingLayout>?)>>()
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>, ModifiedContent<Divider, _PaddingLayout>?)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>, ModifiedContent<Divider, _PaddingLayout>?)>(255);
    lazy protocol witness table accessor for type [ToolbarStorage.Entry] and conformance [A](&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>, ModifiedContent<Divider, _PaddingLayout>?)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>, ModifiedContent<Divider, _PaddingLayout>?)>);
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>, ModifiedContent<Divider, _PaddingLayout>?)>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_3(255, &lazy cache variable for type metadata for AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>, &type metadata for EnabledLargeContentView, &protocol witness table for EnabledLargeContentView, type metadata accessor for AccessibilityLargeContentViewBehaviorModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>);
    }
  }
}

uint64_t outlined destroy of ToolbarStorage.GroupItem(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static BarItemModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  v17 = *(a2 + 32);
  v18 = v4;
  v6 = *(a2 + 48);
  v19 = *(a2 + 64);
  v7 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v7;
  v12 = v17;
  v13 = v6;
  v14 = *(a2 + 64);
  v20 = *(a2 + 80);
  v15 = *(a2 + 80);
  v10 = v16[0];
  v11 = v5;
  outlined init with copy of _ViewInputs(v16, &v25);
  PreferenceKeys.remove(_:)();
  LODWORD(v25) = AGGraphCreateOffsetAttribute2();
  BYTE4(v25) = 0;
  lazy protocol witness table accessor for type BarEdgeInput and conformance BarEdgeInput();
  PropertyList.subscript.setter();
  v21[2] = v12;
  v21[3] = v13;
  v21[4] = v14;
  v22 = v15;
  v21[0] = v10;
  v21[1] = v11;
  v27 = v12;
  v28 = v13;
  v29 = v14;
  v30 = v15;
  v25 = v10;
  v26 = v11;
  v8 = outlined init with copy of _ViewInputs(v21, v23);
  a3(v8, &v25);
  v23[2] = v27;
  v23[3] = v28;
  v23[4] = v29;
  v24 = v30;
  v23[0] = v25;
  v23[1] = v26;
  outlined destroy of _ViewInputs(v23);
  AGGraphCreateOffsetAttribute2();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();

  v27 = v12;
  v28 = v13;
  v29 = v14;
  v30 = v15;
  v25 = v10;
  v26 = v11;
  return outlined destroy of _ViewInputs(&v25);
}

uint64_t protocol witness for static CoreInteractionRepresentable.appendFeature(to:) in conformance CoreInteractionRepresentableAdaptor<A>()
{
  return static CoreInteractionRepresentableAdaptor.appendFeature(to:)();
}

{
  return static CoreInteractionRepresentableAdaptor.appendFeature(to:)();
}

uint64_t static BarEdgeReader._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *(a2 + 24);
  v6 = *(a2 + 56);
  v22 = *(a2 + 40);
  v23[0] = v6;
  *(v23 + 12) = *(a2 + 68);
  v20 = *(a2 + 8);
  v21 = v5;
  lazy protocol witness table accessor for type BarEdgeInput and conformance BarEdgeInput();
  PropertyList.subscript.getter();
  if (BYTE4(v15) == 1)
  {
    LOBYTE(v15) = 2;
    type metadata accessor for ToolbarStorage?(0, &lazy cache variable for type metadata for HorizontalEdge?, MEMORY[0x1E697E390], MEMORY[0x1E69E6720]);
    v7 = Attribute.init<A>(body:value:flags:update:)();
  }

  else
  {
    v7 = v15;
  }

  type metadata accessor for BarEdgeReader();
  type metadata accessor for _GraphValue();
  v8 = _GraphValue.value.getter();
  v15 = __PAIR64__(v7, v8);
  LOBYTE(v16) = 0;
  MEMORY[0x1EEE9AC00](v8);
  v12[2] = a3;
  View = type metadata accessor for BarEdgeReader.MakeView();
  WitnessTable = swift_getWitnessTable();
  v9 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v15, closure #1 in Attribute.init<A>(_:)partial apply, v12, View, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  _GraphValue.init(_:)();
  v15 = v4;
  v17 = v21;
  v18 = v22;
  v19[0] = v23[0];
  *(v19 + 12) = *(v23 + 12);
  v16 = v20;
  return static View.makeDebuggableView(view:inputs:)();
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<PlatformItemTintModifier>, PlatformItemListTransformModifier<LabelPlatformItemListFlags>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<PlatformItemTintModifier>, PlatformItemListTransformModifier<LabelPlatformItemListFlags>>)
  {
    type metadata accessor for _ViewModifier_Content<PlatformItemTintModifier>();
    type metadata accessor for PlatformItemListTransformModifier<LabelPlatformItemListFlags>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<PlatformItemTintModifier>, PlatformItemListTransformModifier<LabelPlatformItemListFlags>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PlatformItemTintModifier and conformance PlatformItemTintModifier()
{
  result = lazy protocol witness table cache variable for type PlatformItemTintModifier and conformance PlatformItemTintModifier;
  if (!lazy protocol witness table cache variable for type PlatformItemTintModifier and conformance PlatformItemTintModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemTintModifier and conformance PlatformItemTintModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<PlatformItemTintModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<PlatformItemTintModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<PlatformItemTintModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<PlatformItemTintModifier>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<PlatformItemTintModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ToolbarButtonHoverShape(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type ToolbarButtonHoverShape and conformance ToolbarButtonHoverShape();
  result = lazy protocol witness table accessor for type ToolbarButtonHoverShape and conformance ToolbarButtonHoverShape();
  *(a1 + 16) = result;
  return result;
}

void type metadata accessor for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_2(255, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>, MEMORY[0x1E697F528], MEMORY[0x1E697F518], MEMORY[0x1E697FDB8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>();
    lazy protocol witness table accessor for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t UIInteractionRepresentableFeature.modifyViewOutputs<A>(inputs:outputs:proxy:)(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *a3;
  type metadata accessor for CoreInteractionRepresentableFeatureProxy();
  *&v11[0] = v5;
  DWORD2(v11[0]) = v6;
  result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if (result)
  {
    v9 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v9;
    v11[2] = *(a1 + 32);
    v12 = v5;
    v13 = v6;
    v14 = *(a1 + 60);
    v15 = *(a1 + 76);
    v10[0] = *a2;
    v10[1] = a2[1];
    type metadata accessor for AccessibilityBridgedInteraction();

    swift_getWitnessTable();
    static AccessibilityViewModifier.makeResolvableTransform<A>(context:inputs:outputs:includeGeometry:for:)(v7, v11, v10, 0);

    return PreferencesOutputs.subscript.setter();
  }

  return result;
}

void type metadata accessor for CustomHoverEffectModifier<HoverEffect>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t getEnumTag for SystemScrollLayoutState.ContentOffsetMode(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return *a1 + 2;
  }
}

uint64_t AnyHoverEffectChild.updateValue()(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AGGraphGetValue();
  type metadata accessor for _AnyHoverEffectBox();

  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = (*(v3 + 16))(v5, v6 + *(*v6 + 128), v2);
    MEMORY[0x1EEE9AC00](v7);
    v10[-2] = a1;
    v10[-1] = swift_getWitnessTable();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v5, partial apply for closure #1 in StatefulRule.value.setter, &v10[-4], v2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v8);

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
  }
}

uint64_t protocol witness for static PlatformImageRepresentable.shouldMakeRepresentation(inputs:) in conformance PlatformItemListImageRepresentable(uint64_t a1)
{
  v3 = *(a1 + 48);
  v1 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  result = 0;
  if (v1)
  {
    lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
    PropertyList.subscript.getter();
    return (v3 >> 1) & 1;
  }

  return result;
}

uint64_t implicit closure #1 in static PlatformItemListTextRepresentable.makeRepresentation(inputs:context:outputs:)(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  a2();
  a3();
  return Attribute.init<A>(body:value:flags:update:)();
}

unint64_t lazy protocol witness table accessor for type PlatformItemListImageRepresentable.PlatformRepresentation and conformance PlatformItemListImageRepresentable.PlatformRepresentation()
{
  result = lazy protocol witness table cache variable for type PlatformItemListImageRepresentable.PlatformRepresentation and conformance PlatformItemListImageRepresentable.PlatformRepresentation;
  if (!lazy protocol witness table cache variable for type PlatformItemListImageRepresentable.PlatformRepresentation and conformance PlatformItemListImageRepresentable.PlatformRepresentation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListImageRepresentable.PlatformRepresentation and conformance PlatformItemListImageRepresentable.PlatformRepresentation);
  }

  return result;
}

uint64_t protocol witness for static PlatformNamedImageRepresentable.shouldMakeRepresentation(inputs:) in conformance PlatformItemListNamedImageRepresentable(uint64_t a1)
{
  v3 = *(a1 + 48);
  v1 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  result = 0;
  if (v1)
  {
    lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
    PropertyList.subscript.getter();
    return (v3 >> 5) & 1;
  }

  return result;
}

uint64_t implicit closure #1 in static PlatformItemListNamedImageRepresentable.makeRepresentation(inputs:context:outputs:)(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  a2();
  type metadata accessor for (_:)();
  a3();
  return Attribute.init<A>(body:value:flags:update:)();
}

unint64_t lazy protocol witness table accessor for type PlatformItemListNamedImageRepresentable.NamedResolvedRule and conformance PlatformItemListNamedImageRepresentable.NamedResolvedRule()
{
  result = lazy protocol witness table cache variable for type PlatformItemListNamedImageRepresentable.NamedResolvedRule and conformance PlatformItemListNamedImageRepresentable.NamedResolvedRule;
  if (!lazy protocol witness table cache variable for type PlatformItemListNamedImageRepresentable.NamedResolvedRule and conformance PlatformItemListNamedImageRepresentable.NamedResolvedRule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListNamedImageRepresentable.NamedResolvedRule and conformance PlatformItemListNamedImageRepresentable.NamedResolvedRule);
  }

  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance AllowsToolbarItemBridgingModifier@<X0>(void (**a1)()@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 4);
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v4;
  *a1 = partial apply for closure #1 in AllowsToolbarItemBridgingModifier.body(content:);
  a1[1] = result;
  return result;
}

void protocol witness for static PreferenceKey.defaultValue.getter in conformance ToolbarItemBridgingPreferenceKey(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 9) = 2;
  *(a1 + 11) = 0;
}

void partial apply for closure #1 in AllowsToolbarItemBridgingModifier.body(content:)()
{
  *&v1.containsLabel = (*(v0 + 24) << 8) | (*(v0 + 16) >> 1) & 1;
  v1.count = *(v0 + 16) & 1;
  ToolbarItemBridgingConfiguration.merge(_:)(v1);
}

uint64_t closure #1 in BarItemModifier.Transform.value.getter(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 + 64;
  v3 = 1 << *(*a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = specialized Dictionary.subscript.modify(v16, *(*(v1 + 48) + ((v9 << 8) | (4 * v10))));
    if (*(v12 + 16))
    {
      type metadata accessor for WeakBox<UIBarButtonItem>(0);
      Value = AGGraphGetValue();
      _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(Value, v15, type metadata accessor for WeakBox<UIBarButtonItem>);
      Strong = swift_unknownObjectWeakLoadStrong();
      outlined destroy of ToolbarStorage.GroupItem(v15, type metadata accessor for WeakBox<UIBarButtonItem>);
      swift_unknownObjectWeakAssign();
    }

    result = (v11)(v16, 0);
    v8 = v9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize()
{
  result = lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize;
  if (!lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ToolbarButtonLabelModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<ToolbarButtonLabelModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<ToolbarButtonLabelModifier> and conformance _ViewModifier_Content<A>)
  {
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA08BordereddE0VGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<ToolbarButtonLabelModifier>, lazy protocol witness table accessor for type ToolbarButtonLabelModifier and conformance ToolbarButtonLabelModifier, &type metadata for ToolbarButtonLabelModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<ToolbarButtonLabelModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

void type metadata accessor for HashableCommandGroupPlacementWrapper?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t protocol witness for static PlatformSpacerRepresentable.shouldMakeRepresentation(inputs:) in conformance PlatformItemListSpacerRepresentable(uint64_t a1)
{
  v3 = *(a1 + 48);
  v1 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  result = 0;
  if (v1)
  {
    lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
    PropertyList.subscript.getter();
    return (v3 >> 3) & 1;
  }

  return result;
}

__n128 PlatformItemList.Item.init(systemItem:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1[4];
  v20 = a1[5];
  v21 = *(a1 + 12);
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  v18 = a1[3];
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  *(a2 + 40) = xmmword_18CD76350;
  *(a2 + 56) = 1;
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(v22);
  v3 = v22[9];
  *(a2 + 192) = v22[8];
  *(a2 + 208) = v3;
  *(a2 + 224) = v23[0];
  *(a2 + 235) = *(v23 + 11);
  v4 = v22[5];
  *(a2 + 128) = v22[4];
  *(a2 + 144) = v4;
  v5 = v22[7];
  *(a2 + 160) = v22[6];
  *(a2 + 176) = v5;
  v6 = v22[1];
  *(a2 + 64) = v22[0];
  *(a2 + 80) = v6;
  v7 = v22[3];
  *(a2 + 96) = v22[2];
  *(a2 + 112) = v7;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 336) = 0x3FFFFFFFCLL;
  *(a2 + 344) = 0u;
  *(a2 + 360) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 392) = 0u;
  *(a2 + 408) = 0;
  *(a2 + 416) = 1;
  *(a2 + 424) = 0u;
  *(a2 + 440) = 0u;
  *(a2 + 456) = 0u;
  *(a2 + 472) = 0;
  *(a2 + 480) = 0;
  *(a2 + 488) = 0u;
  *(a2 + 504) = 0;
  *(a2 + 512) = 0u;
  *(a2 + 528) = 4;
  *(a2 + 536) = 0u;
  *(a2 + 552) = 0u;
  *(a2 + 568) = 0u;
  *(a2 + 584) = 0u;
  *(a2 + 600) = 0u;
  *(a2 + 616) = 0u;
  *(a2 + 632) = 0u;
  *(a2 + 648) = 0u;
  *(a2 + 664) = 0u;
  *(a2 + 680) = 0u;
  *(a2 + 696) = 0u;
  *(a2 + 712) = 0u;
  *(a2 + 728) = 0u;
  *(a2 + 744) = 0u;
  *(a2 + 760) = 0u;
  *(a2 + 776) = 0u;
  *(a2 + 792) = 0u;
  *(a2 + 808) = 0u;
  *(a2 + 824) = 0u;
  *(a2 + 840) = 0u;
  *(a2 + 856) = 0;
  *(a2 + 864) = 1;
  *(a2 + 872) = 0u;
  *(a2 + 888) = 0u;
  *(a2 + 904) = 0u;
  *(a2 + 920) = 0u;
  *(a2 + 936) = 0u;
  *(a2 + 952) = 1283;
  *(a2 + 954) = 3;
  v8 = type metadata accessor for PlatformItemList.Item();
  v9 = v8[28];
  v10 = type metadata accessor for CommandOperation();
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  *(a2 + v8[29]) = 0;
  *(a2 + v8[30]) = 0;
  *(a2 + v8[31]) = 2;
  *(a2 + v8[32]) = 0;
  *(a2 + v8[33]) = 0;
  *(a2 + v8[34]) = 0;
  v11 = *(a2 + 384);
  v24[4] = *(a2 + 368);
  v24[5] = v11;
  v25 = *(a2 + 400);
  v12 = *(a2 + 320);
  v24[0] = *(a2 + 304);
  v24[1] = v12;
  v13 = *(a2 + 352);
  v24[2] = *(a2 + 336);
  v24[3] = v13;
  _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v24, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem);
  *(a2 + 368) = v19;
  *(a2 + 384) = v20;
  *(a2 + 400) = v21;
  *(a2 + 304) = v15;
  *(a2 + 320) = v16;
  result = v18;
  *(a2 + 336) = v17;
  *(a2 + 352) = v18;
  return result;
}

void *initializeWithCopy for PlatformItemList.Item.SystemItem(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  v15 = *(a2 + 88);
  v16 = *(a2 + 96);
  outlined copy of PlatformItemList.Item.SystemItem(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  a1[9] = v13;
  a1[10] = v14;
  a1[11] = v15;
  a1[12] = v16;
  return a1;
}

double storeEnumTagSinglePayload for PlatformItemList.Item.SystemItem(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 104) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 4 * -a2;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      return result;
    }

    *(a1 + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for SystemScrollLayoutState.ContentOffsetMode(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFFFLL | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2) | 0x8000000000000000;
  }

  return result;
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

void closure #2 in UIKitStatusBarBridge.updateStatusBar(isAnimated:shouldDefer:)(char a1, void (*a2)(void), uint64_t a3)
{
  if (a1)
  {
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a3;
    v8[4] = partial apply for closure #1 in update #1 () in UIKitStatusBarBridge.updateStatusBar(isAnimated:shouldDefer:);
    v8[5] = v6;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed () -> ();
    v8[3] = &block_descriptor_24;
    v7 = _Block_copy(v8);

    [v5 animateWithDuration:v7 animations:0.3];
    _Block_release(v7);
  }

  else
  {
    a2();
  }
}

uint64_t sub_18BF6EEA0()
{

  return swift_deallocObject();
}

BOOL closure #1 in UIKitStatusBarBridge.updateStatusBar(isAnimated:shouldDefer:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    [Strong setNeedsStatusBarAppearanceUpdate];
  }

  return v1 == 0;
}

uint64_t SceneBridge.flushEnqueuedEvents(for:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC7SwiftUI11SceneBridge_enqueuedEvents;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (!*(v8 + 16))
  {
    return swift_endAccess();
  }

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v10 & 1) == 0)
  {
    return swift_endAccess();
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  result = swift_endAccess();
  v13 = *(v11 + 16);
  if (!v13)
  {
    return result;
  }

  swift_beginAccess();

  specialized Dictionary._Variant.removeValue(forKey:)(a1, a2);
  swift_endAccess();

  for (i = v11 + 32; ; i += 32)
  {
    outlined init with copy of Any(i, v44);
    if (static SceneBridge._devNullSceneBridge && static SceneBridge._devNullSceneBridge == v4)
    {
      break;
    }

    swift_beginAccess();
    v16 = *(v4 + 16);
    if (!*(v16 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(a3), (v18 & 1) == 0))
    {
      swift_endAccess();
      break;
    }

    v19 = *(*(v16 + 56) + 8 * v17);
    swift_endAccess();
    if (!*(v19 + 16))
    {
      break;
    }

    specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if ((v20 & 1) == 0)
    {

      break;
    }

    PassthroughSubject.send(_:)();

LABEL_35:
    __swift_destroy_boxed_opaque_existential_1(v44);
    if (!--v13)
    {
    }
  }

  v43 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  if (*(*(v4 + v7) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v21 & 1) != 0))
  {
    swift_endAccess();

    specialized Array.append<A>(contentsOf:)(v22);
    v23 = v43;
  }

  else
  {
    swift_endAccess();
    v23 = MEMORY[0x1E69E7CC0];
  }

  outlined init with copy of Any(v44, v42);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
  }

  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v23);
  }

  *(v23 + 2) = v25 + 1;
  outlined init with take of Any(v42, &v23[32 * v25 + 32]);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v4 + v7);
  *(v4 + v7) = 0x8000000000000000;
  v28 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  v30 = v27[2];
  v31 = (v29 & 1) == 0;
  v32 = __OFADD__(v30, v31);
  v33 = v30 + v31;
  if (!v32)
  {
    v34 = v29;
    if (v27[3] >= v33)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = v28;
        specialized _NativeDictionary.copy()();
        v28 = v37;
        v36 = v27;
        if (v34)
        {
          goto LABEL_29;
        }

        goto LABEL_32;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native);
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_41;
      }
    }

    v36 = v27;
    if (v34)
    {
LABEL_29:
      *(v36[7] + 8 * v28) = v23;

LABEL_34:
      *(v4 + v7) = v36;
      swift_endAccess();
      goto LABEL_35;
    }

LABEL_32:
    v36[(v28 >> 6) + 8] |= 1 << v28;
    v38 = (v36[6] + 16 * v28);
    *v38 = a1;
    v38[1] = a2;
    *(v36[7] + 8 * v28) = v23;
    v39 = v36[2];
    v32 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v32)
    {
      goto LABEL_40;
    }

    v36[2] = v40;
    goto LABEL_34;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void closure #5 in AppSceneDelegate.scene(_:willConnectTo:options:)(uint64_t a1)
{
  v2 = [objc_opt_self() sharedApplication];
  [v2 _saveRestorationUserActivityStateForScene_];
}

uint64_t closure #2 in AppSceneDelegate.scene(_:willConnectTo:options:)(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48);
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = *(result + 56);

    v6 = v2 + 40;
    do
    {
      specialized _do #1 <A>(_:) in handleConnectionOptionsCallbacks #1 (_:) in AppSceneDelegate.scene(_:willConnectTo:options:)(*(v6 - 8), a2, v5, *(v6 - 8));
      v6 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t static SearchToolbarItem._makeToolbar(content:inputs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 64);
  swift_beginAccess();
  LODWORD(v6) = *(v3 + 16);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type SearchToolbarItem.ChildEnvironment and conformance SearchToolbarItem.ChildEnvironment();

  Attribute.init<A>(body:value:flags:update:)();
  PreferencesOutputs.init()();
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v4 + 1;
  lazy protocol witness table accessor for type IsGlobalSearchAllowedInput and conformance IsGlobalSearchAllowedInput();
  PropertyList.subscript.getter();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type SearchBoundPropertyUpdater and conformance SearchBoundPropertyUpdater();
  Attribute.init<A>(body:value:flags:update:)();
  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

unint64_t lazy protocol witness table accessor for type SearchToolbarItem.ChildEnvironment and conformance SearchToolbarItem.ChildEnvironment()
{
  result = lazy protocol witness table cache variable for type SearchToolbarItem.ChildEnvironment and conformance SearchToolbarItem.ChildEnvironment;
  if (!lazy protocol witness table cache variable for type SearchToolbarItem.ChildEnvironment and conformance SearchToolbarItem.ChildEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolbarItem.ChildEnvironment and conformance SearchToolbarItem.ChildEnvironment);
  }

  return result;
}

uint64_t implicit closure #1 in static SearchToolbarItem._makeToolbar(content:inputs:)()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type SearchToolbarItem.SearchTransform and conformance SearchToolbarItem.SearchTransform();
  return Attribute.init<A>(body:value:flags:update:)();
}

unint64_t lazy protocol witness table accessor for type SearchToolbarItem.SearchTransform and conformance SearchToolbarItem.SearchTransform()
{
  result = lazy protocol witness table cache variable for type SearchToolbarItem.SearchTransform and conformance SearchToolbarItem.SearchTransform;
  if (!lazy protocol witness table cache variable for type SearchToolbarItem.SearchTransform and conformance SearchToolbarItem.SearchTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolbarItem.SearchTransform and conformance SearchToolbarItem.SearchTransform);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolbarItem.SearchTransform and conformance SearchToolbarItem.SearchTransform;
  if (!lazy protocol witness table cache variable for type SearchToolbarItem.SearchTransform and conformance SearchToolbarItem.SearchTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolbarItem.SearchTransform and conformance SearchToolbarItem.SearchTransform);
  }

  return result;
}

void *assignWithCopy for ResolvedSearchFieldStyle(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v5 = *(v4 + 32);
  v6 = a1 + v5;
  v7 = a2 + v5;
  *v6 = *(a2 + v5);
  v6[1] = *(a2 + v5 + 1);
  v6[2] = *(a2 + v5 + 2);
  v6[3] = *(a2 + v5 + 3);
  LODWORD(v5) = *(a2 + v5 + 4);
  v6[8] = v7[8];
  *(v6 + 1) = v5;
  v8 = type metadata accessor for SearchFieldState(0);
  v9 = v8[9];
  v10 = type metadata accessor for AttributedString();
  (*(*(v10 - 8) + 24))(&v6[v9], &v7[v9], v10);
  v6[v8[10]] = v7[v8[10]];
  v11 = v8[11];
  v12 = &v6[v11];
  v13 = &v7[v11];
  *v12 = *v13;
  v12[4] = v13[4];
  v14 = type metadata accessor for SearchFieldConfiguration(0);
  v15 = v14[6];
  v16 = a1 + v15;
  v17 = a2 + v15;
  v18 = *(a1 + v15 + 8);
  v19 = *(a2 + v15 + 8);
  if (v18 == 255)
  {
    if (v19 == 255)
    {
      v27 = *v17;
      *(v16 + 8) = v17[8];
      *v16 = v27;
    }

    else
    {
      v24 = *v17;
      v25 = v19 & 1;
      outlined copy of PlatformItemCollection.Storage(v24, v19 & 1);
      *v16 = v24;
      *(v16 + 8) = v25;
    }
  }

  else if (v19 == 255)
  {
    outlined destroy of PlatformItemCollection(v16);
    v26 = v17[8];
    *v16 = *v17;
    *(v16 + 8) = v26;
  }

  else
  {
    v20 = *v17;
    v21 = v19 & 1;
    outlined copy of PlatformItemCollection.Storage(v20, v19 & 1);
    v22 = *v16;
    v23 = *(v16 + 8);
    *v16 = v20;
    *(v16 + 8) = v21;
    outlined consume of PlatformItemCollection.Storage(v22, v23);
  }

  *(a1 + v14[7]) = *(a2 + v14[7]);
  v28 = v14[8];
  v29 = a1 + v28;
  v30 = a2 + v28;
  v31 = *(a2 + v28);
  v32 = *(v30 + 1);
  v33 = v30[16];
  outlined copy of Text.Storage(v31, v32, v33);
  v34 = *v29;
  v35 = *(v29 + 1);
  v36 = v29[16];
  *v29 = v31;
  *(v29 + 1) = v32;
  v29[16] = v33;
  outlined consume of Text.Storage(v34, v35, v36);
  *(v29 + 3) = *(v30 + 3);

  return a1;
}

uint64_t assignWithCopy for TextField(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 24;
  v8 = *(v6 + 80);
  v9 = (v8 + 33 + a1) & ~v8;
  v10 = (v8 + 33 + a2) & ~v8;
  (*(v6 + 24))(v9, v10);
  v11 = *(v7 + 40);
  v12 = v11 + v9;
  v13 = v11 + v10;
  *v12 = *v13;
  v14 = v12 & 0xFFFFFFFFFFFFFFF8;
  v15 = v13 & 0xFFFFFFFFFFFFFFF8;
  v16 = *((v13 & 0xFFFFFFFFFFFFFFF8) + 32);
  if (*((v12 & 0xFFFFFFFFFFFFFFF8) + 32) < 0xFFFFFFFFuLL)
  {
    if (v16 >= 0xFFFFFFFF)
    {
      v23 = *(v15 + 8);
      v24 = *(v15 + 16);
      v25 = *(v15 + 24);
      outlined copy of Text.Storage(v23, v24, v25);
      *(v14 + 8) = v23;
      *(v14 + 16) = v24;
      *(v14 + 24) = v25;
      *(v14 + 32) = *(v15 + 32);

      goto LABEL_8;
    }
  }

  else
  {
    if (v16 >= 0xFFFFFFFF)
    {
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      v19 = *(v15 + 24);
      outlined copy of Text.Storage(v17, v18, v19);
      v20 = *(v14 + 8);
      v21 = *(v14 + 16);
      v22 = *(v14 + 24);
      *(v14 + 8) = v17;
      *(v14 + 16) = v18;
      *(v14 + 24) = v19;
      outlined consume of Text.Storage(v20, v21, v22);
      *(v14 + 32) = *(v15 + 32);

      goto LABEL_8;
    }

    outlined consume of Text.Storage(*(v14 + 8), *(v14 + 16), *(v14 + 24));
  }

  v26 = *(v15 + 8);
  *(v14 + 24) = *(v15 + 24);
  *(v14 + 8) = v26;
LABEL_8:
  v27 = (v14 + 47) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  if (v27 == v28)
  {
    goto LABEL_39;
  }

  v29 = *(v27 + 108);
  if (v29 >= 2)
  {
    v29 = *v27 + 2;
  }

  if (v29 == 1)
  {

    if (*(v27 + 32))
    {
    }

    if (!*(v27 + 64))
    {
      goto LABEL_22;
    }
  }

  else
  {

    if (*(v27 + 16))
    {
    }

    if (!*(v27 + 48))
    {
      goto LABEL_21;
    }
  }

LABEL_21:

LABEL_22:
  v30 = *(v28 + 108);
  if (v30 >= 2)
  {
    v30 = *v28 + 2;
  }

  if (v30 == 1)
  {
    *v27 = *v28;
    *(v27 + 8) = *(v28 + 8);
    *(v27 + 16) = *(v28 + 16);
    *(v27 + 24) = *(v28 + 24);
    v31 = *(v28 + 32);

    if (v31)
    {
      v32 = *(v28 + 40);
      *(v27 + 32) = v31;
      *(v27 + 40) = v32;
      v33 = *(v28 + 56);
      *(v27 + 48) = *(v28 + 48);
      *(v27 + 56) = v33;
    }

    else
    {
      v37 = *(v28 + 48);
      *(v27 + 32) = *(v28 + 32);
      *(v27 + 48) = v37;
    }

    v38 = *(v28 + 64);
    if (v38)
    {
      v39 = *(v28 + 72);
      *(v27 + 64) = v38;
      *(v27 + 72) = v39;
      v40 = *(v28 + 88);
      *(v27 + 80) = *(v28 + 80);
      *(v27 + 88) = v40;
    }

    else
    {
      v45 = *(v28 + 80);
      *(v27 + 64) = *(v28 + 64);
      *(v27 + 80) = v45;
    }

    *(v27 + 96) = *(v28 + 96);
    v46 = *(v28 + 100);
    *(v27 + 104) = *(v28 + 104);
    *(v27 + 100) = v46;
    *(v27 + 105) = *(v28 + 105);
    *(v27 + 106) = *(v28 + 106);
    *(v27 + 107) = *(v28 + 107);
    *(v27 + 108) = 1;
  }

  else
  {
    *v27 = *v28;
    *(v27 + 8) = *(v28 + 8);
    v34 = *(v28 + 16);

    if (v34)
    {
      v35 = *(v28 + 24);
      *(v27 + 16) = v34;
      *(v27 + 24) = v35;
      v36 = *(v28 + 40);
      *(v27 + 32) = *(v28 + 32);
      *(v27 + 40) = v36;
    }

    else
    {
      v41 = *(v28 + 32);
      *(v27 + 16) = *(v28 + 16);
      *(v27 + 32) = v41;
    }

    v42 = *(v28 + 48);
    if (v42)
    {
      v43 = *(v28 + 56);
      *(v27 + 48) = v42;
      *(v27 + 56) = v43;
      v44 = *(v28 + 72);
      *(v27 + 64) = *(v28 + 64);
      *(v27 + 72) = v44;
    }

    else
    {
      v47 = *(v28 + 64);
      *(v27 + 48) = *(v28 + 48);
      *(v27 + 64) = v47;
    }

    *(v27 + 80) = *(v28 + 80);
    v48 = *(v28 + 84);
    *(v27 + 88) = *(v28 + 88);
    *(v27 + 84) = v48;
    *(v27 + 89) = *(v28 + 89);
    *(v27 + 90) = *(v28 + 90);
    *(v27 + 91) = *(v28 + 91);
    *(v27 + 96) = *(v28 + 96);
    *(v27 + 108) = 0;
  }

LABEL_39:
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
  v50 = *(v49 - 8);
  v51 = *(v50 + 80) & 0xF8;
  v52 = v51 | 7;
  v53 = ~(v51 | 7);
  v54 = ((v27 + (v51 | 7) + 109) & v53);
  v55 = ((v28 + (v51 | 7) + 109) & v53);
  if (*(v50 + 64) <= 0x10uLL)
  {
    v56 = 16;
  }

  else
  {
    v56 = *(v50 + 64);
  }

  v57 = (v51 + 23) & ~v52;
  v58 = ((v54 + 15) & 0xFFFFFFFFFFFFFFF8);
  v59 = ((v55 + 15) & 0xFFFFFFFFFFFFFFF8);
  v60 = *v59;
  if (*v58 >= 0xFFFFFFFFuLL)
  {
    v80 = *(v49 - 8);
    __n = v56 + 2;
    v78 = v49;
    if (v60 >= 0xFFFFFFFF)
    {
      *v54 = *v55;

      *v58 = *v59;

      v61 = ((v58 + v52 + 8) & v53);
      v62 = ((v59 + v52 + 8) & v53);
      v63 = *(v61 + v56);
      v64 = *(v62 + v56);
      if (v63 <= 1)
      {
        if (v64 <= 1)
        {
          v65 = v56 + 1;
          if (v61 == v62)
          {
LABEL_89:
            *(v61 + v65) = *(v62 + v65);
            return a1;
          }

          if (v63 == 1)
          {
            (*(v80 + 8))((v58 + v52 + 8) & v53, v78);
            v64 = *(v62 + v56);
            v66 = v64 - 2;
            if (v64 < 2)
            {
              v65 = v56 + 1;
            }

            else
            {
              if (v56 <= 3)
              {
                v67 = v56;
              }

              else
              {
                v67 = 4;
              }

              if (v67 > 1)
              {
                if (v67 == 2)
                {
                  v68 = *v62;
                }

                else if (v67 == 3)
                {
                  v68 = *((v59 + v52 + 8) & v53) | (*(((v59 + v52 + 8) & v53) + 2) << 16);
                }

                else
                {
                  v68 = *v62;
                }

                v65 = v56 + 1;
LABEL_83:
                v76 = (v68 | (v66 << (8 * v56))) + 2;
                v64 = v68 + 2;
                if (v56 < 4)
                {
                  v64 = v76;
                }

                goto LABEL_85;
              }

              v65 = v56 + 1;
              if (v67)
              {
                v68 = *v62;
                goto LABEL_83;
              }
            }
          }

LABEL_85:
          if (v64 == 1)
          {
            (*(v80 + 16))((v58 + v52 + 8) & v53, v62, v78);
            v65 = v56 + 1;
            v77 = 1;
          }

          else
          {
            v77 = 0;
            *v61 = *v62;
          }

          *(v61 + v56) = v77;
          goto LABEL_89;
        }

        if (v63 == 1)
        {
          (*(v80 + 8))((v58 + v52 + 8) & v53, v78);
        }

        goto LABEL_72;
      }

      if (v64 <= 1)
      {
        if (v64 == 1)
        {
          (*(v80 + 16))((v58 + v52 + 8) & v53, (v59 + v52 + 8) & v53, v78);
          v75 = 1;
        }

        else
        {
          v75 = 0;
          *v61 = *v62;
        }

        *(v61 + v56) = v75;
        *(v61 + v56 + 1) = *(v62 + v56 + 1);
        return a1;
      }

LABEL_72:
      v71 = v61;
      v72 = v62;
      v70 = __n;
      goto LABEL_73;
    }

    if (*(((v58 + v52 + 8) & v53) + v56) == 1)
    {
      (*(v80 + 8))();
    }

    v70 = v57 + __n;
LABEL_65:
    v71 = v54;
    v72 = v55;
LABEL_73:
    memcpy(v71, v72, v70);
    return a1;
  }

  if (v60 < 0xFFFFFFFF)
  {
    v70 = v57 + v56 + 2;
    goto LABEL_65;
  }

  v81 = *(v49 - 8);
  __n = v56 + 2;
  v79 = v49;
  *v54 = *v55;
  *v58 = *v59;
  v61 = ((v58 + v52 + 8) & v53);
  v62 = ((v59 + v52 + 8) & v53);
  v69 = *(v62 + v56);

  if (v69 > 1)
  {
    goto LABEL_72;
  }

  if (v69 == 1)
  {
    (*(v81 + 16))(v61, v62, v79);
    v74 = 1;
  }

  else
  {
    v74 = 0;
    *v61 = *v62;
  }

  *(v61 + v56) = v74;
  *(v61 + v56 + 1) = *(v62 + v56 + 1);
  return a1;
}

uint64_t assignWithTake for ToolbarSearchFieldStyle(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    outlined destroy of ToolbarItemPlacement.Role(result);
    result = v3;
    v4 = *(a2 + 16);
    *v3 = *a2;
    v3[1] = v4;
    *(v3 + 25) = *(a2 + 25);
  }

  *(result + 41) = *(a2 + 41);
  return result;
}

uint64_t SearchFieldStyleModifier.styleBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  (*(v3 + 24))(a1, v4, v3, v10);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  v14 = *(v6 + 8);
  v14(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v12, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v14)(v12, AssociatedTypeWitness);
}

uint64_t outlined init with copy of SearchFieldConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI24SearchFieldConfigurationVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI24SearchFieldConfigurationVWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

int *protocol witness for SearchFieldStyle.makeBody(configuration:) in conformance ToolbarSearchFieldStyle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of SearchFieldConfiguration(a1, a2, type metadata accessor for SearchFieldConfiguration);
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = swift_getKeyPath();
  result = type metadata accessor for ToolbarSearchFieldStyle.Implementation();
  v7 = a2 + result[5];
  *v7 = KeyPath;
  *(v7 + 8) = 0;
  v8 = a2 + result[6];
  *v8 = v4;
  *(v8 + 8) = 0;
  *(a2 + result[7]) = 0;
  v9 = a2 + result[8];
  *v9 = v5;
  *(v9 + 8) = 0;
  *(a2 + result[9]) = 0;
  return result;
}

uint64_t sub_18BF70704@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.horizontalSizeClass.getter();
  *a1 = v3;
  return result;
}

void *initializeWithCopy for ToolbarSearchFieldStyle.Implementation(void *a1, void *a2, int *a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
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
  v13 = *(*(v12 - 8) + 16);

  v13(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v14 = v10[11];
  v15 = &v8[v14];
  v16 = &v9[v14];
  v15[4] = v16[4];
  *v15 = *v16;
  v17 = type metadata accessor for SearchFieldConfiguration(0);
  v18 = v17[6];
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = v20[8];
  if (v21 == 255)
  {
    *v19 = *v20;
    v19[8] = v20[8];
  }

  else
  {
    v22 = *v20;
    v23 = v21 & 1;
    outlined copy of PlatformItemCollection.Storage(*v20, v21 & 1);
    *v19 = v22;
    v19[8] = v23;
  }

  *(a1 + v17[7]) = *(a2 + v17[7]);
  v24 = v17[8];
  v25 = a1 + v24;
  v26 = a2 + v24;
  v27 = *(a2 + v24);
  v28 = *(a2 + v24 + 8);
  v29 = *(a2 + v24 + 16);
  outlined copy of Text.Storage(v27, v28, v29);
  *v25 = v27;
  *(v25 + 1) = v28;
  v25[16] = v29;
  *(v25 + 3) = *(v26 + 3);
  v30 = a3[5];
  v31 = a1 + v30;
  v32 = a2 + v30;
  v33 = *v32;
  LOBYTE(v28) = v32[8];

  outlined copy of Environment<Selector?>.Content(v33, v28);
  *v31 = v33;
  v31[8] = v28;
  v34 = a3[6];
  v35 = a1 + v34;
  v36 = a2 + v34;
  v37 = *v36;
  LOBYTE(v28) = v36[8];
  outlined copy of Environment<Selector?>.Content(*v36, v28);
  *v35 = v37;
  v35[8] = v28;
  v38 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v39 = a1 + v38;
  v40 = *(a2 + v38);
  LOBYTE(v28) = *(a2 + v38 + 8);
  outlined copy of Environment<Selector?>.Content(v40, v28);
  *v39 = v40;
  v39[8] = v28;
  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t destroy for ToolbarSearchFieldStyle.Implementation(uint64_t a1, int *a2)
{

  type metadata accessor for Binding<SearchFieldState>(0);
  v5 = a1 + *(v4 + 32);
  v6 = *(type metadata accessor for SearchFieldState(0) + 36);
  v7 = type metadata accessor for AttributedString();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = type metadata accessor for SearchFieldConfiguration(0);
  v9 = a1 + *(v8 + 24);
  v10 = *(v9 + 8);
  if (v10 != 255)
  {
    outlined consume of PlatformItemCollection.Storage(*v9, v10 & 1);
  }

  outlined consume of Text.Storage(*(a1 + *(v8 + 32)), *(a1 + *(v8 + 32) + 8), *(a1 + *(v8 + 32) + 16));

  outlined consume of Environment<Selector?>.Content(*(a1 + a2[5]), *(a1 + a2[5] + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + a2[6]), *(a1 + a2[6] + 8));
  v11 = a1 + a2[8];
  v12 = *v11;
  v13 = *(v11 + 8);

  return outlined consume of Environment<Selector?>.Content(v12, v13);
}

void ToolbarSearchFieldStyle.Implementation.body.getter(BOOL *a1@<X8>)
{
  v70 = a1;
  type metadata accessor for ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>();
  v72 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v73 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v65 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v64 - v7;
  v8 = type metadata accessor for ToolbarSearchFieldStyle.Implementation();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v64 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v64 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v64 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v64 - v20;
  outlined init with copy of SearchFieldConfiguration(v1, &v64 - v20, type metadata accessor for ToolbarSearchFieldStyle.Implementation);
  outlined init with copy of SearchFieldConfiguration(v21, v18, type metadata accessor for ToolbarSearchFieldStyle.Implementation);
  v22 = *(v9 + 80);
  v23 = (v22 + 16) & ~v22;
  v66 = v23 + v10;
  v67 = v23;
  v24 = swift_allocObject();
  outlined init with take of ToolbarSearchFieldStyle.Implementation(v21, v24 + v23, type metadata accessor for ToolbarSearchFieldStyle.Implementation);
  v74 = v8;
  LOBYTE(v21) = *(v75 + *(v8 + 28));
  outlined init with copy of SearchFieldConfiguration(v75, v15, type metadata accessor for ToolbarSearchFieldStyle.Implementation);
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for closure #1 in ToolbarSearchFieldStyle.Implementation.body.getter;
  *(v25 + 24) = v24;
  v26 = v68;
  outlined init with take of ToolbarSearchFieldStyle.Implementation(v15, v25 + ((v22 + 32) & ~v22), type metadata accessor for ToolbarSearchFieldStyle.Implementation);
  v27 = (v21 & 1) == 0;
  v28 = v70;
  *v70 = v27;
  *(v28 + 1) = partial apply for specialized closure #1 in closure #1 in ToolbarSearchFieldStyle.Implementation.customScopeBarReader<A>(_:);
  *(v28 + 2) = v25;
  type metadata accessor for StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryVie( 0,  &lazy cache variable for type metadata for StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedCo,  type metadata accessor for ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>,  type metadata accessor for StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>);
  v30 = &v28[*(v29 + 44)];
  v31 = v69;
  outlined init with copy of SearchFieldConfiguration(v18, v69, type metadata accessor for ToolbarSearchFieldStyle.Implementation);
  outlined init with copy of SearchFieldConfiguration(v31, v26, type metadata accessor for ToolbarSearchFieldStyle.Implementation);
  v32 = (v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v34 = v71;
  outlined init with take of ToolbarSearchFieldStyle.Implementation(v31, v33 + v67, type metadata accessor for ToolbarSearchFieldStyle.Implementation);
  v35 = v33 + v32;
  *v35 = 0u;
  *(v35 + 16) = 0u;
  *(v35 + 32) = 0u;
  *(v35 + 48) = 0u;
  *(v35 + 64) = 0u;
  *(v35 + 80) = 0;
  v36 = v18;
  specialized closure #1 in ToolbarSearchFieldStyle.Implementation.customAccessoryReader<A>(_:)(v18, partial apply for closure #1 in closure #1 in ToolbarSearchFieldStyle.Implementation.body.getter, v33, v30);
  type metadata accessor for Binding<SearchFieldState>(0);
  v38 = v37;
  MEMORY[0x18D00ACC0]();
  LODWORD(v22) = *(v34 + 1);
  _s7SwiftUI16SearchFieldStateVWOhTm_0(v34, type metadata accessor for SearchFieldState);
  if (v22 == 1)
  {
    v39 = v65;
    MEMORY[0x18D00ACC0](v38);
    v40 = *v39;
    _s7SwiftUI16SearchFieldStateVWOhTm_0(v39, type metadata accessor for SearchFieldState);
    v41 = v40 & 1;
  }

  else
  {
    v41 = 2;
  }

  type metadata accessor for StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>(0);
  v43 = (v30 + *(v42 + 44));
  v44 = v72;
  v45 = v73;
  v46 = &v73[*(v72 + 48)];
  *v46 = 0;
  *(v46 + 1) = 0;
  *(v46 + 2) = 0;
  *v45 = 0;
  v45[1] = 0;
  v47 = *(v44 + 44);
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  v79 = 0u;
  memset(v78, 0, sizeof(v78));
  v77 = 0;
  memset(v76, 0, sizeof(v76));
  ToolbarSearchFieldStyle.Implementation.searchToolbarContent(customScopeBar:customAccessory:)(v78, v76, v45 + v47);
  type metadata accessor for ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>(0);
  outlined init with copy of SearchFieldConfiguration(v45, &v43[*(v48 + 36)], type metadata accessor for ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>);
  *v43 = v41;
  _s7SwiftUI16SearchFieldStateVWOhTm_0(v45, type metadata accessor for ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>);

  _s7SwiftUI16SearchFieldStateVWOhTm_0(v26, type metadata accessor for ToolbarSearchFieldStyle.Implementation);
  _s7SwiftUI16SearchFieldStateVWOhTm_0(v36, type metadata accessor for ToolbarSearchFieldStyle.Implementation);
  v49 = type metadata accessor for SearchFieldConfiguration(0);
  v50 = v75;
  v51 = *(v75 + *(v49 + 28));
  type metadata accessor for ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedC();
  v53 = &v28[*(v52 + 36)];
  *v53 = v51 ^ 1;
  *(v53 + 1) = &type metadata for LazySearchScopesKey;
  *(v53 + 2) = &type metadata for ActionPlatformItemListFlags;
  v53[24] = v51;
  MEMORY[0x18D00ACC0](v38);
  v54 = *(v34 + 1);
  _s7SwiftUI16SearchFieldStateVWOhTm_0(v34, type metadata accessor for SearchFieldState);
  LOBYTE(v78[0]) = (v54 & 1) == 0;
  *(&v78[0] + 1) = &type metadata for LazySearchSuggestionsKey;
  *&v78[1] = &type metadata for SearchSuggestionItemListFlags;
  closure #1 in ToolbarSearchFieldStyle.Implementation.searchSuggestionsWriter.getter(&v78[1] + 8);
  v55 = v78[0];
  v56 = *(&v78[1] + 1);
  v57 = v79;
  v58 = BYTE8(v79);
  type metadata accessor for ModifiedContent<ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAcces( 0,  &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.Se,  type metadata accessor for ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedC,  type metadata accessor for LazyPlatformItemWriter<LazySearchSuggestionsKey, ModifiedContent<ModifiedContent<SearchFieldConfiguration.Suggestions, SectionStyleModifier<MenuSectionStyle>>, StyleContextWriter<MenuStyleContext>>?, SearchSuggestionItemListFlags>);
  v60 = &v28[*(v59 + 36)];
  *v60 = v55;
  *(v60 + 8) = *(v78 + 8);
  *(v60 + 3) = v56;
  *(v60 + 4) = v57;
  v60[40] = v58;
  LOBYTE(v56) = specialized Environment.wrappedValue.getter(*(v50 + *(v74 + 24)), *(v50 + *(v74 + 24) + 8)) == 4;
  v61 = swift_allocObject();
  *(v61 + 16) = v56;
  *(v61 + 17) = 1;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<HasCustomScopeBarPredicate, ViewInputsBinding<EnvironmentValues.SearchCustomScopeBar?, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>>, StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.S();
  v63 = &v28[*(v62 + 36)];
  *v63 = partial apply for closure #1 in View.transformToolbarRole(_:isEnabled:);
  *(v63 + 1) = v61;
}

uint64_t outlined init with take of ToolbarSearchFieldStyle.Implementation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 specialized closure #1 in ToolbarSearchFieldStyle.Implementation.customAccessoryReader<A>(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a3;
  v8 = type metadata accessor for ToolbarSearchFieldStyle.Implementation();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v22 = *(a1 + *(v11 + 44));
  outlined init with copy of SearchFieldConfiguration(a1, &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ToolbarSearchFieldStyle.Implementation);
  v12 = *(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  outlined init with take of ToolbarSearchFieldStyle.Implementation(&v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + ((v12 + 32) & ~v12), type metadata accessor for ToolbarSearchFieldStyle.Implementation);
  outlined init with copy of SearchFieldConfiguration(a1, &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ToolbarSearchFieldStyle.Implementation);
  v14 = (v12 + 16) & ~v12;
  v15 = swift_allocObject();
  outlined init with take of ToolbarSearchFieldStyle.Implementation(&v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v15 + v14, type metadata accessor for ToolbarSearchFieldStyle.Implementation);
  v25 = v22 ^ 1;
  v26 = partial apply for specialized closure #1 in closure #1 in ToolbarSearchFieldStyle.Implementation.customAccessoryReader<A>(_:);
  v27 = v13;
  v28 = partial apply for implicit closure #2 in implicit closure #1 in closure #1 in ToolbarSearchFieldStyle.Implementation.customAccessoryReader<A>(_:);
  v29 = v15;
  v30 = 0;
  v31 = 0;
  v24 = v22;
  outlined init with copy of SearchFieldConfiguration(a1, &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ToolbarSearchFieldStyle.Implementation);
  v16 = swift_allocObject();
  outlined init with take of ToolbarSearchFieldStyle.Implementation(&v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v16 + v14, type metadata accessor for ToolbarSearchFieldStyle.Implementation);
  type metadata accessor for ToolbarItemGroup<UIKitSearchBarAdaptor>(0, &lazy cache variable for type metadata for ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, type metadata accessor for ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
  lazy protocol witness table accessor for type ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();

  View.onChange<A>(of:initial:_:)();

  v17 = v37;
  v18 = v38;
  *(a4 + 64) = v36;
  *(a4 + 80) = v17;
  *(a4 + 96) = v18;
  v19 = v33;
  *a4 = v32;
  *(a4 + 16) = v19;
  result = v35;
  *(a4 + 32) = v34;
  *(a4 + 48) = result;
  return result;
}

uint64_t ToolbarSearchFieldStyle.Implementation.searchToolbarContent(customScopeBar:customAccessory:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a3;
  v67 = type metadata accessor for SearchToolbarItem();
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v61 - v8;
  type metadata accessor for ToolbarItemGroup<Button<Text>?>();
  v63 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v61 - v12;
  v13 = type metadata accessor for SearchFieldConfiguration(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v66 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v61 - v16;
  v62 = type metadata accessor for UIKitSearchBarAdaptor(0);
  MEMORY[0x1EEE9AC00](v62);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v61 - v21;
  type metadata accessor for ToolbarItemGroup<UIKitSearchBarAdaptor>(0, &lazy cache variable for type metadata for ToolbarItemGroup<UIKitSearchBarAdaptor>, type metadata accessor for UIKitSearchBarAdaptor, &protocol witness table for UIKitSearchBarAdaptor, type metadata accessor for ToolbarItemGroup);
  v24 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v65 = &v61 - v28;
  v29 = a1[3];
  v80 = a1[2];
  v81 = v29;
  v82 = a1[4];
  v83 = *(a1 + 10);
  v30 = a1[1];
  v78 = *a1;
  v79 = v30;
  v31 = a2[3];
  v86 = a2[2];
  v87 = v31;
  v88 = a2[4];
  v89 = *(a2 + 10);
  v32 = a2[1];
  v84 = *a2;
  v85 = v32;
  ToolbarSearchFieldStyle.Implementation.searchBarItemPlacement.getter(v72);
  ToolbarSearchFieldStyle.Implementation.searchBarItemPlacement.getter(v77);
  outlined init with copy of ToolbarItemPlacement.Role(v77, &v73);
  if (v76 != 2 || v75 | *(&v75 + 1) | v73 | *(&v74 + 1) | v74 && (v73 != 1 || v75 | *(&v75 + 1) | *(&v74 + 1) | v74))
  {
    outlined destroy of ToolbarItemPlacement.Role(&v73);
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  outlined destroy of ToolbarItemPlacement.Role(v77);
  outlined init with copy of ToolbarItemPlacement(v72, v26);
  v26[*(v24 + 40)] = v33;
  outlined init with copy of SearchFieldConfiguration(v3, v17, type metadata accessor for SearchFieldConfiguration);
  ToolbarSearchFieldStyle.Implementation.searchBarItemPlacement.getter(v77);
  v73 = 29;
  v74 = 0u;
  v75 = 0u;
  v76 = 2;
  v34 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(v77, &v73);
  outlined destroy of ToolbarItemPlacement.Role(&v73);
  outlined destroy of ToolbarItemPlacement(v72);
  outlined destroy of ToolbarItemPlacement.Role(v77);
  v35 = *(v24 + 36);
  outlined init with take of ToolbarSearchFieldStyle.Implementation(v17, v19, type metadata accessor for SearchFieldConfiguration);
  v19[*(v62 + 20)] = (v34 & 1) == 0;
  outlined init with take of ToolbarSearchFieldStyle.Implementation(v19, v22, type metadata accessor for UIKitSearchBarAdaptor);
  outlined init with take of ToolbarSearchFieldStyle.Implementation(v22, &v26[v35], type metadata accessor for UIKitSearchBarAdaptor);
  v36 = v65;
  outlined init with take of ToolbarItemGroup<UIKitSearchBarAdaptor>(v26, v65);
  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  outlined init with copy of ToolbarItemPlacement(&static ToolbarItemPlacement.search, v72);
  ToolbarSearchFieldStyle.Implementation.searchBarItemPlacement.getter(v77);
  outlined init with copy of ToolbarItemPlacement.Role(v77, &v73);
  v37 = v68;
  v38 = v66;
  if (v76 != 2 || v75 | *(&v75 + 1) | v73 | *(&v74 + 1) | v74 && (v73 != 1 || v75 | *(&v75 + 1) | *(&v74 + 1) | v74))
  {
    outlined destroy of ToolbarItemPlacement.Role(&v73);
    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  outlined destroy of ToolbarItemPlacement.Role(v77);
  v40 = v64;
  outlined init with copy of ToolbarItemPlacement(v72, v64);
  v41 = v63;
  *(v40 + *(v63 + 40)) = v39;
  ToolbarSearchFieldStyle.Implementation.cancelButton.getter(v40 + *(v41 + 36));
  outlined destroy of ToolbarItemPlacement(v72);
  outlined init with take of ToolbarSearchFieldStyle.Implementation(v40, v37, type metadata accessor for ToolbarItemGroup<Button<Text>?>);
  outlined init with copy of SearchFieldConfiguration(v3, v38, type metadata accessor for SearchFieldConfiguration);
  ToolbarSearchFieldStyle.Implementation.searchBarItemPlacement.getter(v77);
  outlined init with copy of ToolbarItemPlacement.Role(v77, &v73);
  if (v76 != 2 || v75 | *(&v75 + 1) | v73 | *(&v74 + 1) | v74 && (v73 != 1 || v75 | *(&v75 + 1) | *(&v74 + 1) | v74))
  {
    outlined destroy of ToolbarItemPlacement.Role(&v73);
    v42 = 1;
  }

  else
  {
    v42 = 0;
  }

  outlined destroy of ToolbarItemPlacement.Role(v77);
  v43 = v3 + *(type metadata accessor for ToolbarSearchFieldStyle.Implementation() + 32);
  v44 = *v43;
  v45 = *(v43 + 8);
  outlined init with copy of BoundInputsView?(&v78, v72);
  LOBYTE(v44) = specialized Environment.wrappedValue.getter(v44, v45);
  v46 = v69;
  outlined init with take of ToolbarSearchFieldStyle.Implementation(v38, v69, type metadata accessor for SearchFieldConfiguration);
  v47 = v67;
  *(v46 + *(v67 + 20)) = v42;
  v48 = v46 + v47[6];
  *(v48 + 80) = 0;
  *(v48 + 48) = 0u;
  *(v48 + 64) = 0u;
  *(v48 + 16) = 0u;
  *(v48 + 32) = 0u;
  *v48 = 0u;
  v49 = v46 + v47[7];
  v50 = v81;
  *(v49 + 32) = v80;
  *(v49 + 48) = v50;
  *(v49 + 64) = v82;
  *(v49 + 80) = v83;
  v51 = v79;
  *v49 = v78;
  *(v49 + 16) = v51;
  *(v46 + v47[8]) = v44;
  v52 = v46 + v47[9];
  v53 = v87;
  *(v52 + 32) = v86;
  *(v52 + 48) = v53;
  *(v52 + 64) = v88;
  *(v52 + 80) = v89;
  v54 = v85;
  *v52 = v84;
  *(v52 + 16) = v54;
  v55 = v70;
  outlined init with take of ToolbarSearchFieldStyle.Implementation(v46, v70, type metadata accessor for SearchToolbarItem);
  type metadata accessor for (ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)();
  v57 = *(v56 + 48);
  v58 = *(v56 + 64);
  v59 = v71;
  outlined init with take of ToolbarItemGroup<UIKitSearchBarAdaptor>(v36, v71);
  outlined init with take of ToolbarSearchFieldStyle.Implementation(v37, v59 + v57, type metadata accessor for ToolbarItemGroup<Button<Text>?>);
  outlined init with take of ToolbarSearchFieldStyle.Implementation(v55, v59 + v58, type metadata accessor for SearchToolbarItem);
  return outlined init with copy of BoundInputsView?(&v84, v72);
}

uint64_t ToolbarSearchFieldStyle.Implementation.searchBarItemPlacement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ToolbarSearchFieldStyle.Implementation();
  v4 = v1 + *(v3 + 24);
  v5 = *v4;
  v6 = *(v4 + 8);
  if (specialized Environment.wrappedValue.getter(*v4, v6) == 4)
  {
    if (one-time initialization token for principal != -1)
    {
      swift_once();
    }

    v7 = &static ToolbarItemPlacement.principal;
  }

  else
  {
    static Semantics.v4.getter();
    if ((isLinkedOnOrAfter(_:)() & 1) != 0 || (specialized Environment.wrappedValue.getter(*(v1 + *(v3 + 20)), *(v1 + *(v3 + 20) + 8), &v9), v9 == 2) || (v9 & 1) == 0 || (specialized Environment.wrappedValue.getter(v5, v6) & 0xFE) != 2)
    {
      if (one-time initialization token for automatic != -1)
      {
        swift_once();
      }

      v7 = &static ToolbarItemPlacement.automatic;
    }

    else
    {
      if (one-time initialization token for search != -1)
      {
        swift_once();
      }

      v7 = &static ToolbarItemPlacement.search;
    }
  }

  return outlined init with copy of ToolbarItemPlacement(v7, a1);
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute);
  }

  return result;
}

uint64_t outlined init with take of ToolbarItemGroup<UIKitSearchBarAdaptor>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ToolbarItemGroup<UIKitSearchBarAdaptor>(0, &lazy cache variable for type metadata for ToolbarItemGroup<UIKitSearchBarAdaptor>, type metadata accessor for UIKitSearchBarAdaptor, &protocol witness table for UIKitSearchBarAdaptor, type metadata accessor for ToolbarItemGroup);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ToolbarSearchFieldStyle.Implementation.cancelButton.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ToolbarSearchFieldStyle.Implementation();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  type metadata accessor for Button<Text>(0, &lazy cache variable for type metadata for Button<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for Button);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<SearchFieldState>(0);
  MEMORY[0x18D00ACC0]();
  v14 = *v13;
  _s7SwiftUI16SearchFieldStateVWOhTm_0(v13, type metadata accessor for SearchFieldState);
  if (v14 == 2)
  {
    v15 = 1;
  }

  else
  {
    outlined init with copy of SearchFieldConfiguration(v1, &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ToolbarSearchFieldStyle.Implementation);
    v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v17 = swift_allocObject();
    outlined init with take of ToolbarSearchFieldStyle.Implementation(&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ToolbarSearchFieldStyle.Implementation);
    *v10 = 4;
    v18 = &v10[*(v7 + 36)];
    *v18 = partial apply for closure #1 in ToolbarSearchFieldStyle.Implementation.cancelButton.getter;
    v18[1] = v17;
    type metadata accessor for ButtonAction();
    swift_storeEnumTagMultiPayload();
    v19 = &v10[*(v7 + 40)];
    *v19 = static Text.System.cancel.getter();
    *(v19 + 1) = v20;
    v19[16] = v21 & 1;
    *(v19 + 3) = v22;
    outlined init with take of Button<Text>(v10, a1);
    v15 = 0;
  }

  return (*(v8 + 56))(a1, v15, 1, v7);
}

double one-time initialization function for search()
{
  static ToolbarItemPlacement.search = 29;
  result = 0.0;
  *algn_1EAB094E0 = 0u;
  *&algn_1EAB094E0[16] = 0u;
  byte_1EAB09500 = 2;
  return result;
}

uint64_t outlined init with copy of BoundInputsView?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BoundInputsView?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for BoundInputsView?()
{
  if (!lazy cache variable for type metadata for BoundInputsView?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BoundInputsView?);
    }
  }
}

void *initializeWithCopy for UIKitSearchBarAdaptor(void *a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
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
  v13 = *(*(v12 - 8) + 16);

  v13(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v14 = v10[11];
  v15 = &v8[v14];
  v16 = &v9[v14];
  v15[4] = v16[4];
  *v15 = *v16;
  v17 = type metadata accessor for SearchFieldConfiguration(0);
  v18 = v17[6];
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = v20[8];
  if (v21 == 255)
  {
    *v19 = *v20;
    v19[8] = v20[8];
  }

  else
  {
    v22 = *v20;
    v23 = v21 & 1;
    outlined copy of PlatformItemCollection.Storage(*v20, v21 & 1);
    *v19 = v22;
    v19[8] = v23;
  }

  *(a1 + v17[7]) = *(a2 + v17[7]);
  v24 = v17[8];
  v25 = a1 + v24;
  v26 = a2 + v24;
  v27 = *(a2 + v24);
  v28 = *(a2 + v24 + 8);
  v29 = *(a2 + v24 + 16);
  outlined copy of Text.Storage(v27, v28, v29);
  *v25 = v27;
  *(v25 + 1) = v28;
  v25[16] = v29;
  *(v25 + 3) = *(v26 + 3);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  return a1;
}

void *initializeWithCopy for SearchToolbarItem(void *a1, void *a2, int *a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_2(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
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
  v13 = *(*(v12 - 8) + 16);

  v13(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v14 = v10[11];
  v15 = &v8[v14];
  v16 = a1;
  v17 = &v9[v14];
  v15[4] = v17[4];
  *v15 = *v17;
  v18 = type metadata accessor for SearchFieldConfiguration(0);
  v19 = v18[6];
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = v21[8];
  if (v22 == 255)
  {
    *v20 = *v21;
    v20[8] = v21[8];
  }

  else
  {
    v23 = *v21;
    v24 = v22 & 1;
    outlined copy of PlatformItemCollection.Storage(*v21, v22 & 1);
    *v20 = v23;
    v20[8] = v24;
  }

  *(v16 + v18[7]) = *(a2 + v18[7]);
  v25 = v18[8];
  v26 = v16 + v25;
  v27 = a2 + v25;
  v28 = *(a2 + v25);
  v29 = *(a2 + v25 + 8);
  v30 = *(a2 + v25 + 16);
  outlined copy of Text.Storage(v28, v29, v30);
  *v26 = v28;
  *(v26 + 1) = v29;
  v26[16] = v30;
  v31 = a3[5];
  v32 = a3[6];
  v33 = *(a2 + v31);
  *(v26 + 3) = *(v27 + 3);
  *(v16 + v31) = v33;
  v34 = v16 + v32;
  v35 = a2 + v32;
  v36 = *(a2 + v32);

  if (v36)
  {
    v37 = *(v35 + 1);
    *v34 = v36;
    *(v34 + 1) = v37;
    *(v34 + 4) = *(v35 + 4);
    v38 = *(v35 + 4);
    *(v34 + 3) = *(v35 + 3);
    *(v34 + 4) = v38;
    *(v34 + 5) = *(v35 + 5);
    *(v34 + 12) = *(v35 + 12);
    *(v34 + 7) = *(v35 + 7);
    *(v34 + 4) = *(v35 + 4);
    *(v34 + 10) = *(v35 + 10);
    v39 = v38;
  }

  else
  {
    v40 = *(v35 + 3);
    *(v34 + 2) = *(v35 + 2);
    *(v34 + 3) = v40;
    *(v34 + 4) = *(v35 + 4);
    *(v34 + 10) = *(v35 + 10);
    v41 = *(v35 + 1);
    *v34 = *v35;
    *(v34 + 1) = v41;
  }

  v42 = a3[7];
  v43 = v16 + v42;
  v44 = a2 + v42;
  if (*v44)
  {
    v45 = *(v44 + 1);
    *v43 = *v44;
    *(v43 + 1) = v45;
    *(v43 + 4) = *(v44 + 4);
    v46 = *(v44 + 4);
    *(v43 + 3) = *(v44 + 3);
    *(v43 + 4) = v46;
    *(v43 + 5) = *(v44 + 5);
    *(v43 + 12) = *(v44 + 12);
    *(v43 + 7) = *(v44 + 7);
    *(v43 + 4) = *(v44 + 4);
    *(v43 + 10) = *(v44 + 10);
    v47 = v46;
  }

  else
  {
    v48 = *(v44 + 3);
    *(v43 + 2) = *(v44 + 2);
    *(v43 + 3) = v48;
    *(v43 + 4) = *(v44 + 4);
    *(v43 + 10) = *(v44 + 10);
    v49 = *(v44 + 1);
    *v43 = *v44;
    *(v43 + 1) = v49;
  }

  v50 = a3[9];
  *(v16 + a3[8]) = *(a2 + a3[8]);
  v51 = v16 + v50;
  v52 = a2 + v50;
  if (*v52)
  {
    v53 = *(v52 + 1);
    *v51 = *v52;
    *(v51 + 1) = v53;
    *(v51 + 4) = *(v52 + 4);
    v54 = *(v52 + 4);
    *(v51 + 3) = *(v52 + 3);
    *(v51 + 4) = v54;
    *(v51 + 5) = *(v52 + 5);
    *(v51 + 12) = *(v52 + 12);
    *(v51 + 7) = *(v52 + 7);
    *(v51 + 4) = *(v52 + 4);
    *(v51 + 10) = *(v52 + 10);
    v55 = v54;
  }

  else
  {
    v56 = *(v52 + 3);
    *(v51 + 2) = *(v52 + 2);
    *(v51 + 3) = v56;
    *(v51 + 4) = *(v52 + 4);
    *(v51 + 10) = *(v52 + 10);
    v57 = *(v52 + 1);
    *v51 = *v52;
    *(v51 + 1) = v57;
  }

  return v16;
}

uint64_t destroy for UIKitSearchBarAdaptor(uint64_t a1)
{

  type metadata accessor for Binding<SearchFieldState>(0);
  v3 = a1 + *(v2 + 32);
  v4 = *(type metadata accessor for SearchFieldState(0) + 36);
  v5 = type metadata accessor for AttributedString();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = type metadata accessor for SearchFieldConfiguration(0);
  v7 = a1 + *(v6 + 24);
  v8 = *(v7 + 8);
  if (v8 != 255)
  {
    outlined consume of PlatformItemCollection.Storage(*v7, v8 & 1);
  }

  outlined consume of Text.Storage(*(a1 + *(v6 + 32)), *(a1 + *(v6 + 32) + 8), *(a1 + *(v6 + 32) + 16));
}

uint64_t destroy for SearchToolbarItem(uint64_t a1, int *a2)
{

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_2(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v5 = *(v4 + 32);
  v6 = a1 + *(type metadata accessor for SearchFieldState(0) + 36);
  v7 = type metadata accessor for AttributedString();
  (*(*(v7 - 8) + 8))(v6 + v5, v7);
  v8 = type metadata accessor for SearchFieldConfiguration(0);
  v9 = a1 + *(v8 + 24);
  v10 = *(v9 + 8);
  if (v10 != 255)
  {
    outlined consume of PlatformItemCollection.Storage(*v9, v10 & 1);
  }

  outlined consume of Text.Storage(*(a1 + *(v8 + 32)), *(a1 + *(v8 + 32) + 8), *(a1 + *(v8 + 32) + 16));

  v12 = a1 + a2[6];
  if (*v12)
  {
  }

  v13 = a1 + a2[7];
  if (*v13)
  {
  }

  v14 = a1 + a2[9];
  if (*v14)
  {
  }

  return result;
}

uint64_t closure #1 in ToolbarSearchFieldStyle.Implementation.searchSuggestionsWriter.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<SearchFieldState>(0);
  MEMORY[0x18D00ACC0]();
  v5 = v4[1];
  _s7SwiftUI16SearchFieldStateVWOhTm_0(v4, type metadata accessor for SearchFieldState);
  if (v5)
  {
    result = 0;
    v7 = -1;
  }

  else
  {
    result = swift_getKeyPath();
    v7 = 0;
  }

  *a1 = 0;
  *(a1 + 8) = result;
  *(a1 + 16) = v7;
  return result;
}

unint64_t initializeWithCopy for LazyPlatformItemWriter(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  v5 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 24) - 8);
  (*(v6 + 16))((v4 + *(v6 + 80) + 8) & ~*(v6 + 80), (v5 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance SearchFieldConfiguration.Suggestions(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<SearchFieldConfiguration.Suggestions>, lazy protocol witness table accessor for type SearchFieldConfiguration.Suggestions and conformance SearchFieldConfiguration.Suggestions, &type metadata for SearchFieldConfiguration.Suggestions, &lazy protocol witness table cache variable for type SourceInput<SearchFieldConfiguration.Suggestions> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type SearchFieldConfiguration.Suggestions and conformance SearchFieldConfiguration.Suggestions();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t SearchPrimitiveModifier.FocusStoreListFilter.updateValue()(uint64_t a1)
{
  v73 = *MEMORY[0x1E69E9840];
  v65 = type metadata accessor for SearchFieldState(0);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v57 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (SearchFieldState?, SearchFieldState?)();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v63 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchFieldState?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v58 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v57 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - v12;
  v14 = *(a1 + 24);
  v68 = *(a1 + 16);
  v67 = v14;
  v15 = type metadata accessor for SearchField();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v57 - v20;
  type metadata accessor for Binding<SearchFieldState>(0);
  v59 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v61 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v57 - v25;
  SearchPrimitiveModifier.FocusStoreListFilter.searchField.getter(v21);
  v66 = v26;
  SearchField.$state.getter(v26);
  v27 = *(v16 + 8);
  v27(v21, v15);
  v28 = v13;
  SearchPrimitiveModifier.FocusStoreListFilter.searchField.getter(v18);
  SearchField.state.getter();
  v27(v18, v15);
  v29 = v64;
  v30 = v1;
  v31 = v65;
  (*(v64 + 56))(v13, 0, 1, v65);
  v32 = v62;
  _s7SwiftUI7BindingVy10Foundation16AttributedStringVGWOcTm_0(v1 + *(a1 + 44), v62, type metadata accessor for SearchFieldState?);
  v33 = *(v5 + 56);
  v34 = v63;
  _s7SwiftUI7BindingVy10Foundation16AttributedStringVGWOcTm_0(v28, v63, type metadata accessor for SearchFieldState?);
  _s7SwiftUI7BindingVy10Foundation16AttributedStringVGWOcTm_0(v32, v34 + v33, type metadata accessor for SearchFieldState?);
  v35 = *(v29 + 48);
  if (v35(v34, 1, v31) != 1)
  {
    v37 = v58;
    _s7SwiftUI7BindingVy10Foundation16AttributedStringVGWOcTm_0(v34, v58, type metadata accessor for SearchFieldState?);
    if (v35(v34 + v33, 1, v31) != 1)
    {
      v38 = v57;
      outlined init with take of SearchFieldState?(v34 + v33, v57, type metadata accessor for SearchFieldState);
      v39 = specialized static SearchFieldState.== infix(_:_:)(v37, v38);
      outlined destroy of SearchEnvironmentWritingModifier(v38, type metadata accessor for SearchFieldState);
      outlined destroy of SearchEnvironmentWritingModifier(v32, type metadata accessor for SearchFieldState?);
      outlined destroy of SearchEnvironmentWritingModifier(v28, type metadata accessor for SearchFieldState?);
      outlined destroy of SearchEnvironmentWritingModifier(v37, type metadata accessor for SearchFieldState);
      outlined destroy of SearchEnvironmentWritingModifier(v34, type metadata accessor for SearchFieldState?);
      v36 = !v39;
      goto LABEL_8;
    }

    outlined destroy of SearchEnvironmentWritingModifier(v32, type metadata accessor for SearchFieldState?);
    outlined destroy of SearchEnvironmentWritingModifier(v28, type metadata accessor for SearchFieldState?);
    outlined destroy of SearchEnvironmentWritingModifier(v37, type metadata accessor for SearchFieldState);
    goto LABEL_6;
  }

  outlined destroy of SearchEnvironmentWritingModifier(v32, type metadata accessor for SearchFieldState?);
  outlined destroy of SearchEnvironmentWritingModifier(v28, type metadata accessor for SearchFieldState?);
  if (v35(v34 + v33, 1, v31) != 1)
  {
LABEL_6:
    outlined destroy of SearchEnvironmentWritingModifier(v34, type metadata accessor for (SearchFieldState?, SearchFieldState?));
    v36 = 1;
    goto LABEL_8;
  }

  outlined destroy of SearchEnvironmentWritingModifier(v34, type metadata accessor for SearchFieldState?);
  v36 = 0;
LABEL_8:
  v40 = MEMORY[0x1E69E6720];
  _s7SwiftUI5StateVySbGMaTm_2(0, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v43 = v42;
  outlined init with copy of CollectionOfOne<FocusStoreList.Item>(Value, v72, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext, v40);
  _s7SwiftUI5StateVySbGMaTm_2(0, &lazy cache variable for type metadata for [Namespace.ID], MEMORY[0x1E6981EA0], MEMORY[0x1E69E62F8]);
  v44 = AGGraphGetValue();
  v46 = v45;
  type metadata accessor for (_:)();
  if (!AGGraphGetOutputValue() || (v36 & 1) != 0 || (v43 & 1) != 0 || (v46 & 1) != 0)
  {
    v47 = *v44;

    DisplayList.Version.init(forUpdate:)();
    v48 = *&v71[0];
    v49 = MEMORY[0x1E69E6720];
    outlined init with copy of CollectionOfOne<FocusStoreList.Item>(v72, v71, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext, MEMORY[0x1E69E6720]);
    v50 = v66;
    v51 = v61;
    _s7SwiftUI7BindingVy10Foundation16AttributedStringVGWOcTm_0(v66, v61, type metadata accessor for Binding<SearchFieldState>);
    v52 = (*(v59 + 80) + 112) & ~*(v59 + 80);
    v53 = swift_allocObject();
    v54 = v71[3];
    *(v53 + 48) = v71[2];
    *(v53 + 64) = v54;
    *(v53 + 80) = v71[4];
    v55 = v71[1];
    *(v53 + 16) = v71[0];
    *(v53 + 32) = v55;
    *(v53 + 96) = v48;
    *(v53 + 104) = v47;
    outlined init with take of SearchFieldState?(v51, v53 + v52, type metadata accessor for Binding<SearchFieldState>);
    v69 = partial apply for closure #1 in SearchPrimitiveModifier.FocusStoreListFilter.updateValue();
    v70 = v53;
    AGGraphSetOutputValue();
    outlined destroy of CollectionOfOne<FocusStoreList.Item>(v72, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext, v49);
    outlined destroy of SearchEnvironmentWritingModifier(v50, type metadata accessor for Binding<SearchFieldState>);
  }

  else
  {
    outlined destroy of CollectionOfOne<FocusStoreList.Item>(v72, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext, MEMORY[0x1E69E6720]);
    outlined destroy of SearchEnvironmentWritingModifier(v66, type metadata accessor for Binding<SearchFieldState>);
  }

  return $defer #1 <A>() in SearchPrimitiveModifier.FocusStoreListFilter.updateValue()(v30);
}

uint64_t sub_18BF736A4()
{
  type metadata accessor for Binding<SearchFieldState>(0);
  v2 = v1;
  v3 = *(*(v1 - 8) + 80);
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  }

  v4 = *(v2 + 32);
  v5 = v4 + *(type metadata accessor for SearchFieldState(0) + 36);
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 8))(v0 + ((v3 + 112) & ~v3) + v5, v6);

  return swift_deallocObject();
}

void type metadata accessor for (SearchFieldState?, SearchFieldState?)()
{
  if (!lazy cache variable for type metadata for (SearchFieldState?, SearchFieldState?))
  {
    type metadata accessor for SearchFieldState?(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (SearchFieldState?, SearchFieldState?));
    }
  }
}

uint64_t SearchPrimitiveModifier.FocusStoreListFilter.searchField.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SearchField();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t ScrollViewReader.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  v9 = MEMORY[0x1E6980280];
  static PreferenceKey._delay<A>(_:)();

  v14[0] = v15;
  v14[1] = v16;
  v13 = v9;
  v10 = type metadata accessor for _DelayedPreferenceView();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v14, v10, WitnessTable);

  v15 = v13;
  v16 = a3;
  static ViewBuilder.buildExpression<A>(_:)(&v15, v10, WitnessTable);
}

uint64_t sub_18BF73A08()
{

  return swift_deallocObject();
}

uint64_t $defer #1 <A>() in SearchPrimitiveModifier.FocusStoreListFilter.updateValue()(uint64_t a1)
{
  v2 = type metadata accessor for SearchField();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - v4;
  v6 = type metadata accessor for SearchPrimitiveModifier.FocusStoreListFilter();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  type metadata accessor for SearchFieldState?(0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6, v11);
  SearchPrimitiveModifier.FocusStoreListFilter.searchField.getter(v5);
  (*(v7 + 8))(v9, v6);
  SearchField.state.getter();
  (*(v3 + 8))(v5, v2);
  v14 = type metadata accessor for SearchFieldState(0);
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  return outlined assign with take of SearchFieldState?(v13, a1 + *(v6 + 44));
}

uint64_t outlined assign with take of SearchFieldState?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchFieldState?(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ScrollViewReader.body.getter(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v4 = *a1;
  return v2(&v4);
}

uint64_t closure #1 in SearchPrimitiveModifier.FocusStoreListFilter.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of CollectionOfOne<FocusStoreList.Item>(a2, &v19, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext, MEMORY[0x1E69E6720]);
  if (!v21)
  {
    return outlined destroy of CollectionOfOne<FocusStoreList.Item>(&v19, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext, MEMORY[0x1E69E6720]);
  }

  v24[0] = v19;
  v24[1] = v20;
  v24[3] = v22;
  v24[4] = v23;
  v24[2] = v21;
  v9 = v19;
  v10 = v22;
  v11 = v23;

  v12 = v11(a4, a5);
  *&v19 = a3;
  *(&v19 + 1) = v9;
  v20 = v10;
  *&v21 = v12;
  *(&v21 + 1) = v13;
  swift_weakInit();
  swift_weakInit();
  LOBYTE(v23) = 0;
  v14 = *(*a1 + 16);
  outlined init with copy of FocusStoreList.Item(&v19, v18);
  v15 = MEMORY[0x1E69E6BC0];
  outlined init with copy of CollectionOfOne<FocusStoreList.Item>(v18, v17, &lazy cache variable for type metadata for CollectionOfOne<FocusStoreList.Item>, &type metadata for FocusStoreList.Item, MEMORY[0x1E69E6BC0]);
  specialized Array.replaceSubrange<A>(_:with:)(v14, v14, v17);
  outlined destroy of CollectionOfOne<FocusStoreList.Item>(v18, &lazy cache variable for type metadata for CollectionOfOne<FocusStoreList.Item>, &type metadata for FocusStoreList.Item, v15);
  outlined destroy of FocusStoreList.Item(&v19);
  return outlined destroy of SearchFocusContext(v24);
}

uint64_t partial apply for closure #1 in SearchPrimitiveModifier.FocusStoreListFilter.updateValue()(uint64_t a1)
{
  type metadata accessor for Binding<SearchFieldState>(0);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = v1 + ((*(*(v3 - 8) + 80) + 112) & ~*(*(v3 - 8) + 80));

  return closure #1 in SearchPrimitiveModifier.FocusStoreListFilter.updateValue()(a1, v1 + 16, v4, v5, v6);
}

uint64_t (*closure #1 in SearchFocusContext.init<A>(binding:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<SearchFocusContext?>(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, a3, a4, v14);
  outlined init with copy of Binding<SearchFieldState>(a2, v12);
  v18 = FocusStoreUpdateAction.init<A>(value:focusScopes:searchFieldState:)(v16, a1, v12, a4, a5);

  return v18;
}

uint64_t outlined init with copy of Binding<SearchFieldState>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<SearchFocusContext?>(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for _EnvironmentKeyTransformModifier<ScrollAnchorStorage>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ScrollAnchorStorage>)
  {
    v0 = type metadata accessor for _EnvironmentKeyTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ScrollAnchorStorage>);
    }
  }
}

uint64_t outlined init with take of Binding<SearchFieldState>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<SearchFieldState>(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ScrollAnchorStorage> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<ScrollAnchorStorage> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<ScrollAnchorStorage> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<ScrollAnchorStorage>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<ScrollAnchorStorage> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

uint64_t (*FocusStoreUpdateAction.init<A>(value:focusScopes:searchFieldState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v10 = *(a4 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for CollectionOfOne<Hashable>(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v14 = (v12 + *(*(v13 - 8) + 80) + 8) & ~*(*(v13 - 8) + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  (*(v10 + 32))(v15 + v11, a1, a4);
  *(v15 + v12) = a2;
  outlined init with take of Binding<SearchFieldState>(a3, v15 + v14);
  return partial apply for closure #1 in FocusStoreUpdateAction.init<A>(value:focusScopes:searchFieldState:);
}

uint64_t sub_18BF74450()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for CollectionOfOne<Hashable>(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 80);
  v8 = (v4 + v7 + 8) & ~v7;
  (*(v2 + 8))(v0 + v3, v1);

  v9 = *(v6 + 40);
  v10 = v9 + *(type metadata accessor for SearchFieldState(0) + 36);
  v11 = type metadata accessor for AttributedString();
  (*(*(v11 - 8) + 8))(v0 + v8 + v10, v11);

  return swift_deallocObject();
}

void type metadata accessor for CollectionOfOne<Hashable>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t initializeWithCopy for FocusStoreList.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v6 = (a2 + 32);
  v5 = *(a2 + 32);

  if (v5)
  {
    v7 = *(a2 + 40);
    *(a1 + 32) = v5;
    *(a1 + 40) = v7;
  }

  else
  {
    *(a1 + 32) = *v6;
  }

  swift_weakCopyInit();
  swift_weakCopyInit();
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(a3 + 16);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v6 + v12;
  if (__OFADD__(v6, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v5 + 3) >> 1)
  {
    if (v6 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, v10, a3);
  *v3 = v5;
  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *v4;
  v10 = v9 + 32 + 72 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    if (!__OFSUB__(v13, a2))
    {
      result = v10 + 72 * a3;
      v14 = v9 + 32 + 72 * a2;
      if (result < v14 || result >= v14 + 72 * (v13 - a2))
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v14)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v16 = *(v9 + 16);
      v11 = __OFADD__(v16, v12);
      v17 = v16 + v12;
      if (!v11)
      {
        *(v9 + 16) = v17;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 < 1)
  {
    return outlined destroy of CollectionOfOne<NavigationViewDestinationView>(a4, &lazy cache variable for type metadata for CollectionOfOne<FocusStoreList.Item>);
  }

  result = outlined init with copy of FocusStoreList.Item(a4, v10);
  if (a3 == 1)
  {
    return outlined destroy of CollectionOfOne<NavigationViewDestinationView>(a4, &lazy cache variable for type metadata for CollectionOfOne<FocusStoreList.Item>);
  }

LABEL_22:
  __break(1u);
  return result;
}

{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = v9 + 32 + 120 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 120 * a3;
      v15 = (v9 + 32 + 120 * a2);
      if (result != v15 || result >= v15 + 120 * v14)
      {
        result = memmove(result, v15, 120 * v14);
      }

      v17 = *(v9 + 16);
      v11 = __OFADD__(v17, v12);
      v18 = v17 + v12;
      if (!v11)
      {
        *(v9 + 16) = v18;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 < 1)
  {
    return outlined destroy of CollectionOfOne<NavigationViewDestinationView>(a4, &lazy cache variable for type metadata for CollectionOfOne<SwiftUIAnySortComparator>);
  }

  result = outlined init with copy of SwiftUIAnySortComparator(a4, v10);
  if (a3 == 1)
  {
    return outlined destroy of CollectionOfOne<NavigationViewDestinationView>(a4, &lazy cache variable for type metadata for CollectionOfOne<SwiftUIAnySortComparator>);
  }

LABEL_20:
  __break(1u);
  return result;
}

{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = v9 + 32 + 88 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 88 * a3;
      v15 = (v9 + 32 + 88 * a2);
      if (result != v15 || result >= v15 + 88 * v14)
      {
        result = memmove(result, v15, 88 * v14);
      }

      v17 = *(v9 + 16);
      v11 = __OFADD__(v17, v12);
      v18 = v17 + v12;
      if (!v11)
      {
        *(v9 + 16) = v18;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 < 1)
  {
    return outlined destroy of CollectionOfOne<NavigationViewDestinationView>(a4, &lazy cache variable for type metadata for CollectionOfOne<NavigationViewDestinationView>);
  }

  result = outlined init with copy of NavigationViewDestinationView(a4, v10);
  if (a3 == 1)
  {
    return outlined destroy of CollectionOfOne<NavigationViewDestinationView>(a4, &lazy cache variable for type metadata for CollectionOfOne<NavigationViewDestinationView>);
  }

LABEL_20:
  __break(1u);
  return result;
}

{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 8 * result);
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + 8 * a2);
      if (result != v12 || result >= v12 + 8 * v11)
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, 8 * v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = *v4;
  v10 = v9 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_21;
  }

  result = v10 + 32 * a3;
  v15 = (v9 + 32 + 32 * a2);
  if (result != v15 || result >= v15 + 32 * v14)
  {
    result = memmove(result, v15, 32 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_22;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

uint64_t View.scrollBounceBehavior(_:axes:)(_BYTE *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5[0] = *a1;
  v5[1] = a2;
  return View.transformScrollEnvironment<A>(_:)(v5, a3, &type metadata for TransformScrollBounceBehavior, a4);
}

uint64_t outlined destroy of CollectionOfOne<NavigationViewDestinationView>(uint64_t a1, unint64_t *a2)
{
  type metadata accessor for CollectionOfOne<NavigationViewDestinationView>(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for CollectionOfOne<NavigationViewDestinationView>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for CollectionOfOne();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t destroy for FocusStoreList.Item(uint64_t a1)
{

  if (*(a1 + 32))
  {
  }

  swift_weakDestroy();

  return swift_weakDestroy();
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance ToolbarContentKey(uint64_t a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a2(v8);
  ToolbarStorage.merge(_:options:)(v8, a6);
  return outlined destroy of ToolbarStorage(v8);
}

void (*SearchToolbarItem.SearchTransform.value.getter(unint64_t a1, uint64_t a2))(uint64_t a1)
{
  v83 = a2;
  v3 = HIDWORD(a1);
  v4 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v72[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for SearchFieldConfiguration(0);
  v8 = v7 - 8;
  v78 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v79 = v9;
  v80 = &v72[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v72[-v11];
  v13 = type metadata accessor for SearchToolbarItem();
  Value = AGGraphGetValue();
  outlined init with copy of SearchFieldConfiguration(Value, v12);
  v77 = *(AGGraphGetValue() + v13[5]);
  v15 = AGGraphGetValue() + v13[6];
  v16 = *(v15 + 32);
  v17 = *(v15 + 48);
  v18 = *(v15 + 64);
  v95 = *(v15 + 80);
  v93 = v17;
  v94 = v18;
  v92 = v16;
  v19 = *(v15 + 16);
  v90 = *v15;
  v91 = v19;
  outlined init with copy of BoundInputsView?(&v90, &v102);
  v20 = AGGraphGetValue() + v13[7];
  v21 = *(v20 + 32);
  v22 = *(v20 + 48);
  v23 = *(v20 + 64);
  v101 = *(v20 + 80);
  v99 = v22;
  v100 = v23;
  v98 = v21;
  v24 = *(v20 + 16);
  v96 = *v20;
  v97 = v24;
  outlined init with copy of BoundInputsView?(&v96, &v102);
  v75 = *(AGGraphGetValue() + v13[8]);
  v25 = AGGraphGetValue() + v13[9];
  v26 = *(v25 + 80);
  v28 = *(v25 + 48);
  v27 = *(v25 + 64);
  v104 = *(v25 + 32);
  v105 = v28;
  v106 = v27;
  v107 = v26;
  v29 = *(v25 + 16);
  v102 = *v25;
  v103 = v29;
  outlined init with copy of BoundInputsView?(&v102, &v87);
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_2(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v31 = v30;
  MEMORY[0x18D00ACC0]();
  WeakValue = outlined destroy of SearchFieldState(v6);
  v33 = *(v8 + 32);
  v76 = v12;
  v34 = &v12[v33];
  v35 = *v34;
  v36 = v34[8];
  if (v36 != 255 && (v36 & 1) == 0)
  {
    WeakValue = AGGraphGetWeakValue();
  }

  v73 = v36;
  v85 = v72;
  v86 = v35;
  v87 = __PAIR64__(v3, a1);
  v37 = v83;
  v88 = v83;
  v89 = BYTE4(v83) & 1;
  MEMORY[0x1EEE9AC00](WeakValue);
  v81 = a1;
  *&v72[-16] = a1;
  *&v72[-12] = v3;
  *&v72[-8] = v37;
  v74 = v38;
  v72[-4] = v38;
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for SearchEnvironmentStorage.Properties?);
  v40 = v39;
  v41 = lazy protocol witness table accessor for type SearchToolbarItem.SearchTransform and conformance SearchToolbarItem.SearchTransform();
  v82 = v3;
  MEMORY[0x18D000B90](&unk_1EFFC36B0, v40, v41);
  Rule.withObservation<A>(observationCenter:do:)();

  AGGraphGetValue();
  v42 = v76;
  MEMORY[0x18D00ACC0](v31);
  v43 = *v6;
  outlined destroy of SearchFieldState(v6);
  if (v43 != 2)
  {
    if (*(AGGraphGetValue() + 8))
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LazySearchScopesKey>);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<LazySearchScopesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<LazySearchScopesKey>);

      swift_retain_n();
      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LazySearchScopesKey>);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<LazySearchScopesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<LazySearchScopesKey>);

      PropertyList.subscript.getter();
    }

    v44 = v88;
    if (v88 != 255)
    {
      v45 = v87;
      if ((v88 & 1) != 0 || !AGGraphGetWeakValue())
      {
        outlined consume of PlatformItemCollection?(v45, v44);
      }
    }
  }

  v46 = AGGraphGetValue();
  v47 = *v46;
  v84 = v46[1];
  v85 = v47;
  v48 = v73;
  if (v73 == 255)
  {

    v86 = 0;
  }

  else
  {
    if (v73)
    {

      v49 = v86;
      outlined copy of PlatformItemCollection?(v86, v48);
    }

    else
    {

      v50 = AGGraphGetWeakValue();
      if (v50)
      {
        v49 = *v50;
      }

      else
      {
        v49 = MEMORY[0x1E69E7CC0];
      }
    }

    v86 = v49;
  }

  v51 = v80;
  outlined init with take of SearchFieldConfiguration(v42, v80, type metadata accessor for SearchFieldConfiguration);
  v52 = (*(v78 + 80) + 17) & ~*(v78 + 80);
  v53 = (v79 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v54 + 23) & 0xFFFFFFFFFFFFFFF8;
  v79 = (v55 + 95) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v55 + 191) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  *(v57 + 16) = v77;
  outlined init with take of SearchFieldConfiguration(v51, v57 + v52, type metadata accessor for SearchFieldConfiguration);
  v58 = v85;
  *(v57 + v53) = v86;
  v59 = (v57 + v54);
  v60 = v84;
  *v59 = v58;
  v59[1] = v60;
  v61 = v57 + v55;
  v62 = v91;
  *v61 = v90;
  *(v61 + 16) = v62;
  *(v61 + 80) = v95;
  v63 = v94;
  *(v61 + 48) = v93;
  *(v61 + 64) = v63;
  *(v61 + 32) = v92;
  v64 = v57 + v79;
  v65 = v99;
  *(v64 + 32) = v98;
  *(v64 + 48) = v65;
  *(v64 + 64) = v100;
  *(v64 + 80) = v101;
  v66 = v97;
  *v64 = v96;
  *(v64 + 16) = v66;
  *(v64 + 88) = v75;
  v67 = v57 + v56;
  v68 = v103;
  *v67 = v102;
  *(v67 + 16) = v68;
  *(v67 + 80) = v107;
  v69 = v106;
  *(v67 + 48) = v105;
  *(v67 + 64) = v69;
  *(v67 + 32) = v104;
  v70 = v57 + ((v56 + 91) & 0xFFFFFFFFFFFFFFF8);
  LODWORD(v59) = v82;
  *v70 = v81;
  *(v70 + 4) = v59;
  *(v70 + 8) = v83;
  *(v70 + 12) = v74;
  return partial apply for closure #2 in SearchToolbarItem.SearchTransform.value.getter;
}

uint64_t sub_18BF75468()
{
  v1 = type metadata accessor for SearchFieldConfiguration(0);
  v2 = (*(*(v1 - 8) + 80) + 17) & ~*(*(v1 - 8) + 80);
  v3 = (((((*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_2(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v6 = *(v5 + 32);
  v7 = v6 + *(type metadata accessor for SearchFieldState(0) + 36);
  v8 = type metadata accessor for AttributedString();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  v9 = v4 + *(v1 + 24);
  v10 = *(v9 + 8);
  if (v10 != 255)
  {
    outlined consume of PlatformItemCollection.Storage(*v9, v10 & 1);
  }

  v11 = (v3 + 95) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Text.Storage(*(v4 + *(v1 + 32)), *(v4 + *(v1 + 32) + 8), *(v4 + *(v1 + 32) + 16));

  if (*(v0 + v3))
  {
  }

  v12 = (v3 + 191) & 0xFFFFFFFFFFFFFFF8;
  if (*(v0 + v11))
  {
  }

  if (*(v0 + v12))
  {
  }

  return swift_deallocObject();
}

uint64_t outlined destroy of SearchFieldState(uint64_t a1)
{
  v2 = type metadata accessor for SearchFieldState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double SearchToolbarItem.ChildEnvironment.value.getter@<D0>(_OWORD *a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = Value[1];
  *&v6 = *Value;
  *(&v6 + 1) = v3;

  EnvironmentValues.horizontalSizeClass.getter();
  if (v5 != 2 && (v5 & 1) != 0)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>);
    if (v3)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    if ((v5 & 0xFE) == 2)
    {
      EnvironmentValues.dynamicTypeSize.getter();
      EnvironmentValues.dynamicTypeSize.setter();
    }
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>);

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();

    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AutocorrectionTypeKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<AutocorrectionTypeKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {

    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AutocorrectionTypeKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<AutocorrectionTypeKey>);
    PropertyList.subscript.getter();
  }

  result = *&v6;
  *a1 = v6;
  return result;
}

_BYTE *LazyPlatformItemWriter.UpdateEnvironment.value.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X5>, void *a3@<X8>)
{
  Value = AGGraphGetValue();
  v7 = *Value;
  v8 = Value[1];
  v12 = *Value;
  v13 = v8;

  result = AGGraphGetValue();
  if (*result == 1)
  {
    v10 = AGCreateWeakAttribute();
    v11 = 0;
    result = specialized EnvironmentValues.subscript.setter(&v10, a1, a1, a2);
    v7 = v12;
    v8 = v13;
  }

  *a3 = v7;
  a3[1] = v8;
  return result;
}

uint64_t outlined init with take of SearchFieldConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ToolbarStorage.SearchItem?(uint64_t a1)
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *initializeWithCopy for ToolbarStorage.SearchItem(void *a1, void *a2, int *a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
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
  v13 = *(*(v12 - 8) + 16);

  v13(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v14 = v10[11];
  v15 = &v8[v14];
  v16 = &v9[v14];
  v17 = a1;
  v15[4] = v16[4];
  v18 = a3[5];
  v19 = a3[6];
  v20 = *(a2 + v18);
  *v15 = *v16;
  *(a1 + v18) = v20;
  v21 = a1 + v19;
  v22 = a2 + v19;
  v23 = *(a2 + v19 + 8);

  if (v23 == 255)
  {
    *v21 = *v22;
    v21[8] = v22[8];
  }

  else
  {
    v24 = *v22;
    v25 = v23 & 1;
    outlined copy of PlatformItemCollection.Storage(v24, v25);
    *v21 = v24;
    v21[8] = v25;
  }

  v26 = a3[7];
  v27 = v17 + v26;
  v28 = a2 + v26;
  v29 = v28[8];
  if (v29 == 255)
  {
    *v27 = *v28;
    v27[8] = v28[8];
  }

  else
  {
    v30 = *v28;
    v31 = v29 & 1;
    outlined copy of PlatformItemCollection.Storage(*v28, v29 & 1);
    *v27 = v30;
    v27[8] = v31;
  }

  v32 = a3[8];
  v33 = v17 + v32;
  v34 = a2 + v32;
  v35 = *(a2 + v32);
  v36 = *(a2 + v32 + 8);
  v37 = *(a2 + v32 + 16);
  outlined copy of Text.Storage(v35, v36, v37);
  *v33 = v35;
  *(v33 + 1) = v36;
  v33[16] = v37;
  *(v33 + 3) = *(v34 + 3);
  v38 = a3[9];
  v39 = a3[10];
  v40 = (v17 + v38);
  v41 = (a2 + v38);
  v42 = v41[1];
  *v40 = *v41;
  v40[1] = v42;
  v43 = v17 + v39;
  v44 = a2 + v39;
  v45 = *(a2 + v39);

  if (v45)
  {
    v46 = *(v44 + 1);
    *v43 = v45;
    *(v43 + 1) = v46;
    *(v43 + 4) = *(v44 + 4);
    v47 = *(v44 + 4);
    *(v43 + 3) = *(v44 + 3);
    *(v43 + 4) = v47;
    *(v43 + 5) = *(v44 + 5);
    *(v43 + 12) = *(v44 + 12);
    *(v43 + 7) = *(v44 + 7);
    *(v43 + 4) = *(v44 + 4);
    *(v43 + 10) = *(v44 + 10);
    v48 = v47;
  }

  else
  {
    v49 = *(v44 + 3);
    *(v43 + 2) = *(v44 + 2);
    *(v43 + 3) = v49;
    *(v43 + 4) = *(v44 + 4);
    *(v43 + 10) = *(v44 + 10);
    v50 = *(v44 + 1);
    *v43 = *v44;
    *(v43 + 1) = v50;
  }

  v51 = a3[11];
  v52 = v17 + v51;
  v53 = a2 + v51;
  if (*v53)
  {
    v54 = *(v53 + 1);
    *v52 = *v53;
    *(v52 + 1) = v54;
    *(v52 + 4) = *(v53 + 4);
    v55 = *(v53 + 4);
    *(v52 + 3) = *(v53 + 3);
    *(v52 + 4) = v55;
    *(v52 + 5) = *(v53 + 5);
    *(v52 + 12) = *(v53 + 12);
    *(v52 + 7) = *(v53 + 7);
    *(v52 + 4) = *(v53 + 4);
    *(v52 + 10) = *(v53 + 10);
    v56 = v55;
  }

  else
  {
    v57 = *(v53 + 3);
    *(v52 + 2) = *(v53 + 2);
    *(v52 + 3) = v57;
    *(v52 + 4) = *(v53 + 4);
    *(v52 + 10) = *(v53 + 10);
    v58 = *(v53 + 1);
    *v52 = *v53;
    *(v52 + 1) = v58;
  }

  v59 = a3[13];
  *(v17 + a3[12]) = *(a2 + a3[12]);
  v60 = v17 + v59;
  v61 = a2 + v59;
  if (*v61)
  {
    v62 = *(v61 + 1);
    *v60 = *v61;
    *(v60 + 1) = v62;
    *(v60 + 4) = *(v61 + 4);
    v63 = *(v61 + 4);
    *(v60 + 3) = *(v61 + 3);
    *(v60 + 4) = v63;
    *(v60 + 5) = *(v61 + 5);
    *(v60 + 12) = *(v61 + 12);
    *(v60 + 7) = *(v61 + 7);
    *(v60 + 4) = *(v61 + 4);
    *(v60 + 10) = *(v61 + 10);
    v64 = v63;
  }

  else
  {
    v65 = *(v61 + 3);
    *(v60 + 2) = *(v61 + 2);
    *(v60 + 3) = v65;
    *(v60 + 4) = *(v61 + 4);
    *(v60 + 10) = *(v61 + 10);
    v66 = *(v61 + 1);
    *v60 = *v61;
    *(v60 + 1) = v66;
  }

  *(v17 + a3[14]) = *(a2 + a3[14]);
  return v17;
}

uint64_t protocol witness for ScrollEnvironmentTransform.update(properties:) in conformance TransformScrollBounceBehavior(uint64_t result)
{
  v2 = *v1;
  v3 = v1[1];
  if ((v3 & 2) == 0)
  {
    if ((v1[1] & 1) == 0)
    {
      return result;
    }

LABEL_5:
    *(result + 161) = v2;
    return result;
  }

  *(result + 137) = v2;
  if (v3)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t destroy for ToolbarStorage.SearchItem(uint64_t a1, int *a2)
{

  _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v5 = *(v4 + 32);
  v6 = a1 + *(type metadata accessor for SearchFieldState(0) + 36);
  v7 = type metadata accessor for AttributedString();
  (*(*(v7 - 8) + 8))(v6 + v5, v7);

  v8 = a1 + a2[6];
  v9 = *(v8 + 8);
  if (v9 != 255)
  {
    outlined consume of PlatformItemCollection.Storage(*v8, v9 & 1);
  }

  v10 = a1 + a2[7];
  v11 = *(v10 + 8);
  if (v11 != 255)
  {
    outlined consume of PlatformItemCollection.Storage(*v10, v11 & 1);
  }

  outlined consume of Text.Storage(*(a1 + a2[8]), *(a1 + a2[8] + 8), *(a1 + a2[8] + 16));

  v13 = a1 + a2[10];
  if (*v13)
  {
  }

  v14 = a1 + a2[11];
  if (*v14)
  {
  }

  v15 = a1 + a2[13];
  if (*v15)
  {
  }

  return result;
}

__n128 partial apply for closure #1 in View.defaultScrollAnchor(_:)(uint64_t a1)
{
  if ((v1[2].n128_u8[0] & 1) == 0)
  {
    result = v1[1];
    *(a1 + 8) = result;
    *(a1 + 24) = 0;
  }

  return result;
}

_BYTE *closure #1 in View.transformToolbarRole(_:isEnabled:)(_BYTE *result, char a2, char a3)
{
  if ((a2 & 1) != 0 && *result == 3)
  {
    *result = a3;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_UnaryViewAdaptor<EmptyView>, _TraitWritingModifier<IsToolbarSearchProxyTrait>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<EmptyView>, _TraitWritingModifier<IsToolbarSearchProxyTrait>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<EmptyView>, _TraitWritingModifier<IsToolbarSearchProxyTrait>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_UnaryViewAdaptor<EmptyView>, _TraitWritingModifier<IsToolbarSearchProxyTrait>>();
    lazy protocol witness table accessor for type _UnaryViewAdaptor<EmptyView> and conformance _UnaryViewAdaptor<A>();
    lazy protocol witness table accessor for type _TraitWritingModifier<IsToolbarSearchProxyTrait> and conformance _TraitWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<EmptyView>, _TraitWritingModifier<IsToolbarSearchProxyTrait>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_UnaryViewAdaptor<EmptyView>, _TraitWritingModifier<IsToolbarSearchProxyTrait>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<EmptyView>, _TraitWritingModifier<IsToolbarSearchProxyTrait>>)
  {
    type metadata accessor for _UnaryViewAdaptor<EmptyView>(255, &lazy cache variable for type metadata for _UnaryViewAdaptor<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697F378]);
    type metadata accessor for _UnaryViewAdaptor<EmptyView>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsToolbarSearchProxyTrait>, &type metadata for IsToolbarSearchProxyTrait, &protocol witness table for IsToolbarSearchProxyTrait, MEMORY[0x1E697FDB8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<EmptyView>, _TraitWritingModifier<IsToolbarSearchProxyTrait>>);
    }
  }
}

void type metadata accessor for _UnaryViewAdaptor<EmptyView>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<IsToolbarSearchProxyTrait> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<IsToolbarSearchProxyTrait> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<IsToolbarSearchProxyTrait> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _UnaryViewAdaptor<EmptyView>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsToolbarSearchProxyTrait>, &type metadata for IsToolbarSearchProxyTrait, &protocol witness table for IsToolbarSearchProxyTrait, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<IsToolbarSearchProxyTrait> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t assignWithCopy for Menu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
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
  v15 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = *v16;
  if (*v15 < 0xFFFFFFFFuLL)
  {
    if (v17 >= 0xFFFFFFFF)
    {
      v19 = v16[1];
      *v15 = v17;
      v15[1] = v19;

      goto LABEL_8;
    }
  }

  else
  {
    if (v17 >= 0xFFFFFFFF)
    {
      v18 = v16[1];
      *v15 = v17;
      v15[1] = v18;

      goto LABEL_8;
    }
  }

  *v15 = *v16;
LABEL_8:
  v20 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v16 + 23) & 0xFFFFFFFFFFFFFFF8);
  v22 = *v21;
  if (*v20 < 0xFFFFFFFFuLL)
  {
    if (v22 >= 0xFFFFFFFF)
    {
      v24 = v21[1];
      *v20 = v22;
      v20[1] = v24;

      return a1;
    }

LABEL_14:
    *v20 = *v21;
    return a1;
  }

  if (v22 < 0xFFFFFFFF)
  {

    goto LABEL_14;
  }

  v23 = v21[1];
  *v20 = v22;
  v20[1] = v23;

  return a1;
}

uint64_t assignWithCopy for Section(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 24;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 24;
  v9 = *(v7 + 80);
  v10 = *(v6 + 40) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 24))(v11, v12);
  v13 = *(v8 + 40);
  v14 = *(a3[4] - 8);
  v15 = v14 + 24;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 24))(v18, v19);
  v20 = *(v15 + 40) + 7;
  v21 = (v20 + v18) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v20 + v19) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v22 + 8);
  if (*(v21 + 8) < 0xFFFFFFFFuLL)
  {
    if (v23 >= 0xFFFFFFFF)
    {
      *v21 = *v22;
      *(v21 + 8) = *(v22 + 8);
      *(v21 + 16) = *(v22 + 16);

      return a1;
    }

LABEL_7:
    v24 = *v22;
    *(v21 + 16) = *(v22 + 16);
    *v21 = v24;
    return a1;
  }

  if (v23 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *v21 = *v22;

  *(v21 + 8) = *(v22 + 8);

  *(v21 + 16) = *(v22 + 16);
  return a1;
}

uint64_t sub_18BF769B4()
{
  type metadata accessor for List();
  type metadata accessor for _EnvironmentKeyWritingModifier<Binding<EditMode>?>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _PreferenceTransformModifier<PlatformItemList.Key>(255, &lazy cache variable for type metadata for ListStyleWriter<InsetListStyle>, &type metadata for InsetListStyle, &protocol witness table for InsetListStyle, type metadata accessor for ListStyleWriter);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _PreferenceTransformModifier<PlatformItemList.Key>(255, &lazy cache variable for type metadata for StyleContextWriter<TextInputSuggestionsContext>, MEMORY[0x1E6980818], MEMORY[0x1E6980810], MEMORY[0x1E697F4C8]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for MergePlatformItemsView<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _PreferenceTransformModifier<PlatformItemList.Key>>>();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type ViewInputFlagModifier<HasTextInputSuggestions> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Binding<EditMode>?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Binding<EditMode>?>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StyleContextWriter<TextInputSuggestionsContext> and conformance StyleContextWriter<A>();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Binding<EditMode>?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Binding<EditMode>?>)
  {
    type metadata accessor for Binding<EditMode>?();
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Binding<EditMode>?>);
    }
  }
}

void type metadata accessor for MergePlatformItemsView<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _PreferenceTransformModifier<PlatformItemList.Key>>>()
{
  if (!lazy cache variable for type metadata for MergePlatformItemsView<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _PreferenceTransformModifier<PlatformItemList.Key>>>)
  {
    type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _PreferenceTransformModifier<PlatformItemList.Key>>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for MergePlatformItemsView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MergePlatformItemsView<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _PreferenceTransformModifier<PlatformItemList.Key>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _PreferenceTransformModifier<PlatformItemList.Key>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _PreferenceTransformModifier<PlatformItemList.Key>>)
  {
    type metadata accessor for <<opaque return type of MappedViewElement.view>>.0();
    type metadata accessor for _PreferenceTransformModifier<PlatformItemList.Key>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PlatformItemList.Key>, &type metadata for PlatformItemList.Key, &protocol witness table for PlatformItemList.Key, MEMORY[0x1E6980910]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _PreferenceTransformModifier<PlatformItemList.Key>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _PreferenceTransformModifier<PlatformItemList.Key>>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _PreferenceTransformModifier<PlatformItemList.Key> and conformance _PreferenceTransformModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _PreferenceTransformModifier<PlatformItemList.Key>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<PlatformItemList.Key> and conformance _PreferenceTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceTransformModifier<PlatformItemList.Key> and conformance _PreferenceTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceTransformModifier<PlatformItemList.Key> and conformance _PreferenceTransformModifier<A>)
  {
    type metadata accessor for _PreferenceTransformModifier<PlatformItemList.Key>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PlatformItemList.Key>, &type metadata for PlatformItemList.Key, &protocol witness table for PlatformItemList.Key, MEMORY[0x1E6980910]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceTransformModifier<PlatformItemList.Key> and conformance _PreferenceTransformModifier<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<HasTextInputSuggestions> and conformance ViewInputFlagModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type StyleContextWriter<TextInputSuggestionsContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<TextInputSuggestionsContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<TextInputSuggestionsContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for _PreferenceTransformModifier<PlatformItemList.Key>(255, &lazy cache variable for type metadata for StyleContextWriter<TextInputSuggestionsContext>, MEMORY[0x1E6980818], MEMORY[0x1E6980810], MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<TextInputSuggestionsContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

uint64_t TextInputSuggestions.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v4 = *(a1 + 16);
  type metadata accessor for MergePlatformItemsView<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _PreferenceTransformModifier<PlatformItemList.Key>>>();
  v5 = *(a1 + 24);
  v77 = v4;
  v78 = v6;
  v55 = v6;
  v79 = v5;
  v80 = &protocol witness table for MergePlatformItemsView<A>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - v11;
  v77 = MEMORY[0x1E69E73E0];
  v78 = v4;
  v56 = v4;
  v79 = MEMORY[0x1E69E73F0];
  v80 = v5;
  v54 = v5;
  v13 = type metadata accessor for List();
  type metadata accessor for _EnvironmentKeyWritingModifier<Binding<EditMode>?>();
  v51 = v13;
  v14 = type metadata accessor for ModifiedContent();
  type metadata accessor for _PreferenceTransformModifier<PlatformItemList.Key>(255, &lazy cache variable for type metadata for ListStyleWriter<InsetListStyle>, &type metadata for InsetListStyle, &protocol witness table for InsetListStyle, type metadata accessor for ListStyleWriter);
  v53 = v14;
  v15 = type metadata accessor for ModifiedContent();
  type metadata accessor for _PreferenceTransformModifier<PlatformItemList.Key>(255, &lazy cache variable for type metadata for StyleContextWriter<TextInputSuggestionsContext>, MEMORY[0x1E6980818], MEMORY[0x1E6980810], MEMORY[0x1E697F4C8]);
  v52 = v15;
  v16 = type metadata accessor for ModifiedContent();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - v21;
  v49 = type metadata accessor for _ConditionalContent();
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v24 = &v46 - v23;
  if (*v2 == 1)
  {
    TextInputSuggestions.listContent.getter(a1, v19);
    WitnessTable = swift_getWitnessTable();
    HasTextInput = lazy protocol witness table accessor for type ViewInputFlagModifier<HasTextInputSuggestions> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Binding<EditMode>?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Binding<EditMode>?>);
    v61 = WitnessTable;
    v62 = HasTextInput;
    v59 = swift_getWitnessTable();
    v60 = &protocol witness table for ListStyleWriter<A>;
    v27 = swift_getWitnessTable();
    v28 = lazy protocol witness table accessor for type StyleContextWriter<TextInputSuggestionsContext> and conformance StyleContextWriter<A>();
    v57 = v27;
    v58 = v28;
    v29 = swift_getWitnessTable();
    static ViewBuilder.buildExpression<A>(_:)(v19, v16, v29);
    v30 = *(v17 + 8);
    v30(v19, v16);
    static ViewBuilder.buildExpression<A>(_:)(v22, v16, v29);
    v77 = v56;
    v78 = v55;
    v79 = v54;
    v80 = &protocol witness table for MergePlatformItemsView<A>;
    swift_getOpaqueTypeConformance2();
    static ViewBuilder.buildEither<A, B>(first:)(v19, v16);
    v30(v19, v16);
    v30(v22, v16);
  }

  else
  {
    TextInputSuggestions.platformItemContent.getter(a1, v9);
    v77 = v56;
    v78 = v55;
    v79 = v54;
    v80 = &protocol witness table for MergePlatformItemsView<A>;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    static ViewBuilder.buildExpression<A>(_:)(v9, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v32 = *(v47 + 8);
    v32(v9, OpaqueTypeMetadata2);
    static ViewBuilder.buildExpression<A>(_:)(v12, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v33 = swift_getWitnessTable();
    v34 = lazy protocol witness table accessor for type ViewInputFlagModifier<HasTextInputSuggestions> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Binding<EditMode>?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Binding<EditMode>?>);
    v75 = v33;
    v76 = v34;
    v73 = swift_getWitnessTable();
    v74 = &protocol witness table for ListStyleWriter<A>;
    v35 = swift_getWitnessTable();
    v36 = lazy protocol witness table accessor for type StyleContextWriter<TextInputSuggestionsContext> and conformance StyleContextWriter<A>();
    v71 = v35;
    v72 = v36;
    swift_getWitnessTable();
    static ViewBuilder.buildEither<A, B>(second:)(v9, v16, OpaqueTypeMetadata2);
    v32(v9, OpaqueTypeMetadata2);
    v32(v12, OpaqueTypeMetadata2);
  }

  v37 = swift_getWitnessTable();
  v38 = lazy protocol witness table accessor for type ViewInputFlagModifier<HasTextInputSuggestions> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Binding<EditMode>?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Binding<EditMode>?>);
  v69 = v37;
  v70 = v38;
  v67 = swift_getWitnessTable();
  v68 = &protocol witness table for ListStyleWriter<A>;
  v39 = swift_getWitnessTable();
  v40 = lazy protocol witness table accessor for type StyleContextWriter<TextInputSuggestionsContext> and conformance StyleContextWriter<A>();
  v65 = v39;
  v66 = v40;
  v41 = swift_getWitnessTable();
  v77 = v56;
  v78 = v55;
  v79 = v54;
  v80 = &protocol witness table for MergePlatformItemsView<A>;
  v42 = swift_getOpaqueTypeConformance2();
  v63 = v41;
  v64 = v42;
  v43 = v49;
  v44 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v24, v43, v44);
  return (*(v48 + 8))(v24, v43);
}

uint64_t TextInputSuggestions.listContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v42 = MEMORY[0x1E69E73E0];
  v43 = v3;
  v44 = MEMORY[0x1E69E73F0];
  v45 = v4;
  v5 = type metadata accessor for List();
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  type metadata accessor for _EnvironmentKeyWritingModifier<Binding<EditMode>?>();
  v8 = type metadata accessor for ModifiedContent();
  v34 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v28 = &v28 - v9;
  type metadata accessor for _PreferenceTransformModifier<PlatformItemList.Key>(255, &lazy cache variable for type metadata for ListStyleWriter<InsetListStyle>, &type metadata for InsetListStyle, &protocol witness table for InsetListStyle, type metadata accessor for ListStyleWriter);
  v10 = type metadata accessor for ModifiedContent();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v29 = &v28 - v11;
  type metadata accessor for _PreferenceTransformModifier<PlatformItemList.Key>(255, &lazy cache variable for type metadata for StyleContextWriter<TextInputSuggestionsContext>, MEMORY[0x1E6980818], MEMORY[0x1E6980810], MEMORY[0x1E697F4C8]);
  v12 = type metadata accessor for ModifiedContent();
  v32 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v30 = &v28 - v16;
  TextInputSuggestions.baseList.getter(a1);
  swift_getKeyPath();
  v42 = 0;
  v43 = 0;
  LOBYTE(v44) = 0;
  WitnessTable = swift_getWitnessTable();
  v18 = v28;
  View.environment<A>(_:_:)();

  (*(v31 + 8))(v7, v5);
  v42 = 70;
  HasTextInput = lazy protocol witness table accessor for type ViewInputFlagModifier<HasTextInputSuggestions> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Binding<EditMode>?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Binding<EditMode>?>);
  v40 = WitnessTable;
  v41 = HasTextInput;
  v20 = swift_getWitnessTable();
  v21 = v29;
  View.listStyle<A>(_:)(&v42, v8, &type metadata for InsetListStyle, v20);
  (*(v34 + 8))(v18, v8);
  v38 = v20;
  v39 = &protocol witness table for ListStyleWriter<A>;
  v22 = swift_getWitnessTable();
  View.styleContext<A>(_:)();
  (*(v33 + 8))(v21, v10);
  v23 = lazy protocol witness table accessor for type StyleContextWriter<TextInputSuggestionsContext> and conformance StyleContextWriter<A>();
  v36 = v22;
  v37 = v23;
  v24 = swift_getWitnessTable();
  v25 = v30;
  static ViewBuilder.buildExpression<A>(_:)(v14, v12, v24);
  v26 = *(v32 + 8);
  v26(v14, v12);
  static ViewBuilder.buildExpression<A>(_:)(v25, v12, v24);
  return (v26)(v25, v12);
}

uint64_t TextInputSuggestions.baseList.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v18 = MEMORY[0x1E69E73E0];
  v19 = v2;
  v20 = MEMORY[0x1E69E73F0];
  v21 = v3;
  v4 = type metadata accessor for List();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  v15 = v2;
  v16 = v3;
  v17 = v1;
  List<>.init(content:)(partial apply for closure #1 in TextInputSuggestions.baseList.getter, v7);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v7, v4, WitnessTable);
  v12 = *(v5 + 8);
  v12(v7, v4);
  static ViewBuilder.buildExpression<A>(_:)(v10, v4, WitnessTable);
  return (v12)(v10, v4);
}

uint64_t List<>.init(content:)@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for List();
  *(a2 + *(v4 + 56)) = 0;
  v5 = a2 + *(v4 + 60);
  *v5 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  return a1(v4, v6, v7, v8);
}

uint64_t closure #1 in TextInputSuggestions.baseList.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TextInputSuggestions();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v9 + 36), a2, a3);
  static ViewBuilder.buildExpression<A>(_:)(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t View.listStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ListStyleWriter();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

uint64_t static InsetListStyle._makeViewList<A>(value:inputs:)()
{
  type metadata accessor for InterfaceIdiomPredicate<VisionInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<VisionInterfaceIdiom>, MEMORY[0x1E697FAC8], MEMORY[0x1E697FAC0], MEMORY[0x1E69801E0]);
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<PlainListStyleContext>, lazy protocol witness table accessor for type PlainListStyleContext and conformance PlainListStyleContext);
  type metadata accessor for SelectionManagerBox();
  lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>> and conformance <> ModifiedContent<A, B>();
  swift_getWitnessTable();
  type metadata accessor for PlainListBody();
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<InsetListStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<InsetListStyleContext>, lazy protocol witness table accessor for type InsetListStyleContext and conformance InsetListStyleContext);
  lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetListStyleContext>> and conformance <> ModifiedContent<A, B>();
  type metadata accessor for InsetList();
  type metadata accessor for StaticIf();
  type metadata accessor for _ListValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for InsetListStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  lazy protocol witness table accessor for type InterfaceIdiomPredicate<VisionInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return static View.makeDebuggableViewList(view:inputs:)();
}

void type metadata accessor for EnvironmentPropertyKey<ToolbarCustomizationBehaviorKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarCustomizationBehaviorKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarCustomizationBehaviorKey>);
    }
  }
}

void type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(void))
{
  if (!*a2)
  {
    type metadata accessor for StyleContextWriter<PlainListStyleContext>(255, a3, a4);
    v5 = type metadata accessor for ModifiedContent();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for StyleContextWriter<PlainListStyleContext>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for StyleContextWriter();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ToolbarCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ToolbarCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<ToolbarCustomizationBehaviorKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ToolbarCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<PlainListStyleContext>, lazy protocol witness table accessor for type PlainListStyleContext and conformance PlainListStyleContext);
    lazy protocol witness table accessor for type StyleContextWriter<PlainListStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<PlainListStyleContext> and conformance StyleContextWriter<A>, &lazy cache variable for type metadata for StyleContextWriter<PlainListStyleContext>, lazy protocol witness table accessor for type PlainListStyleContext and conformance PlainListStyleContext);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StyleContextWriter<PlainListStyleContext> and conformance StyleContextWriter<A>(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StyleContextWriter<PlainListStyleContext>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for PlainListBody()
{
  type metadata accessor for Binding();
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

unint64_t lazy protocol witness table accessor for type InsetListStyleContext and conformance InsetListStyleContext()
{
  result = lazy protocol witness table cache variable for type InsetListStyleContext and conformance InsetListStyleContext;
  if (!lazy protocol witness table cache variable for type InsetListStyleContext and conformance InsetListStyleContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InsetListStyleContext and conformance InsetListStyleContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InsetListStyleContext and conformance InsetListStyleContext;
  if (!lazy protocol witness table cache variable for type InsetListStyleContext and conformance InsetListStyleContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InsetListStyleContext and conformance InsetListStyleContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetListStyleContext>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetListStyleContext>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetListStyleContext>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<InsetListStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<InsetListStyleContext>, lazy protocol witness table accessor for type InsetListStyleContext and conformance InsetListStyleContext);
    lazy protocol witness table accessor for type StyleContextWriter<PlainListStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<InsetListStyleContext> and conformance StyleContextWriter<A>, &lazy cache variable for type metadata for StyleContextWriter<InsetListStyleContext>, lazy protocol witness table accessor for type InsetListStyleContext and conformance InsetListStyleContext);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetListStyleContext>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t ToString.value.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, a2);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for Rule.value.getter in conformance ToString<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ToString.value.getter(*v2, *(a1 + 16));
  *a2 = result;
  a2[1] = v5;
  return result;
}

id thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomRotorSearchPredicate) -> (@owned UIAccessibilityCustomRotorItemResult?)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t type metadata completion function for InsetList()
{
  type metadata accessor for Binding();
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

uint64_t closure #1 in UIColor.init(_:)(void *a1)
{
  v2 = [a1 _environmentWrapper];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for EnvironmentWrapper();
    if (swift_dynamicCastClass())
    {
      v4 = v3;
      dispatch thunk of ViewGraphHostEnvironmentWrapper.environment.getter();

      goto LABEL_12;
    }
  }

  EnvironmentValues.init()();
  v7 = v6;
  EnvironmentValues.configureForRoot()();
  if (one-time initialization token for configuredForPlatform != -1)
  {
    swift_once();
  }

  if (v6)
  {
    if (!static EnvironmentValues.configuredForPlatform || v6 != static EnvironmentValues.configuredForPlatform)
    {
      goto LABEL_11;
    }
  }

  else if (static EnvironmentValues.configuredForPlatform)
  {
    goto LABEL_11;
  }

  EnvironmentValues.plist.setter();
LABEL_11:
  EnvironmentValues._configureForPlatform(traitCollection:)(a1);
LABEL_12:
  v6 = v7;
  UITraitCollection.resolvedEnvironment(base:)(&v6, &v7);

  v6 = v7;
  dispatch thunk of AnyColorBox.resolveHDR(in:)();
  Color.ResolvedHDR.kitColor.getter();

  objc_opt_self();

  return swift_dynamicCastObjCClassUnconditional();
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarItemIsHiddenKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ToolbarItemIsHiddenKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ToolbarItemIsHiddenKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for _PreferenceWritingModifier<ToolbarItemViewHiddenKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarItemIsHiddenKey>, &type metadata for ToolbarItemIsHiddenKey, &protocol witness table for ToolbarItemIsHiddenKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ToolbarItemIsHiddenKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t type metadata completion function for InsetList.CollectionViewBody()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Binding();
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for InsetList.TableViewRoot()
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

uint64_t sub_18BF78FEC()
{
  type metadata accessor for InterfaceIdiomPredicate<VisionInterfaceIdiom>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  type metadata accessor for InsetList.CollectionViewBody();
  type metadata accessor for InsetList.TableViewRoot();
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for StaticIf();
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarTransitionIdentifier>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarTransitionIdentifier>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarTransitionIdentifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarTransitionIdentifier> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarTransitionIdentifier> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarTransitionIdentifier> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarTransitionIdentifier>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarTransitionIdentifier> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarMatchedTransitionIdentifier>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarMatchedTransitionIdentifier>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarMatchedTransitionIdentifier>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarMatchedTransitionIdentifier> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, void (*a2)(uint64_t))
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

double static DynamicHiddenModifier._makeView(modifier:inputs:body:)@<D0>(unsigned int *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, double *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *(a2 + 14);
  v16 = *(a2 + 1);
  v17 = *(a2 + 3);
  v9 = a2[5];
  v10 = a2[6];
  v15 = v7;
  v18 = v9;
  v19 = v10;
  v20 = v8;
  v21 = *(a2 + 60);
  v22 = *(a2 + 76);
  a3(&v23);
  swift_beginAccess();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  swift_endAccess();

  lazy protocol witness table accessor for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey();
  PropertyList.subscript.getter();
  if (v7)
  {
    v11 = v16;
    v16 = *(a2 + 1);
    v17 = *(a2 + 3);
    v12 = a2[5];
    v15 = v7;
    v18 = v12;
    v19 = v10;
    v20 = v8;
    v21 = *(a2 + 60);
    v22 = *(a2 + 76);
    if ((*(v11 + 8))(&v15, v7, v11))
    {
      v16 = *(a2 + 1);
      v17 = *(a2 + 3);
      v13 = a2[5];
      v15 = v7;
      v18 = v13;
      v19 = v10;
      v20 = v8;
      v21 = *(a2 + 60);
      v22 = *(a2 + 76);
      swift_beginAccess();
      (*(v11 + 16))(&v15, v6, &v23, v7, v11);
      swift_endAccess();
    }
  }

  *a4 = v23;
  result = v24;
  a4[1] = v24;
  return result;
}

uint64_t specialized implicit closure #1 in transformPreference #1 <A>(_:) in static DynamicHiddenModifier._makeView(modifier:inputs:body:)()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)(0, &lazy cache variable for type metadata for (_:));
  type metadata accessor for DynamicHiddenModifier.DynamicTransform<HostPreferencesKey>(0, &lazy cache variable for type metadata for DynamicHiddenModifier.DynamicTransform<DisplayList.Key>);
  lazy protocol witness table accessor for type DynamicHiddenModifier.DynamicTransform<HostPreferencesKey> and conformance DynamicHiddenModifier.DynamicTransform<A>(&lazy protocol witness table cache variable for type DynamicHiddenModifier.DynamicTransform<DisplayList.Key> and conformance DynamicHiddenModifier.DynamicTransform<A>, &lazy cache variable for type metadata for DynamicHiddenModifier.DynamicTransform<DisplayList.Key>);
  return Attribute.init<A>(body:value:flags:update:)();
}

{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  type metadata accessor for DynamicHiddenModifier.DynamicTransform<HostPreferencesKey>(0, &lazy cache variable for type metadata for DynamicHiddenModifier.DynamicTransform<ViewRespondersKey>);
  lazy protocol witness table accessor for type DynamicHiddenModifier.DynamicTransform<HostPreferencesKey> and conformance DynamicHiddenModifier.DynamicTransform<A>(&lazy protocol witness table cache variable for type DynamicHiddenModifier.DynamicTransform<ViewRespondersKey> and conformance DynamicHiddenModifier.DynamicTransform<A>, &lazy cache variable for type metadata for DynamicHiddenModifier.DynamicTransform<ViewRespondersKey>);
  return Attribute.init<A>(body:value:flags:update:)();
}

{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)(0, &lazy cache variable for type metadata for (_:));
  type metadata accessor for DynamicHiddenModifier.DynamicTransform<HostPreferencesKey>(0, &lazy cache variable for type metadata for DynamicHiddenModifier.DynamicTransform<AccessibilityNodesKey>);
  lazy protocol witness table accessor for type DynamicHiddenModifier.DynamicTransform<HostPreferencesKey> and conformance DynamicHiddenModifier.DynamicTransform<A>(&lazy protocol witness table cache variable for type DynamicHiddenModifier.DynamicTransform<AccessibilityNodesKey> and conformance DynamicHiddenModifier.DynamicTransform<A>, &lazy cache variable for type metadata for DynamicHiddenModifier.DynamicTransform<AccessibilityNodesKey>);
  return Attribute.init<A>(body:value:flags:update:)();
}

{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)(0, &lazy cache variable for type metadata for (_:));
  type metadata accessor for DynamicHiddenModifier.DynamicTransform<HostPreferencesKey>(0, &lazy cache variable for type metadata for DynamicHiddenModifier.DynamicTransform<HostPreferencesKey>);
  lazy protocol witness table accessor for type DynamicHiddenModifier.DynamicTransform<HostPreferencesKey> and conformance DynamicHiddenModifier.DynamicTransform<A>(&lazy protocol witness table cache variable for type DynamicHiddenModifier.DynamicTransform<HostPreferencesKey> and conformance DynamicHiddenModifier.DynamicTransform<A>, &lazy cache variable for type metadata for DynamicHiddenModifier.DynamicTransform<HostPreferencesKey>);
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t partial apply for specialized implicit closure #1 in transformPreference #1 <A>(_:) in static DynamicHiddenModifier._makeView(modifier:inputs:body:)()
{
  return specialized implicit closure #1 in transformPreference #1 <A>(_:) in static DynamicHiddenModifier._makeView(modifier:inputs:body:)();
}

{
  return specialized implicit closure #1 in transformPreference #1 <A>(_:) in static DynamicHiddenModifier._makeView(modifier:inputs:body:)();
}

{
  return specialized implicit closure #1 in transformPreference #1 <A>(_:) in static DynamicHiddenModifier._makeView(modifier:inputs:body:)();
}

{
  return specialized implicit closure #1 in transformPreference #1 <A>(_:) in static DynamicHiddenModifier._makeView(modifier:inputs:body:)();
}

void type metadata accessor for DynamicHiddenModifier.DynamicTransform<HostPreferencesKey>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for DynamicHiddenModifier.DynamicTransform();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t outlined init with copy of MatchedTransitionIdentifier?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for MatchedTransitionIdentifier?);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type DynamicHiddenModifier.DynamicTransform<HostPreferencesKey> and conformance DynamicHiddenModifier.DynamicTransform<A>(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DynamicHiddenModifier.DynamicTransform<HostPreferencesKey>(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void storeEnumTagSinglePayload for List(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = *(*(a4 + 24) - 8);
  v11 = *(v10 + 84);
  if (v11 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = ((*(v7 + 80) & 0xF8) + 23) & ~(*(v7 + 80) & 0xF8) & 0x1F8;
  if (v8)
  {
    v14 = *(*(v6 - 8) + 64);
  }

  else
  {
    v14 = v9 + 1;
  }

  if (v14 > v9)
  {
    v9 = v14;
  }

  if (v9 <= 8)
  {
    v9 = 8;
  }

  v15 = v9 + v13 + 1;
  v16 = *(v10 + 80);
  v17 = ((((*(*(*(a4 + 24) - 8) + 64) + ((v15 + v16) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v12 >= a3)
  {
    v21 = 0;
    if (v12 >= a2)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v18 = (a3 - v12 + 255) >> 8;
    if (v17 <= 3)
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

    if (v12 >= a2)
    {
LABEL_24:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *&a1[v17] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_39;
        }

        *&a1[v17] = 0;
      }

      else if (v21)
      {
        a1[v17] = 0;
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
      if (v11 > 0x7FFFFFFE)
      {
        v24 = *(v10 + 56);
        v25 = &a1[v15 + v16] & ~v16;

        v24(v25);
      }

      else if (a2 > 0x7FFFFFFE)
      {
        if (v15 <= 3)
        {
          v26 = ~(-1 << (8 * v15));
        }

        else
        {
          v26 = -1;
        }

        if (v15)
        {
          v27 = v26 & (a2 - 0x7FFFFFFF);
          if (v15 <= 3)
          {
            v28 = v15;
          }

          else
          {
            v28 = 4;
          }

          bzero(a1, v15);
          if (v28 > 2)
          {
            if (v28 == 3)
            {
              *a1 = v27;
              a1[2] = BYTE2(v27);
            }

            else
            {
              *a1 = v27;
            }
          }

          else if (v28 == 1)
          {
            *a1 = v27;
          }

          else
          {
            *a1 = v27;
          }
        }
      }

      else
      {
        *((a1 + 15) & 0xFFFFFFFFFFFFFFF8) = a2;
      }

      return;
    }
  }

  v22 = ~v12 + a2;
  bzero(a1, v17);
  if (v17 <= 3)
  {
    v23 = (v22 >> 8) + 1;
  }

  else
  {
    v23 = 1;
  }

  if (v17 <= 3)
  {
    *a1 = v22;
    if (v21 > 1)
    {
LABEL_34:
      if (v21 == 2)
      {
        *&a1[v17] = v23;
      }

      else
      {
        *&a1[v17] = v23;
      }

      return;
    }
  }

  else
  {
    *a1 = v22;
    if (v21 > 1)
    {
      goto LABEL_34;
    }
  }

  if (v21)
  {
    a1[v17] = v23;
  }
}

unint64_t lazy protocol witness table accessor for type CollapsedSplitNavigationStrategy_Phone and conformance CollapsedSplitNavigationStrategy_Phone()
{
  result = lazy protocol witness table cache variable for type CollapsedSplitNavigationStrategy_Phone and conformance CollapsedSplitNavigationStrategy_Phone;
  if (!lazy protocol witness table cache variable for type CollapsedSplitNavigationStrategy_Phone and conformance CollapsedSplitNavigationStrategy_Phone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollapsedSplitNavigationStrategy_Phone and conformance CollapsedSplitNavigationStrategy_Phone);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for List(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(*(a3 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v4 + 80);
  if (*(v4 + 84))
  {
    v10 = *(v4 + 64);
  }

  else
  {
    v10 = v5 + 1;
  }

  if (v10 > v5)
  {
    v5 = v10;
  }

  v11 = *(v6 + 80);
  if (v5 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v12 + (((v9 & 0xF8) + 23) & ~(v9 & 0xF8) & 0x1F8) + v11 + 1;
  if (v8 >= a2)
  {
    goto LABEL_36;
  }

  v14 = ((((*(*(*(a3 + 24) - 8) + 64) + (v13 & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  v15 = (a2 - v8 + 255) >> 8;
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
        goto LABEL_36;
      }
    }

    else
    {
      v19 = *&a1[v14];
      if (!v19)
      {
        goto LABEL_36;
      }
    }

LABEL_32:
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

    return v8 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = a1[v14];
    if (a1[v14])
    {
      goto LABEL_32;
    }
  }

LABEL_36:
  if (v7 > 0x7FFFFFFE)
  {
    return (*(v6 + 48))(&a1[v13] & ~v11);
  }

  v23 = *((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v23 >= 0xFFFFFFFF)
  {
    LODWORD(v23) = -1;
  }

  if ((v23 + 1) >= 2)
  {
    return v23;
  }

  else
  {
    return 0;
  }
}

uint64_t NavigationSplitCoordinator.allRoots.getter()
{
  v1 = v0;
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v11[3] = *(v0 + 256);
  v11[4] = v2;
  v12 = v3;
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility, MEMORY[0x1E6981948]);
  v5 = v4;

  MEMORY[0x18D00ACC0](v11, v5);
  v6 = LOWORD(v11[0]) >> 14;
  if (v6 < 2 || v6 != 2 && LOWORD(v11[0]) == 49152)
  {

    _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_VariadicView_Children>, MEMORY[0x1E697FFD0], MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_18CD63410;
    swift_beginAccess();
    outlined init with copy of _VariadicView_Children(v1 + 16, v7 + 32);
    swift_beginAccess();
    v8 = v1 + 144;
    v9 = v7 + 96;
  }

  else
  {

    _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_VariadicView_Children>, MEMORY[0x1E697FFD0], MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_18CDD3F30;
    swift_beginAccess();
    outlined init with copy of _VariadicView_Children(v1 + 16, v7 + 32);
    swift_beginAccess();
    outlined init with copy of _VariadicView_Children(v1 + 80, v7 + 96);
    swift_beginAccess();
    v8 = v1 + 144;
    v9 = v7 + 160;
  }

  outlined init with copy of _VariadicView_Children(v8, v9);
  return v7;
}

uint64_t NavigationState.mergedStackContent(for:columnCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(v3 + 24);
  v9 = *(v4 + 88);
  v30 = *(v4 + 152);
  v10 = *(v4 + 136);
  v28 = *(v4 + 120);
  v29 = v10;
  v11 = *(v4 + 104);
  v26 = v9;
  v27 = v11;
  v12 = &unk_1EFF8C6C0;
  if (a2 == 2)
  {
    v12 = &unk_1EFF8C698;
  }

  v13 = *v12;
  if (*v12)
  {
    if (a2 == 2)
    {
      v14 = &unk_1EFF8C6A8;
    }

    else
    {
      v14 = &unk_1EFF8C6D0;
    }

    v15 = MEMORY[0x1E69E7CC0];
    do
    {
      v17 = *v14++;
      v16 = v17;
      if (*(v8 + 16))
      {
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(a1, v16, a2);
        if (v19)
        {
          outlined init with copy of NavigationColumnState(*(v8 + 56) + 360 * v18, __src);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
          }

          v21 = *(v15 + 2);
          v20 = *(v15 + 3);
          if (v21 >= v20 >> 1)
          {
            v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v15);
          }

          *(v15 + 2) = v21 + 1;
          memcpy(&v15[360 * v21 + 32], __src, 0x163uLL);
        }
      }

      --v13;
    }

    while (v13);
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  if (*(v15 + 2) == a2)
  {
    *a3 = v15;
    v22 = v26;
    *(a3 + 24) = v27;
    v23 = v29;
    *(a3 + 40) = v28;
    *(a3 + 56) = v23;
    *(a3 + 72) = v30;
    *(a3 + 8) = v22;
    *(a3 + 448) = 2;
    return outlined init with copy of NavigationState.Base?(&v26, __src, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);
  }

  else
  {
    *(a3 + 416) = 0u;
    *(a3 + 432) = 0u;
    *(a3 + 384) = 0u;
    *(a3 + 400) = 0u;
    *(a3 + 352) = 0u;
    *(a3 + 368) = 0u;
    *(a3 + 320) = 0u;
    *(a3 + 336) = 0u;
    *(a3 + 288) = 0u;
    *(a3 + 304) = 0u;
    *(a3 + 256) = 0u;
    *(a3 + 272) = 0u;
    *(a3 + 224) = 0u;
    *(a3 + 240) = 0u;
    *(a3 + 192) = 0u;
    *(a3 + 208) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 448) = -1;
  }
}

void *UISplitViewControllerVisibilityEngine.visibility.getter@<X0>(__int16 *a1@<X8>)
{
  if (v1[6] > 1)
  {
    v2 = 512;
  }

  else
  {
    v2 = *(v1 + 9);
    if ((v2 & 0xFF00) == 0x200)
    {
      v3 = a1;
      v4 = v1[1];
      v5 = *(v1 + 8);
      v11 = *v1;
      v12 = v4;
      v13 = v5;
      type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>);
      result = MEMORY[0x18D00ACC0](&v10);
      v7 = v10 >> 14;
      if (v7 == 2)
      {
        v8 = v10 & 0x1FF;
      }

      else
      {
        v8 = 512;
      }

      v9 = 0x10200uLL >> (16 * v10);
      if (v7)
      {
        LOWORD(v9) = v10 & 0x1FF;
      }

      if (v10 >> 14 <= 1u)
      {
        v2 = v9;
      }

      else
      {
        v2 = v8;
      }

      a1 = v3;
    }
  }

  *a1 = v2;
  return result;
}

_BYTE *partial apply for specialized closure #1 in DynamicHiddenModifier.DynamicTransform.value.getter()
{
  return specialized closure #1 in DynamicHiddenModifier.DynamicTransform.value.getter();
}

{
  return specialized closure #1 in DynamicHiddenModifier.DynamicTransform.value.getter();
}

_BYTE *specialized closure #1 in DynamicHiddenModifier.DynamicTransform.value.getter()
{
  result = AGGraphGetValue();
  if (*result == 1)
  {
    result = AGGraphGetValue();
    if ((result[8] & 8) == 0)
    {

      return PreferenceKeys.init()();
    }
  }

  return result;
}

{
  result = AGGraphGetValue();
  if (*result == 1)
  {
    result = AGGraphGetValue();
    if ((result[8] & 0x10) == 0)
    {

      return MEMORY[0x1EEDDD490](v1);
    }
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance FocusStateBindingModifier<A>.ListTransform@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = FocusStateBindingModifier.ListTransform.value.getter();
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v4;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@inout AccessibilityLargeContentViewTree) -> ();
  a1[1] = result;
  return result;
}

uint64_t sub_18BF7A8B8()
{

  return swift_deallocObject();
}

void **(*FocusStateBindingModifier.ListTransform.value.getter())(void **a1)
{
  v0 = *AGGraphGetValue();
  *(swift_allocObject() + 16) = v0;

  return partial apply for closure #1 in FocusStateBindingModifier.ListTransform.value.getter;
}

uint64_t sub_18BF7A968()
{

  return swift_deallocObject();
}

uint64_t FocusStateBindingModifier.ListItemFilter.updateValue()(uint64_t a1)
{
  v2 = v1;
  v75[8] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v60 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v62 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  v68 = type metadata accessor for FocusState.Binding();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v50 - v7;
  v8 = type metadata accessor for FocusStateBindingModifier();
  v69 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v50 - v11;
  v12 = *v1;
  v13 = *(v1 + 1);
  v14 = v1[4];
  v15 = *(v1 + 28);
  v59 = v1[5];
  v16 = v14;
  AGGraphGetValue();
  v65 = v17;
  type metadata accessor for FocusItem?(0, &lazy cache variable for type metadata for [Namespace.ID], MEMORY[0x1E6981EA0], MEMORY[0x1E69E62F8]);
  Value = AGGraphGetValue();
  v56 = v19;
  v63 = *Value;

  v64 = v13;
  v58 = v3;
  v66 = v6;
  FocusStateBindingModifier.ListItemFilter.focusItem.getter(v16, v75);
  if (v75[5] == 1 && v75[6] == 1)
  {
    outlined destroy of FocusItem??(v75);
    if ((v15 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  outlined init with take of FocusItem?(v75, v71);
  if (v72 || v73 != 1)
  {
    if (swift_weakLoadStrong())
    {
      v20 = dispatch thunk of ResponderNode.isDescendant(of:)();

      outlined destroy of FocusItem(v71);
      if (v15 == (v20 & 1))
      {
        goto LABEL_15;
      }

LABEL_14:
      *(v2 + 28) = v20 & 1;
      LOBYTE(v15) = v20;
      goto LABEL_18;
    }

    outlined destroy of FocusItem(v71);
    if (v15)
    {
LABEL_13:
      v20 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    outlined destroy of FocusItem?(v71, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]);
    if (v15)
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  if (((v65 | v56) & 1) == 0 && AGGraphGetOutputValue())
  {
  }

LABEL_18:
  LODWORD(v56) = v15 & 1;
  v22 = AGGraphGetValue();
  v23 = v69;
  v24 = *(v69 + 16);
  v25 = v61;
  v24(v61, v22, v8);
  v26 = v24;
  v27 = *(v67 + 16);
  v54 = v67 + 16;
  v55 = v27;
  v27(v70, v25, v68);
  v65 = *(v23 + 8);
  v69 = v23 + 8;
  v65(v25, v8);
  v52 = v12;
  v28 = AGGraphGetValue();
  v29 = v57;
  v24(v57, v28, v8);
  v53 = v23 + 16;
  v30 = *(v8 + 36);
  v51 = *(v60 + 2);
  v31 = v62;
  v32 = v58;
  v51(v62, &v29[v30], v58);
  v33 = v29;
  v34 = v65;
  v65(v33, v8);
  v60 = FocusStateBindingUpdateAction.init<A>(binding:value:)(v70, v31, v32, v66);
  v57 = v35;
  v36 = AGGraphGetValue();
  v24(v25, v36, v8);
  v51(v31, &v25[*(v8 + 36)], v32);
  v34(v25, v8);
  type metadata accessor for WeakBox<FocusBridge>(0, &lazy cache variable for type metadata for FocusBridge?, type metadata accessor for FocusBridge, MEMORY[0x1E69E6720]);
  v37 = v64;

  v38 = AGGraphGetValue();
  v39 = specialized FocusStoreUpdateAction.init<A>(value:responder:bridge:focusScopes:)(v31, v37, *v38, v63, v32, v66);
  v41 = v40;
  DisplayList.Version.init(forUpdate:)();
  v42 = v67;
  v43 = v75[0];
  v44 = AGGraphGetValue();
  v26(v25, v44, v8);
  v45 = v70;
  v46 = v68;
  v55(v70, v25, v68);
  v65(v25, v8);
  v47 = v45;
  v48 = FocusState.Binding.propertyID.getter();
  (*(v42 + 8))(v47, v46);
  v71[0] = v43;
  v71[1] = v48;
  v71[2] = v60;
  v71[3] = v57;
  v71[4] = v39;
  v72 = v41;
  swift_weakInit();

  outlined copy of AppIntentExecutor?(v39);

  swift_weakInit();
  v74 = v56;
  type metadata accessor for FocusItem?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<FocusStoreList.Item>, &type metadata for FocusStoreList.Item, MEMORY[0x1E69E6F90]);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_18CD63400;
  outlined init with take of FocusStoreList.Item(v71, v49 + 32);
  v71[0] = v49;
  AGGraphSetOutputValue();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v39);
}

uint64_t _NavigationSplitReader.UpdateRequiredCompactColumn.updateValue()()
{
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  outlined init with copy of NavigationAuthority?(Value, &v8, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  if (v9 == 1)
  {
    return outlined destroy of _VariadicView_Children.Element?(&v8, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  }

  outlined init with take of NavigationAuthority(&v8, v18);
  type metadata accessor for Binding<NavigationSplitViewColumn>?(0, &lazy cache variable for type metadata for Binding<NavigationSplitViewColumn>?, &lazy cache variable for type metadata for Binding<NavigationSplitViewColumn>, &type metadata for NavigationSplitViewColumn, MEMORY[0x1E69E6720]);
  v3 = AGGraphGetValue();
  v4 = *(v3 + 8);
  if (!v4)
  {
    return outlined destroy of NavigationAuthority(v18);
  }

  v5 = *v3;
  v6 = *(v3 + 16);

  if (*(v0 + 28) != *AGGraphGetValue() >> 1)
  {
    *(v0 + 28) = *AGGraphGetValue() >> 1;
    *(v0 + 16) = 0xFFFFFFFFLL;
    *(v0 + 24) = 0;
  }

  if (dispatch thunk of AnyLocation.update()())
  {
    v7 = v8;
    if (UpdateCycleDetector.dispatch(label:isDebug:)())
    {
      v8 = v5;
      v9 = v4;
      v10 = v6;
      v11 = v7;
      v12 = 5;
      v13 = 0u;
      v14 = 0u;
      v15 = xmmword_18CD68310;
      v16 = 0;
      v17 = 0;
      NavigationAuthority.enqueueRequest(_:)(&v8);
      outlined destroy of NavigationRequest(&v8);
      return outlined destroy of NavigationAuthority(v18);
    }
  }

  outlined destroy of NavigationAuthority(v18);
  return outlined consume of Binding<NavigationSplitViewColumn>?(v5, v4);
}

void FocusStateBindingModifier.ListItemFilter.focusItem.getter(int a1@<W2>, uint64_t a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 40) = vdupq_n_s64(1uLL);
    *(a2 + 56) = 0;
  }

  else
  {
    v3 = MEMORY[0x1E69E6720];
    type metadata accessor for FocusItem?(0, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]);
    Value = AGGraphGetValue();
    outlined init with copy of FocusItem?(Value, a2, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, v3);
  }
}

void protocol witness for static _ViewTraitKey.defaultValue.getter in conformance ShouldExpandAllTraitKey(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t _NavigationSplitReader.UpdatePreferredCompactColumn.updateValue()()
{
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  outlined init with copy of NavigationAuthority?(Value, &v8, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  if (v9 == 1)
  {
    return outlined destroy of _VariadicView_Children.Element?(&v8, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  }

  outlined init with take of NavigationAuthority(&v8, v18);
  if (*(v0 + 28) != *AGGraphGetValue() >> 1)
  {
    *(v0 + 28) = *AGGraphGetValue() >> 1;
    *(v0 + 16) = 0xFFFFFFFFLL;
    *(v0 + 24) = 0;
  }

  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for Binding<NavigationSplitViewColumn>, &type metadata for NavigationSplitViewColumn, MEMORY[0x1E6981948]);
  AGGraphGetValue();

  v3 = dispatch thunk of AnyLocation.update()();

  if (v3)
  {
    v4 = v8;
    if (UpdateCycleDetector.dispatch(label:isDebug:)())
    {
      v5 = AGGraphGetValue();
      v6 = *(v5 + 8);
      v7 = *(v5 + 16);
      v8 = *v5;
      v9 = v6;
      v10 = v7;
      v11 = v4;
      v12 = 4;
      v14 = 0u;
      v13 = 0u;
      v15 = xmmword_18CD68310;
      v16 = 0;
      v17 = 0;

      NavigationAuthority.enqueueRequest(_:)(&v8);
      outlined destroy of NavigationRequest(&v8);
    }
  }

  return outlined destroy of NavigationAuthority(v18);
}

uint64_t (*specialized FocusStoreUpdateAction.init<A>(value:responder:bridge:focusScopes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1)
{
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = *(a5 - 8);
  v13 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 2) = a5;
  *(v15 + 3) = a6;
  *(v15 + 4) = v10;
  *(v15 + 5) = v11;
  (*(v12 + 32))(&v15[v13], a1, a5);
  *&v15[v14] = a4;
  return partial apply for closure #1 in FocusStoreUpdateAction.init<A>(value:responder:bridge:focusScopes:);
}

uint64_t sub_18BF7B83C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18BF7B874()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t destroy for FocusState.Binding(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 15;

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = ((v3 & 0xFFFFFFFFFFFFFFF8) + *(v4 + 80) + 8) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t initializeWithTake for FocusStoreList.Item(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  swift_weakTakeInit();
  swift_weakTakeInit();
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

void **closure #1 in FocusStateBindingModifier.ListTransform.value.getter(void **result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = a2 + 32;
    v5 = *result;
    do
    {
      v7 = v5[2];
      outlined init with copy of FocusStoreList.Item(v4, v10);
      outlined init with copy of FocusItem?(v10, v9, &lazy cache variable for type metadata for CollectionOfOne<FocusStoreList.Item>, &type metadata for FocusStoreList.Item, MEMORY[0x1E69E6BC0]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v7 >= v5[3] >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v7 + 1, 1, v5);
      }

      swift_arrayDestroy();
      if ((v5[2] - v7) > 1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      else
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      ++v5[2];
      outlined init with copy of FocusStoreList.Item(v9, &v5[9 * v7 + 4]);
      v6 = MEMORY[0x1E69E6BC0];
      outlined destroy of FocusItem?(v9, &lazy cache variable for type metadata for CollectionOfOne<FocusStoreList.Item>, &type metadata for FocusStoreList.Item, MEMORY[0x1E69E6BC0]);
      result = outlined destroy of FocusItem?(v10, &lazy cache variable for type metadata for CollectionOfOne<FocusStoreList.Item>, &type metadata for FocusStoreList.Item, v6);
      v4 += 72;
      --v2;
    }

    while (v2);
    *v3 = v5;
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance MakeRepresentable<A, B>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0x100000000;
  if (!*(v2 + 4))
  {
    v3 = 0;
  }

  return MakeRepresentable.value.getter(v3 | *v2, *(v2 + 1), v2[4], a1[2], a1[3], a1[4], a1[5], a2);
}

uint64_t MakeRepresentable.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v39 = a3;
  v38 = a2;
  v14 = type metadata accessor for Binding();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v32 = &v31 - v16;
  v33 = type metadata accessor for Optional();
  v17 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v19 = &v31 - v18;
  v34 = a4;
  v35 = a6;
  v40 = a4;
  v41 = a5;
  v42 = a6;
  v43 = a7;
  v36 = a7;
  type metadata accessor for UICollectionViewListCoordinator();
  v37 = a1;
  Value = AGGraphGetValue();
  v21 = *Value;
  v22 = *((*MEMORY[0x1E69E7D40] & **Value) + 0x110);
  swift_beginAccess();
  v23 = 1;
  if (!(*(v15 + 48))(&v21[v22], 1, v14))
  {
    v24 = v32;
    (*(v15 + 16))(v32, &v21[v22], v14);
    MEMORY[0x18D00ACC0](v14);
    (*(v15 + 8))(v24, v14);
    v23 = 0;
  }

  (*(*(a5 - 8) + 56))(v19, v23, 1, a5);
  (*(v17 + 8))(v19, v33);
  v25 = HIDWORD(v37) & 1;
  v40 = v34;
  v41 = a5;
  v42 = v35;
  v43 = v36;
  type metadata accessor for UICollectionViewListCoordinator();
  v26 = *AGGraphGetValue();
  v27 = AGCreateWeakAttribute();
  v28 = AGCreateWeakAttribute();
  v29 = AGCreateWeakAttribute();
  result = AGCreateWeakAttribute();
  *a8 = v26;
  *(a8 + 8) = v25;
  *(a8 + 9) = v40;
  *(a8 + 11) = BYTE2(v40);
  *(a8 + 12) = v27;
  *(a8 + 20) = v28;
  *(a8 + 28) = v29;
  *(a8 + 36) = result;
  return result;
}

Swift::Void __swiftcall UpdateCollectionViewListCoordinator.updateValue()()
{
  v2 = v1;
  v223 = *MEMORY[0x1E69E9840];
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v200 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v183 = AssociatedTypeWitness;
  v6 = type metadata accessor for CollectionViewListDataSource();
  v7 = type metadata accessor for Optional();
  v191 = *(v7 - 8);
  v192 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v176 = &v173 - v8;
  v175 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v174 = &v173 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Binding();
  v180 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v173 = &v173 - v12;
  v181 = v13;
  v14 = type metadata accessor for Optional();
  v194 = *(v14 - 8);
  v195 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v188 = &v173 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v178 = &v173 - v17;
  v198 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v173 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v184 = &v173 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v196 = &v173 - v24;
  v25 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v179 = &v173 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v173 - v29;
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for ViewList);
  Value = AGGraphGetValue();
  v33 = v32;
  outlined init with copy of _Benchmark(Value, v222);
  v199 = v2;
  v34 = AGGraphGetValue();
  v36 = v35;
  v187 = v26;
  v37 = *(v26 + 16);
  v189 = v30;
  v190 = v25;
  v177 = v37;
  v37(v30, v34, v25);
  WitnessTable = swift_getWitnessTable();
  v197 = v6;
  *&v207 = v6;
  v185 = v4;
  v186 = v3;
  *(&v207 + 1) = v4;
  *&v208 = WitnessTable;
  *(&v208 + 1) = v3;
  v39 = type metadata accessor for UICollectionViewListCoordinator();
  OutputValue = AGGraphGetOutputValue();
  v193 = v39;
  if (!OutputValue || (v33 & 1) != 0 || (v36 & 1) != 0)
  {
    v46 = v199;
    v47 = v200;
    v48 = *(v200 + 116);

    outlined init with copy of _Benchmark(v222, &v201);
    v49 = *(v46 + *(v47 + 120));
    *(&v215[1] + 1) = 0;
    *(&v216 + 1) = MEMORY[0x1E69E7CC0];
    v217 = MEMORY[0x1E69E7CC0];
    outlined init with copy of _Benchmark(&v201, &v213);
    *(&v215[0] + 1) = AGCreateWeakAttribute();
    *&v215[1] = v49;
    LOBYTE(v207) = 1;
    v50 = v49;
    v51 = MEMORY[0x18D0072D0](&v201, 0, &v207);
    if (v51)
    {
      *&v216 = v51;

      *(&v215[1] + 1) = 0;
    }

    else
    {
      v206 = 1;
      v205 = 1;
      SectionAccumulator.init(contentSubgraph:options:accumulationStrategy:)();
      v206 = 0;
      SectionAccumulator.formResult(from:listAttribute:)();
      v52 = v212;
      *&v216 = v211;

      outlined destroy of SectionAccumulator(&v207);

      *(&v215[1] + 1) = v52;
    }

    v53 = v198;
    v54 = v180;
    v55 = v178;
    ListSectionInfo.updateItemDerivedState()();
    __swift_destroy_boxed_opaque_existential_1(&v201);
    v220[0] = v215[0];
    v220[1] = v215[1];
    v220[2] = v216;
    v221 = v217;
    v218 = v213;
    v219 = v214;
    UpdateCollectionViewListCoordinator.selection.getter(v55);
    v56 = v181;
    if ((*(v54 + 48))(v55, 1, v181))
    {
      v57 = *(v194 + 8);
      v57(v55, v195);
      v58 = 0;
    }

    else
    {
      v59 = v173;
      (*(v54 + 16))(v173, v55, v56);
      v57 = *(v194 + 8);
      v57(v55, v195);
      v60 = v174;
      MEMORY[0x18D00ACC0](v56);
      (*(v54 + 8))(v59, v56);
      v61 = v185;
      v58 = (*(v186 + 72))(v185);
      (*(v175 + 8))(v60, v61);
    }

    outlined init with copy of ListSectionInfo(&v218, &v207);
    v62 = v179;
    v177(v179, v189, v190);
    v41 = v199;
    v63 = *AGGraphGetValue();
    v64 = *AGGraphGetValue();
    UpdateCollectionViewListCoordinator.environment.getter(&v213);
    v201 = v213;
    v65 = v184;
    CollectionViewListDataSource.init(sectionInfo:style:allowsMultipleSelection:minRowHeight:minHeaderHeight:environment:)(&v207, v62, v58 & 1, &v201, v184, v63, v64);
    if (*(&v220[1] + 1))
    {
      *&v207 = *(&v220[1] + 1);

      v66 = _ViewList_SublistSubgraphStorage.retain()();
    }

    else
    {
      v66 = 0;
    }

    *(v41 + v48) = v66;
    v67 = v53;
    v68 = *(v53 + 16);
    v69 = v196;
    v70 = v197;
    v68(v196, v65, v197);
    v71 = v193;
    v72 = AGGraphGetOutputValue();
    LODWORD(v183) = v72 != 0;
    if (v72)
    {
      (*(v67 + 8))(v65, v70);
    }

    else
    {
      v73 = v188;
      v74 = v200;
      UpdateCollectionViewListCoordinator.selection.getter(v188);
      UpdateCollectionViewListCoordinator.editMode.getter(&v207);
      v213 = v207;
      LOBYTE(v214) = v208;
      v75 = specialized UICollectionViewListCoordinator.__allocating_init(dataSource:selection:editMode:transaction:)(v69, v73, &v213, 1);
      v76 = (v57)(v73, v195);
      *&v207 = v75;
      MEMORY[0x1EEE9AC00](v76);
      *(&v173 - 2) = v74;
      *(&v173 - 1) = swift_getWitnessTable();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v207, partial apply for closure #1 in StatefulRule.value.setter, (&v173 - 4), v71, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v77);

      (*(v198 + 8))(v184, v70);
    }

    outlined destroy of ListSectionInfo(&v218);
  }

  else
  {
    v41 = v199;
    v42 = v176;
    (*(v191 + 16))(v176, v199 + *(v200 + 112), v192);
    v44 = v197;
    v43 = v198;
    if ((*(v198 + 48))(v42, 1, v197) == 1)
    {
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v45 = *(v43 + 32);
    v45(v20, v42, v44);
    *&v20[*(v44 + 52)] = *AGGraphGetValue();
    *&v20[*(v44 + 56)] = *AGGraphGetValue();
    v45(v196, v20, v44);
    LODWORD(v183) = 0;
  }

  v78 = AGGraphGetOutputValue();
  if (!v78)
  {
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v79 = MEMORY[0x1E69E7D40];
  v80 = (*v78 + *((*MEMORY[0x1E69E7D40] & **v78) + 0x120));
  swift_beginAccess();
  v81 = *v80;
  v218 = *(v80 + 8);
  v219 = *(v80 + 24);
  v220[0] = *(v80 + 40);
  *(v220 + 9) = *(v80 + 49);
  v82 = AGGraphGetValue();
  if (v81 == *v82 && (v207 = v218, v208 = v219, v209[0] = v220[0], *(v209 + 9) = *(v220 + 9), v213 = *(v82 + 8), v214 = *(v82 + 24), v215[0] = *(v82 + 40), *(v215 + 9) = *(v82 + 49), (MEMORY[0x18D006FC0](&v207, &v213) & 1) != 0))
  {
    v83 = 0;
  }

  else
  {
    v84 = AGGraphGetOutputValue();
    if (!v84)
    {
      __break(1u);
      goto LABEL_105;
    }

    v85 = *v84;
    v86 = AGGraphGetValue();
    v208 = *(v86 + 16);
    v209[0] = *(v86 + 32);
    v209[1] = *(v86 + 48);
    v210 = *(v86 + 64);
    v207 = *v86;
    v87 = v85 + *((*v79 & *v85) + 0x120);
    v83 = 1;
    swift_beginAccess();
    *(v87 + 1) = v208;
    *(v87 + 2) = v209[0];
    *(v87 + 3) = v209[1];
    v87[64] = v210;
    *v87 = v207;
  }

  v88 = AGGraphGetOutputValue();
  if (!v88)
  {
    goto LABEL_92;
  }

  v89 = *v88;
  v90 = v188;
  UpdateCollectionViewListCoordinator.selection.getter(v188);
  v91 = *((*v79 & *v89) + 0x110);
  swift_beginAccess();
  (*(v194 + 40))(&v89[v91], v90, v195);
  swift_endAccess();

  v92 = AGGraphGetOutputValue();
  if (!v92)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v93 = *v92;
  UpdateCollectionViewListCoordinator.editMode.getter(&v207);
  v94 = v208;
  v95 = v93 + *((*v79 & *v93) + 0x128);
  v96 = *v95;
  v97 = *(v95 + 1);
  *v95 = v207;
  v95[16] = v94;
  outlined consume of Binding<NavigationSplitViewColumn>?(v96, v97);

  v98 = AGGraphGetOutputValue();
  if (!v98)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v99 = *v98;
  v100 = AGGraphGetValue();
  v101 = *(v100 + 8);
  v102 = *(v100 + 9);
  v103 = v99 + *((*v79 & *v99) + 0xF0);
  *v103 = *v100;
  v103[8] = v101;
  v103[9] = v102;

  v104 = AGGraphGetOutputValue();
  if (!v104)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v105 = *v104;
  UpdateCollectionViewListCoordinator.appIntentsDataSourcePayloadProvider.getter(&v207);
  UICollectionViewListCoordinatorBase.appIntentsDataSourcePayloadProvider.setter(&v207);

  v106 = AGGraphGetOutputValue();
  if (!v106)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v107 = *v106 + *((*v79 & **v106) + 0x150);
  v108 = *v107;
  v109 = *(v107 + 8);
  _sSay7SwiftUI0A19UIAnySortComparatorVGMaTm_1(0, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  v110 = AGGraphGetValue();
  v111 = *(v110 + 8);
  if (v109)
  {
    if (*(v110 + 8))
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (v108 != *v110)
    {
      v111 = 1;
    }

    if ((v111 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v112 = AGGraphGetOutputValue();
  if (!v112)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v113 = *v112;
  v114 = AGGraphGetValue();
  v115 = *(v114 + 8);
  v116 = v113 + *((*v79 & *v113) + 0x150);
  *v116 = *v114;
  v116[8] = v115;

  v83 = 1;
LABEL_38:
  v117 = AGGraphGetOutputValue();
  if (!v117)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v118 = *v117 + *((*v79 & **v117) + 0x148);
  if (*(v118 + 9))
  {
    v119 = 1;
    v120 = 0.0;
  }

  else
  {
    v121 = *v118;
    if (*(v118 + 8))
    {
      v119 = *&v121 == 0;
      if (v121 == 0.0)
      {
        v120 = 0.0;
      }

      else
      {
        v120 = 12.0;
      }
    }

    else
    {
      v119 = 0;
      v120 = *v118;
    }
  }

  _sSay7SwiftUI0A19UIAnySortComparatorVGMaTm_1(0, &lazy cache variable for type metadata for ListSectionSpacing?, &type metadata for ListSectionSpacing, MEMORY[0x1E69E6720]);
  v122 = AGGraphGetValue();
  if (*(v122 + 9))
  {
    if (v119)
    {
      goto LABEL_61;
    }

    goto LABEL_59;
  }

  v123 = *v122;
  if (*(v122 + 8))
  {
    v124 = *&v123 == 0;
    v125 = 12.0;
    if (v123 == 0.0)
    {
      v125 = 0.0;
    }

    if (v119)
    {
      if (v123 == 0.0)
      {
        goto LABEL_61;
      }

      goto LABEL_59;
    }

LABEL_57:
    if (!v124 && v120 == v125)
    {
      goto LABEL_61;
    }

    goto LABEL_59;
  }

  if (!v119)
  {
    v124 = 0;
    v125 = *v122;
    goto LABEL_57;
  }

LABEL_59:
  v126 = AGGraphGetOutputValue();
  if (!v126)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v127 = *v126;
  v128 = AGGraphGetValue();
  v129 = *(v128 + 8);
  v130 = *(v128 + 9);
  v131 = v127 + *((*v79 & *v127) + 0x148);
  *v131 = *v128;
  v131[8] = v129;
  v131[9] = v130;

  v83 = 1;
LABEL_61:
  v132 = AGGraphGetOutputValue();
  if (!v132)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v133 = *v132 + *((*v79 & **v132) + 0x158);
  v134 = *v133;
  v135 = *(v133 + 8);
  v136 = AGGraphGetValue();
  v137 = *(v136 + 8);
  if (v135)
  {
    if (*(v136 + 8))
    {
      goto LABEL_70;
    }
  }

  else
  {
    if (v134 != *v136)
    {
      v137 = 1;
    }

    if ((v137 & 1) == 0)
    {
LABEL_70:
      v143 = AGGraphGetOutputValue();
      if (v143)
      {
        v144 = *v143;
        *(v144 + *((*v79 & *v144) + 0x138)) = *AGGraphGetValue();

        if (AGGraphGetOutputValue())
        {
          UICollectionViewListCoordinatorBase.selectionStorage.setter(*(v41 + 52), *(v41 + 60), *(v41 + 68), *(v41 + 76));
          v145 = AGGraphGetOutputValue();
          if (v145)
          {
            v146 = *v145;
            *(v146 + *((*v79 & *v146) + 0x160)) = *AGGraphGetValue();

            v147 = AGGraphGetOutputValue();
            if (v147)
            {
              v195 = v83;
              v148 = *v147;
              *(v148 + *((*v79 & *v148) + 0x168)) = *AGGraphGetValue();

              v149 = AGGraphGetOutputValue();
              if (v149)
              {
                v150 = (*v149 + *((*v79 & **v149) + 0x100));
                v151 = *v150;
                v152 = v150[1];
                v154 = v150[2];
                v153 = v150[3];
                v156 = v150[4];
                v155 = v150[5];
                v157 = v150[6];
                outlined copy of ResolvedSubviewsSizingOptions?(*v150, v152, v154);
                UpdateCollectionViewListCoordinator.subviewSizingOptions.getter(&v207);
                v158 = v208;
                if (v154 >> 1 == 4294967293)
                {
                  v181 = *(&v209[0] + 1);
                  AssociatedConformanceWitness = *&v209[1];
                  v184 = *(&v207 + 1);
                  v159 = v207;
                  v188 = *(&v208 + 1);
                  v194 = *&v209[0];
                  if ((v208 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFALL)
                  {
                    outlined consume of ResolvedSubviewsSizingOptions?(v151, v152, v154);
                    v161 = v198;
                    v160 = v199;
                    v163 = v196;
                    v162 = v197;
LABEL_83:
                    Strong = swift_unknownObjectWeakLoadStrong();
                    if (!Strong)
                    {
LABEL_88:
                      (*(v187 + 8))(v189, v190);
                      __swift_destroy_boxed_opaque_existential_1(v222);
                      v171 = *(v200 + 112);
                      (*(v191 + 8))(v160 + v171, v192);
                      (*(v161 + 32))(v160 + v171, v163, v162);
                      (*(v161 + 56))(v160 + v171, 0, 1, v162);
                      return;
                    }

                    v167 = Strong;
                    if (v195)
                    {
                      v168 = [Strong collectionViewLayout];
                      [v168 invalidateLayout];
                    }

                    v169 = AGGraphGetOutputValue();
                    if (v169)
                    {
                      v170 = *v169;
                      AGGraphClearUpdate();
                      closure #1 in UpdateCollectionViewListCoordinator.updateValue()(v160, &v207);
                      AGGraphSetUpdate();
                      UICollectionViewListCoordinator.update(_:to:transaction:performDiff:)(v167, v163, v207, v183);

                      goto LABEL_88;
                    }

                    goto LABEL_106;
                  }
                }

                else
                {
                  *&v213 = v151;
                  *(&v213 + 1) = v152;
                  *&v214 = v154;
                  *(&v214 + 1) = v153;
                  *&v215[0] = v156;
                  *(&v215[0] + 1) = v155;
                  *&v215[1] = v157;
                  if ((v208 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFALL)
                  {
                    v201 = v207;
                    v202 = v208;
                    v203 = v209[0];
                    v204 = *&v209[1];
                    outlined copy of ResolvedSubviewsSizingOptions?(v151, v152, v154);
                    v172 = specialized static ResolvedSubviewsSizingOptions.== infix(_:_:)(&v213, &v201);
                    outlined consume of ResolvedSubviewsSizingOptions(v201, *(&v201 + 1), v202);
                    outlined consume of ResolvedSubviewsSizingOptions(v213, *(&v213 + 1), v214);
                    outlined consume of ResolvedSubviewsSizingOptions?(v151, v152, v154);
                    v161 = v198;
                    v160 = v199;
                    v163 = v196;
                    v162 = v197;
                    if (v172)
                    {
                      goto LABEL_83;
                    }

LABEL_81:
                    v164 = AGGraphGetOutputValue();
                    if (v164)
                    {
                      v165 = *v164;
                      UpdateCollectionViewListCoordinator.subviewSizingOptions.getter(&v207);
                      v213 = v207;
                      v214 = v208;
                      v215[0] = v209[0];
                      *&v215[1] = *&v209[1];
                      UICollectionViewListCoordinatorBase.subviewsSizingOptions.setter(&v213);

                      goto LABEL_83;
                    }

LABEL_105:
                    __break(1u);
LABEL_106:
                    __break(1u);
                    goto LABEL_107;
                  }

                  v181 = *(&v209[0] + 1);
                  AssociatedConformanceWitness = *&v209[1];
                  v184 = *(&v207 + 1);
                  v159 = v207;
                  v188 = *(&v208 + 1);
                  v194 = *&v209[0];
                  outlined copy of ResolvedSubviewsSizingOptions?(v151, v152, v154);
                  outlined consume of ResolvedSubviewsSizingOptions(v151, v152, v154);
                }

                outlined consume of ResolvedSubviewsSizingOptions?(v151, v152, v154);
                outlined consume of ResolvedSubviewsSizingOptions?(v159, v184, v158);
                v161 = v198;
                v160 = v199;
                v163 = v196;
                v162 = v197;
                goto LABEL_81;
              }

LABEL_103:
              __break(1u);
            }

LABEL_102:
            __break(1u);
            goto LABEL_103;
          }

LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

LABEL_99:
      __break(1u);
      goto LABEL_100;
    }
  }

  v138 = AGGraphGetOutputValue();
  if (v138)
  {
    v139 = *v138;
    v140 = AGGraphGetValue();
    v141 = *(v140 + 8);
    v142 = v139 + *((*v79 & *v139) + 0x158);
    *v142 = *v140;
    v142[8] = v141;

    v83 = 1;
    goto LABEL_70;
  }

LABEL_110:
  __break(1u);
}

uint64_t SidebarListStyle.Body.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v8 = HIDWORD(a1);
  type metadata accessor for SelectionManagerBox();
  type metadata accessor for Binding();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18[-v11];
  v23 = &type metadata for SidebarListStyle;
  v24 = a2;
  v25 = &protocol witness table for SidebarListStyle;
  v26 = a3;
  v13 = type metadata accessor for _ListValue();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v18[-v14];
  SidebarListStyle.Body.base.getter(&v18[-v14]);
  (*(v10 + 32))(v12, v15, v9);
  if (*AGGraphGetValue())
  {
    v16 = 11;
  }

  else
  {
    v16 = 3;
  }

  v19 = a2;
  v20 = a3;
  v21 = v6;
  v22 = v8;
  type metadata accessor for SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>>();
  lazy protocol witness table accessor for type SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>> and conformance SidebarListStyle.BodyContent<A>();
  swift_getWitnessTable();
  return SidebarListBody.init(selection:options:content:)(v12, v16, partial apply for closure #1 in SidebarListStyle.Body.value.getter, a4);
}

uint64_t SidebarListStyle.Body.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ListValue();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t _ListValue.Init2.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v17[0] = a3;
  v17[1] = a2;
  type metadata accessor for SelectionManagerBox();
  swift_getWitnessTable();
  v4 = type metadata accessor for _ListStyleConfiguration();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - v6;
  v8 = type metadata accessor for ResolvedList();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v17 - v9;
  v11 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v11 + 16))(v14, Value, a1);
  _ListValue.Init2.base.getter(v10);
  (*(v5 + 32))(v7, v10, v4);
  return _ListValue.init(style:configuration:)(v14, v7, a1, v17[0]);
}

uint64_t DefaultListStyle.Body.value.getter@<X0>(int a1@<W0>, ValueMetadata *a2@<X1>, _UNKNOWN **a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a1;
  v64 = a4;
  type metadata accessor for SelectionManagerBox();
  swift_getWitnessTable();
  v52 = type metadata accessor for _ListStyleConfiguration();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v48 = &v48 - v6;
  v75 = &type metadata for DefaultListStyle;
  v76 = a2;
  v77 = &protocol witness table for DefaultListStyle;
  v78 = a3;
  v7 = type metadata accessor for _ListValue();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v48 - v8;
  v75 = a2;
  v76 = &type metadata for ListStyleContent;
  v77 = a3;
  v78 = &protocol witness table for ListStyleContent;
  v10 = type metadata accessor for List();
  v53 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier>();
  v13 = type metadata accessor for ModifiedContent();
  v55 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v48 - v14;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier>();
  v15 = type metadata accessor for ModifiedContent();
  v57 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v50 = &v48 - v16;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier>();
  v17 = type metadata accessor for ModifiedContent();
  v58 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v56 = &v48 - v18;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier>();
  v19 = type metadata accessor for ModifiedContent();
  v60 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v59 = &v48 - v20;
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>();
  v21 = type metadata accessor for ModifiedContent();
  v62 = *(v21 - 8);
  v63 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v61 = &v48 - v22;
  DefaultListStyle.Body.base.getter(v9);
  v23 = v48;
  (*(v51 + 32))(v48, v9, v52);
  List<>.init(_:)(v23, v12);
  if (one-time initialization token for defaultGridCellMinWidth != -1)
  {
    swift_once();
  }

  LOBYTE(v75) = 2;
  v76 = 0;
  LOBYTE(v77) = 1;
  v78 = static ClarityUIMetrics.defaultGridCellMinWidth;
  WitnessTable = swift_getWitnessTable();
  v25 = v49;
  View.listStyle<A, B>(_:idiom:)(&v75, v26, v10, &type metadata for MultimodalListStyle, WitnessTable, MEMORY[0x1E6980150], v49);
  (*(v53 + 8))(v12, v10);
  v27 = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier>, lazy protocol witness table accessor for type InterfaceIdiomPredicate<ClarityUIInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>);
  v73 = WitnessTable;
  v74 = v27;
  v28 = swift_getWitnessTable();
  v29 = lazy protocol witness table accessor for type GroupedFormStyleContext and conformance GroupedFormStyleContext();
  v30 = v50;
  View.listStyle<A, B>(_:in:)(v29, v31, v13, &type metadata for InlineListStyle, &type metadata for GroupedFormStyleContext, v28, v29, v50);
  (*(v55 + 8))(v25, v13);
  v32 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v71 = v28;
  v72 = v32;
  v33 = swift_getWitnessTable();
  v34 = v56;
  View.listStyle<A, B>(_:in:)(v33, v35, v15, &type metadata for SidebarListStyle, MEMORY[0x1E697F808], v33, MEMORY[0x1E697F800], v56);
  (*(v57 + 8))(v30, v15);
  v75 = 3;
  v36 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v69 = v33;
  v70 = v36;
  v37 = swift_getWitnessTable();
  v38 = v59;
  View.listStyle<A, B>(_:in:)(&v75, v39, v17, &type metadata for InsetListStyle, MEMORY[0x1E6980190], v37, MEMORY[0x1E6980188], v59);
  (*(v58 + 8))(v34, v17);
  _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
  v40 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v67 = v37;
  v68 = v40;
  v41 = swift_getWitnessTable();
  v42 = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>();
  v43 = v61;
  View.listStyle<A, B>(_:if:)(v42, v19, &type metadata for InsetGroupedListStyle, v41, v42, v61);
  (*(v60 + 8))(v38, v19);
  LOBYTE(v75) = 2;
  v44 = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v3>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>);
  v65 = v41;
  v66 = v44;
  v45 = v63;
  v46 = swift_getWitnessTable();
  View.listStyle<A>(_:)(&v75, v45, &type metadata for PlainListStyle, v46);
  return (*(v62 + 8))(v43, v45);
}

uint64_t DefaultListStyle.Body.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ListValue();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t _ListValue.Init1.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  type metadata accessor for SelectionManagerBox();
  swift_getWitnessTable();
  v4 = type metadata accessor for _ListStyleConfiguration();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = type metadata accessor for ResolvedList();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v2 + *(a1 + 52), v11, v13);
  _ListValue.Init1.base.getter(v10);
  (*(v5 + 32))(v7, v10, v4);
  return _ListValue.init(style:configuration:)(v15, v7, v11, v19);
}

uint64_t _ListValue.Init1.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ResolvedList();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t List.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v162 = a2;
  v3 = a1[2];
  v4 = a1[4];
  v167 = type metadata accessor for NavigableListModifier();
  v161 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v160 = &v99 - v5;
  v135 = v3;
  v155 = v4;
  v158 = type metadata accessor for SelectionManagerBox();
  type metadata accessor for Binding();
  v166 = type metadata accessor for Optional();
  v168 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v165 = &v99 - v6;
  WitnessTable = swift_getWitnessTable();
  v7 = type metadata accessor for _ListStyleConfiguration();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v154 = &v99 - v8;
  v152 = type metadata accessor for ResolvedList();
  v156 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v150 = &v99 - v9;
  type metadata accessor for StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier>();
  v10 = type metadata accessor for ModifiedContent();
  v153 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v149 = &v99 - v11;
  type metadata accessor for StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier>();
  v142 = v10;
  v12 = type metadata accessor for ModifiedContent();
  v151 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v147 = &v99 - v13;
  type metadata accessor for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>(255, &lazy cache variable for type metadata for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>, &type metadata for AutomaticTextFieldLabelDisplayMode, &protocol witness table for AutomaticTextFieldLabelDisplayMode, type metadata accessor for TextFieldLabelDisplayModeModifier);
  v139 = v12;
  v14 = type metadata accessor for ModifiedContent();
  v148 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v145 = &v99 - v15;
  v140 = v14;
  v16 = type metadata accessor for ModifiedContent();
  v146 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v144 = &v99 - v17;
  HasLazyStackBehaviorInScrollableAxis = lazy protocol witness table accessor for type StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v201 = &protocol witness table for ResolvedList<A>;
  v202 = HasLazyStackBehaviorInScrollableAxis;
  v19 = swift_getWitnessTable();
  v136 = v19;
  v20 = lazy protocol witness table accessor for type StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier>, lazy protocol witness table accessor for type ListPresentationPredicate and conformance ListPresentationPredicate, lazy protocol witness table accessor for type ListPresentationSizingModifier and conformance ListPresentationSizingModifier);
  v199 = v19;
  v200 = v20;
  v137 = swift_getWitnessTable();
  v197 = v137;
  v198 = &protocol witness table for TextFieldLabelDisplayModeModifier<A>;
  v138 = swift_getWitnessTable();
  v195 = v138;
  v196 = &protocol witness table for Fix_53164375;
  *&v163 = v16;
  *&v164 = swift_getWitnessTable();
  v191 = v16;
  v192 = v164;
  v125 = MEMORY[0x1E69813B8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v143 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v134 = &v99 - v21;
  v141 = a1;
  v22 = a1[5];
  v191 = a1[3];
  v192 = v22;
  v23 = v191;
  v132 = v191;
  v133 = v22;
  v24 = v22;
  v25 = swift_getOpaqueTypeMetadata2();
  v191 = v23;
  v192 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = lazy protocol witness table accessor for type ListContainerContext and conformance ListContainerContext();
  v191 = v25;
  v192 = &type metadata for ListContainerContext;
  v193 = OpaqueTypeConformance2;
  v194 = v27;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier>();
  v28 = type metadata accessor for ModifiedContent();
  v191 = v25;
  v192 = &type metadata for ListContainerContext;
  v193 = OpaqueTypeConformance2;
  v194 = v27;
  v29 = swift_getOpaqueTypeConformance2();
  refreshed = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v189 = v29;
  v190 = refreshed;
  v31 = swift_getWitnessTable();
  v32 = lazy protocol witness table accessor for type StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>, lazy protocol witness table accessor for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier);
  v187 = v31;
  v188 = v32;
  v33 = swift_getWitnessTable();
  v191 = v28;
  v192 = v33;
  swift_getOpaqueTypeMetadata2();
  v34 = type metadata accessor for ModifiedContent();
  v128 = v34;
  v35 = lazy protocol witness table accessor for type ListStyleContent and conformance ListStyleContent();
  v129 = v35;
  v191 = v28;
  v192 = v33;
  v185 = swift_getOpaqueTypeConformance2();
  v186 = &protocol witness table for ResetContentMarginModifier;
  v115 = swift_getWitnessTable();
  v191 = &type metadata for ListStyleContent;
  v192 = v34;
  v193 = v35;
  v194 = v115;
  type metadata accessor for StaticSourceWriter();
  v36 = type metadata accessor for ModifiedContent();
  v131 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v122 = &v99 - v37;
  v123 = v36;
  v38 = type metadata accessor for ModifiedContent();
  v130 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v126 = &v99 - v39;
  v191 = v163;
  v192 = v164;
  v117 = swift_getOpaqueTypeConformance2();
  v183 = v117;
  v184 = &protocol witness table for StaticSourceWriter<A, B>;
  v121 = swift_getWitnessTable();
  v181 = v121;
  v182 = &protocol witness table for NavigableListModifier<A>;
  v40 = swift_getWitnessTable();
  v191 = v38;
  v192 = v40;
  v105 = v38;
  v41 = v40;
  v107 = v40;
  v120 = swift_getOpaqueTypeMetadata2();
  v124 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v99 - v42;
  type metadata accessor for ViewInputFlagModifier<ProvidesContextMenuInteraction>();
  v43 = type metadata accessor for ModifiedContent();
  v125 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v116 = &v99 - v44;
  v45 = v135;
  type metadata accessor for TypesMatch();
  swift_getWitnessTable();
  v46 = type metadata accessor for InvertedViewInputPredicate();
  v47 = type metadata accessor for ModifiedContent();
  v112 = v43;
  v113 = v46;
  v110 = v47;
  v104 = type metadata accessor for StaticIf();
  v118 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v114 = &v99 - v48;
  v49 = swift_getWitnessTable();
  v109 = v49;
  v191 = v38;
  v192 = v41;
  v50 = swift_getOpaqueTypeConformance2();
  v103 = v50;
  v51 = _s7SwiftUI19NavigationStateHostCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type ViewInputFlagModifier<ProvidesContextMenuInteraction> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<ProvidesContextMenuInteraction>);
  v179 = v50;
  v180 = v51;
  v177 = swift_getWitnessTable();
  v52 = v177;
  v108 = v177;
  v178 = &protocol witness table for PrimitiveSelectionContainerModifier;
  v101 = swift_getWitnessTable();
  v174 = v49;
  v175 = v101;
  v176 = v52;
  v106 = swift_getWitnessTable();
  v53 = type metadata accessor for ResettableLazyLayoutRoot();
  v111 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v100 = &v99 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v55);
  v102 = &v99 - v57;
  v58 = *(v168 + 16);
  v168 += 16;
  v99 = v58;
  v59 = v165;
  v60 = v159;
  (v58)(v165, v159, v166, v56);
  v61 = v154;
  _ListStyleConfiguration.init(selection:)(v59, v154);
  v62 = v150;
  v63 = v45;
  v64 = v155;
  ResolvedList.init(configuration:)(v61, v150);
  v65 = v149;
  v66 = v152;
  View.listHasLazyStackBehaviorInVerticalScrollView<A>(requiring:)(MEMORY[0x1E697E690], v152, MEMORY[0x1E697E690], &protocol witness table for ResolvedList<A>);
  (*(v156 + 8))(v62, v66);
  v67 = v147;
  v68 = v142;
  View.listPresentationSizing()(v142, v136);
  (*(v153 + 8))(v65, v68);
  v69 = v145;
  v70 = v139;
  View.textFieldLabelDisplayMode<A>(_:)();
  v71 = (*(v151 + 8))(v67, v70);
  v72 = v144;
  v73 = v140;
  MEMORY[0x18D00A570](v71, v140, &unk_1EFFB72B0, v138);
  (*(v148 + 8))(v69, v73);
  v74 = v134;
  v75 = v163;
  View.configuresScrollPhaseState()();
  (*(v146 + 8))(v72, v75);
  *&v76 = v63;
  *(&v76 + 1) = v132;
  *&v77 = v64;
  *(&v77 + 1) = v133;
  v163 = v77;
  v164 = v76;
  v172[1] = v76;
  v172[2] = v77;
  v173 = v60;
  v78 = v122;
  v79 = OpaqueTypeMetadata2;
  View.viewAlias<A, B>(_:_:)(&type metadata for ListStyleContent, partial apply for closure #1 in List.body.getter, v172, OpaqueTypeMetadata2, &type metadata for ListStyleContent, v128, v117);
  (*(v143 + 8))(v74, v79);
  v80 = Namespace.wrappedValue.getter();
  v81 = v165;
  v99(v165, v60, v166);
  v82 = List.stateHost.getter();
  v83 = v160;
  NavigableListModifier.init(id:selection:stateHost:)(v80, v81, v82, v160);
  v84 = v126;
  v85 = v123;
  v86 = v167;
  MEMORY[0x18D00A570](v83, v123, v167, v121);
  (*(v161 + 8))(v83, v86);
  (*(v131 + 8))(v78, v85);
  v87 = v119;
  v88 = v105;
  View.configureForLazyContainer()();
  (*(v130 + 8))(v84, v88);
  lazy protocol witness table accessor for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction();
  v89 = v116;
  v90 = v120;
  View.input<A>(_:)();
  (*(v124 + 8))(v87, v90);
  v169 = v164;
  v170 = v163;
  v171 = v60;
  v91 = v114;
  v92 = v112;
  View.staticIf<A, B>(_:then:)();
  (*(v125 + 8))(v89, v92);
  v93 = v100;
  v94 = v104;
  View.resettableLazyLayoutRoot()();
  (*(v118 + 8))(v91, v94);
  v95 = swift_getWitnessTable();
  v96 = v102;
  static ViewBuilder.buildExpression<A>(_:)(v93, v53, v95);
  v97 = *(v111 + 8);
  v97(v93, v53);
  static ViewBuilder.buildExpression<A>(_:)(v96, v53, v95);
  return (v97)(v96, v53);
}

void *initializeWithCopy for SelectionManagerBox(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v7 <= v6)
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = a2[v9];
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
        goto LABEL_24;
      }

      v13 = *a2;
    }

    else if (v12 == 2)
    {
      v13 = *a2;
    }

    else if (v12 == 3)
    {
      v13 = *a2 | (a2[2] << 16);
    }

    else
    {
      v13 = *a2;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 3;
    v10 = v13 + 3;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_24:
  if (v10 == 2)
  {
    (*(v5 + 16))(a1);
    v16 = 2;
LABEL_32:
    *(a1 + v9) = v16;
    return a1;
  }

  if (v10 == 1)
  {
    if ((*(v5 + 48))(a2, 1, v4))
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v5 + 16))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
    }

    v16 = 1;
    goto LABEL_32;
  }

  *a1 = *a2;
  *(a1 + v9) = 0;

  return a1;
}

uint64_t _ListStyleConfiguration.init(selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Binding();
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 40);

  return v6(a2, a1, v5);
}

uint64_t ResolvedList.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for SelectionManagerBox();
  swift_getWitnessTable();
  v4 = type metadata accessor for _ListStyleConfiguration();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t View.listHasLazyStackBehaviorInVerticalScrollView<A>(requiring:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _EnvironmentKeyTransformModifier<ScrollContentBackground>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ScrollViewStyleContext>, MEMORY[0x1E697FEF8], MEMORY[0x1E69808E8]);
  v7 = v6;
  lazy protocol witness table accessor for type StyleContextAcceptsPredicate<ScrollViewStyleContext> and conformance StyleContextAcceptsPredicate<A>();
  v8 = type metadata accessor for AndOperationViewInputPredicate();
  swift_getWitnessTable();
  ViewModifier.requiring<A>(_:)(v8, &type metadata for ListHasLazyStackBehaviorInScrollableAxisModifier);
  v11 = v7;
  v9 = type metadata accessor for StaticIf();
  return MEMORY[0x18D00A570](&v11, a2, v9, a4);
}

void *initializeWithCopy for ResolvedList(void *a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  v7 = *(v4 + 80) & 0xF8 | 7;
  v8 = ~v7;
  v9 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  if (*v9 >= 0xFFFFFFFF)
  {
    v11 = v5 == 0;
    *a1 = *a2;
    v13 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v13 = v10;
    v14 = ((v13 + v7 + 8) & v8);
    v15 = ((v9 + v7 + 8) & v8);
    if (v11)
    {
      v16 = v6 + 1;
    }

    else
    {
      v16 = v6;
    }

    if (v16 > v6)
    {
      v6 = v16;
    }

    if (v6 <= 8)
    {
      v17 = 8;
    }

    else
    {
      v17 = v6;
    }

    v18 = v15[v17];

    if (v18 >= 3)
    {
      if (v17 <= 3)
      {
        v19 = v17;
      }

      else
      {
        v19 = 4;
      }

      if (v19 <= 1)
      {
        if (!v19)
        {
          goto LABEL_35;
        }

        v20 = *v15;
      }

      else if (v19 == 2)
      {
        v20 = *v15;
      }

      else if (v19 == 3)
      {
        v20 = *v15 | (v15[2] << 16);
      }

      else
      {
        v20 = *v15;
      }

      v24 = (v20 | ((v18 - 3) << (8 * v17))) + 3;
      v25 = v20 + 3;
      if (v17 >= 4)
      {
        v18 = v25;
      }

      else
      {
        v18 = v24;
      }
    }

LABEL_35:
    if (v18 == 2)
    {
      (*(v4 + 16))(v14, v15, v3);
      v26 = 2;
    }

    else
    {
      if (v18 != 1)
      {
        *v14 = *v15;
        *(v14 + v17) = 0;

        return a1;
      }

      if ((*(v4 + 48))(v15, 1, v3))
      {
        memcpy(v14, v15, v16);
      }

      else
      {
        (*(v4 + 16))(v14, v15, v3);
        (*(v4 + 56))(v14, 0, 1, v3);
      }

      v26 = 1;
    }

    *(v14 + v17) = v26;
    return a1;
  }

  v21 = (v7 + 16) & v8;
  if (v5)
  {
    v22 = *(v4 + 64);
  }

  else
  {
    v22 = v6 + 1;
  }

  if (v22 > v6)
  {
    v6 = v22;
  }

  if (v6 <= 8)
  {
    v6 = 8;
  }

  return memcpy(a1, a2, v6 + v21 + 1);
}

uint64_t destroy for ResolvedList(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v4 < 0xFFFFFFFFuLL)
  {
    return result;
  }

  v5 = *(v3 + 84);
  v6 = *(v3 + 80) & 0xF8 | 7;
  v17 = *(*(a2 + 16) - 8);
  v7 = *(v3 + 64);

  v8 = ((v4 + v6 + 8) & ~v6);
  if (v5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 <= v7)
  {
    v9 = v7;
  }

  if (v9 <= 8)
  {
    v9 = 8;
  }

  v10 = v8[v9];
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
        goto LABEL_23;
      }

      v13 = *v8;
    }

    else if (v12 == 2)
    {
      v13 = *v8;
    }

    else if (v12 == 3)
    {
      v13 = *v8 | (v8[2] << 16);
    }

    else
    {
      v13 = *v8;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 3;
    v10 = v13 + 3;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_23:
  if (v10 == 2)
  {
    v15 = v17;
LABEL_28:
    v16 = *(v15 + 8);

    return v16(v8, v2);
  }

  if (v10 == 1)
  {
    result = (*(v17 + 48))(v8, 1, v2);
    v15 = v17;
    if (result)
    {
      return result;
    }

    goto LABEL_28;
  }
}

uint64_t View.listPresentationSizing()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v8 = 0;
  type metadata accessor for StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier>();
  MEMORY[0x18D00A570](&KeyPath, a1, v4, a2);
  return outlined consume of Environment<CGSize?>.Content(KeyPath, v7, v8, HIBYTE(v8));
}

uint64_t ToolbarItem.MakeView.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v6 + 16))(v8, Value, a3);
  View.defaultToolbarBarPocket()(a3, a4);
  return (*(v6 + 8))(v8, a3);
}

void type metadata accessor for StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier>);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for ListPresentationSizingModifier(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 17);
  v6 = *(a2 + 16);
  outlined copy of Environment<PlaybackButton._StyleStorage>.Content(*a2, v4, v6, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 17) = v5;
  return a1;
}

uint64_t outlined copy of Environment<PlaybackButton._StyleStorage>.Content(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_18BF80400(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

void View.textFieldLabelDisplayMode<A>(_:)()
{
  type metadata accessor for TextFieldLabelDisplayModeModifier();

  JUMPOUT(0x18D00A570);
}

uint64_t List.stateHost.getter()
{
  type metadata accessor for NavigationStateHost();
  _s7SwiftUI19NavigationStateHostCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type NavigationStateHost and conformance NavigationStateHost, type metadata accessor for NavigationStateHost);

  return StateObject.wrappedValue.getter();
}

uint64_t NavigableListModifier.init(id:selection:stateHost:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for NavigableListModifier();
  v8 = *(v7 + 36);
  type metadata accessor for SelectionManagerBox();
  type metadata accessor for Binding();
  v9 = type metadata accessor for Optional();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  *&a4[*(v7 + 40)] = a3;
  return result;
}

void *initializeWithCopy for NavigableListModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80) & 0xF8;
  v7 = v6 + 15;
  v8 = ~v6 & 0xFFFFFFFFFFFFFFF8;
  v9 = ((a1 + v6 + 15) & v8);
  v10 = ((a2 + v6 + 15) & v8);
  v11 = *(v4 + 64);
  v12 = (v6 + 23) & v8;
  v13 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v13 >= 0xFFFFFFFFuLL)
  {
    v29 = *(a3 + 16);
    v30 = (v6 + 23) & v8;
    v14 = v5 == 0;
    *v9 = *v10;
    v15 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v13;
    v16 = ((v15 + v7) & v8);
    v17 = ((v13 + v7) & v8);
    if (v14)
    {
      v18 = v11 + 1;
    }

    else
    {
      v18 = v11;
    }

    if (v18 > v11)
    {
      v11 = v18;
    }

    if (v11 <= 8)
    {
      v19 = 8;
    }

    else
    {
      v19 = v11;
    }

    v20 = v17[v19];

    if (v20 < 3)
    {
      v24 = v16;
      goto LABEL_36;
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
      v24 = v16;
      if (!v21)
      {
        goto LABEL_36;
      }

      v22 = *v17;
    }

    else
    {
      if (v21 == 2)
      {
        v22 = *v17;
      }

      else if (v21 == 3)
      {
        v22 = *v17 | (v17[2] << 16);
      }

      else
      {
        v22 = *v17;
      }

      v24 = v16;
    }

    v25 = (v22 | ((v20 - 3) << (8 * v19))) + 3;
    v26 = v22 + 3;
    if (v19 >= 4)
    {
      v20 = v26;
    }

    else
    {
      v20 = v25;
    }

LABEL_36:
    if (v20 == 2)
    {
      (*(v4 + 16))(v24, v17, v29);
      v27 = 2;
    }

    else
    {
      if (v20 != 1)
      {
        *v24 = *v17;
        *(v24 + v19) = 0;

LABEL_45:
        v12 = v30;
        goto LABEL_46;
      }

      if ((*(v4 + 48))(v17, 1, v29))
      {
        memcpy(v24, v17, v18);
      }

      else
      {
        (*(v4 + 16))(v24, v17, v29);
        (*(v4 + 56))(v24, 0, 1, v29);
      }

      v27 = 1;
    }

    *(v24 + v19) = v27;
    goto LABEL_45;
  }

  if (v5)
  {
    v23 = *(v4 + 64);
  }

  else
  {
    v23 = v11 + 1;
  }

  if (v23 > v11)
  {
    v11 = v23;
  }

  if (v11 <= 8)
  {
    v19 = 8;
  }

  else
  {
    v19 = v11;
  }

  memcpy(v9, v10, v19 + v12 + 1);
LABEL_46:
  *((v9 + v19 + v12 + 8) & 0xFFFFFFFFFFFFFFF8) = *((v10 + v19 + v12 + 8) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}