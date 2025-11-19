uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011ControlSizeI033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt1g5@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA011ControlSizeF033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ControlSizeKey>, &type metadata for ControlSizeKey, &protocol witness table for ControlSizeKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for ControlSize?, &type metadata for ControlSize, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA011ControlSizeF033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<ControlSizeKey>>();
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA24MaterialActiveAppearanceVAAE0I033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA24MaterialActiveAppearanceVAAE0S033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
    }

    else
    {
      *a2 = 0;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MaterialActiveAppearance.Key>, &type metadata for MaterialActiveAppearance.Key, &protocol witness table for MaterialActiveAppearance.Key, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v13[1])(&type metadata for MaterialActiveAppearance, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA24MaterialActiveAppearanceVAAE0S033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 0;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<MaterialActiveAppearance.Key>>();
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE022LazySubviewMinorSizingI033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v18[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE022LazySubviewMinorSizingF033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt2g5(a1);
    *(&v18[0] + 1) = v12;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>, &type metadata for EnvironmentValues.LazySubviewMinorSizingKey, &protocol witness table for EnvironmentValues.LazySubviewMinorSizingKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (v11[1])(v18, &type metadata for LazySubviewMinorSizingConfiguration, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE022LazySubviewMinorSizingF033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt2g5(a1);
    v15 = v14;
    LOBYTE(v18[0]) = v13;
    *(&v18[0] + 1) = v14;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>>();
    v20 = v16;
    v21 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v19[0]) = v13;
    v19[1] = v15;

    specialized Dictionary.subscript.setter(v19, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v18[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE026DefaultSeparatorShapeStyleI033_43B3709EE4A9B8504AC89AFCD0D99421LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LODWORD(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE026DefaultSeparatorShapeStyleF033_43B3709EE4A9B8504AC89AFCD0D99421LLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>, &type metadata for EnvironmentValues.DefaultSeparatorShapeStyleKey, &protocol witness table for EnvironmentValues.DefaultSeparatorShapeStyleKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, &type metadata for HierarchicalShapeStyle, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LODWORD(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE026DefaultSeparatorShapeStyleF033_43B3709EE4A9B8504AC89AFCD0D99421LLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LODWORD(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LODWORD(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA30DefaultTextFieldTruncationMode33_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA30DefaultTextFieldTruncationMode33_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultTextFieldTruncationMode>, &type metadata for DefaultTextFieldTruncationMode, &protocol witness table for DefaultTextFieldTruncationMode, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Text.TruncationMode?, &type metadata for Text.TruncationMode, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA30DefaultTextFieldTruncationMode33_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultTextFieldTruncationMode>>();
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013ScrollAnchorsI033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013ScrollAnchorsF033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollAnchorsKey>, &type metadata for ScrollAnchorsKey, &protocol witness table for ScrollAnchorsKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v21);
    outlined init with take of AnyTrackedValue(v21, v22);
    v12 = v23;
    v13 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    (v13[1])(&type metadata for ScrollAnchorStorage, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013ScrollAnchorsF033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt2g5(a1, a2);
    v14 = *a2;
    v15 = *(a2 + 8);
    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<ScrollAnchorsKey>>();
    v23 = v18;
    v24 = &protocol witness table for TrackedValue<A>;
    v19 = swift_allocObject();
    v22[0] = v19;
    *(v19 + 16) = v14;
    *(v19 + 24) = v15;
    *(v19 + 32) = v16;
    *(v19 + 40) = v17;

    specialized Dictionary.subscript.setter(v22, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE017RenderingRootViewI033_F748B30B59970FC73194935C526E3031LLVG_Tt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE017RenderingRootViewF033_F748B30B59970FC73194935C526E3031LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>, &type metadata for EnvironmentValues.RenderingRootViewKey, &protocol witness table for EnvironmentValues.RenderingRootViewKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v16);
    outlined init with take of AnyTrackedValue(v16, v17);
    v12 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, type metadata accessor for WeakBox);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE017RenderingRootViewF033_F748B30B59970FC73194935C526E3031LLVG_Tt2g5(a1, a2);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>>();
    v18 = v14;
    v19 = &protocol witness table for TrackedValue<A>;
    v17[0] = swift_allocObject();
    outlined init with copy of HoverEffectContext?(a2, v17[0] + 16, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, type metadata accessor for WeakBox);
    specialized Dictionary.subscript.setter(v17, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017SystemColorSchemeI033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt1g5@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA017SystemColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemColorSchemeKey>, &type metadata for SystemColorSchemeKey, &protocol witness table for SystemColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (v13[1])(&type metadata for ColorScheme, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA017SystemColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<SystemColorSchemeKey>>();
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06WindowJ4KeysO14AppearsFocusedVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO14AppearsFocusedVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused>, &type metadata for WindowEnvironmentKeys.AppearsFocused, &protocol witness table for WindowEnvironmentKeys.AppearsFocused, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO14AppearsFocusedVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06WindowJ4KeysO11AppearsMainVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO11AppearsMainVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>, &type metadata for WindowEnvironmentKeys.AppearsMain, &protocol witness table for WindowEnvironmentKeys.AppearsMain, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO11AppearsMainVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06WindowJ4KeysO9IsFocusedVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO9IsFocusedVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused>, &type metadata for WindowEnvironmentKeys.IsFocused, &protocol witness table for WindowEnvironmentKeys.IsFocused, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO9IsFocusedVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06WindowJ4KeysO6IsMainVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO6IsMainVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain>, &type metadata for WindowEnvironmentKeys.IsMain, &protocol witness table for WindowEnvironmentKeys.IsMain, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO6IsMainVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I11_glassFrost33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt1g5@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F11_glassFrost33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>, &type metadata for EnvironmentValues.__Key_glassFrost, &protocol witness table for EnvironmentValues.__Key_glassFrost, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (v13[1])(&type metadata for _Glass.Frost, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F11_glassFrost33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>>();
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I15_glassDiffusion33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt1g5@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_glassDiffusion33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>, &type metadata for EnvironmentValues.__Key_glassDiffusion, &protocol witness table for EnvironmentValues.__Key_glassDiffusion, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (v13[1])(&type metadata for _Glass.Diffusion, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_glassDiffusion33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>>();
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE037GlassEffectContainerTintConfigurationI033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt1g5@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE037GlassEffectContainerTintConfigurationF033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>, &type metadata for EnvironmentValues.GlassEffectContainerTintConfigurationKey, &protocol witness table for EnvironmentValues.GlassEffectContainerTintConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (v13[1])(&type metadata for GlassEffectContainerTintConfiguration, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE037GlassEffectContainerTintConfigurationF033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>>();
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    v18[0] = v14;

    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016HeaderProminenceI0VG_Tt1g5@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA016HeaderProminenceF0VG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HeaderProminenceKey>, &type metadata for HeaderProminenceKey, &protocol witness table for HeaderProminenceKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (v13[1])(&type metadata for Prominence, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA016HeaderProminenceF0VG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<HeaderProminenceKey>>();
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance>, &type metadata for EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance, &protocol witness table for EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010InTouchBarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA010InTouchBarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InTouchBarKey>, &type metadata for InTouchBarKey, &protocol witness table for InTouchBarKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA010InTouchBarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<InTouchBarKey>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016DividerThicknessI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    *&v17[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA016DividerThicknessF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1);
    BYTE8(v17[0]) = v12 & 1;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DividerThicknessKey>, &type metadata for DividerThicknessKey, &protocol witness table for DividerThicknessKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v17);
    outlined init with take of AnyTrackedValue(v17, &v18);
    v10 = v21;
    __swift_project_boxed_opaque_existential_1(&v18, v20);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    v11(v17);
    __swift_destroy_boxed_opaque_existential_1(&v18);
  }

  else
  {
    *&v17[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA016DividerThicknessF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1);
    v14 = v13 & 1;
    BYTE8(v17[0]) = v13 & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<DividerThicknessKey>>();
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    v18 = *&v17[0];
    v19 = v14;
    specialized Dictionary.subscript.setter(&v18, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return *&v17[0];
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019DisplayCornerRadiusI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    *&v17[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA019DisplayCornerRadiusF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1);
    BYTE8(v17[0]) = v12 & 1;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayCornerRadiusKey>, &type metadata for DisplayCornerRadiusKey, &protocol witness table for DisplayCornerRadiusKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v17);
    outlined init with take of AnyTrackedValue(v17, &v18);
    v10 = v21;
    __swift_project_boxed_opaque_existential_1(&v18, v20);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    v11(v17);
    __swift_destroy_boxed_opaque_existential_1(&v18);
  }

  else
  {
    *&v17[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA019DisplayCornerRadiusF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1);
    v14 = v13 & 1;
    BYTE8(v17[0]) = v13 & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<DisplayCornerRadiusKey>>();
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    v18 = *&v17[0];
    v19 = v14;
    specialized Dictionary.subscript.setter(&v18, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return *&v17[0];
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021IsLowPowerModeEnabledI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021IsLowPowerModeEnabledF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsLowPowerModeEnabledKey>, &type metadata for IsLowPowerModeEnabledKey, &protocol witness table for IsLowPowerModeEnabledKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021IsLowPowerModeEnabledF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<IsLowPowerModeEnabledKey>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA038AccessibilityDifferentiateWithoutColorI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA038AccessibilityDifferentiateWithoutColorF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityDifferentiateWithoutColorKey>, &type metadata for AccessibilityDifferentiateWithoutColorKey, &protocol witness table for AccessibilityDifferentiateWithoutColorKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v11(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA038AccessibilityDifferentiateWithoutColorF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityDifferentiateWithoutColorKey>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityInvertColorsI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityInvertColorsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityInvertColorsKey>, &type metadata for AccessibilityInvertColorsKey, &protocol witness table for AccessibilityInvertColorsKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v11(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityInvertColorsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityInvertColorsKey>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA030AccessibilityDimFlashingLightsI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA030AccessibilityDimFlashingLightsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityDimFlashingLightsKey>, &type metadata for AccessibilityDimFlashingLightsKey, &protocol witness table for AccessibilityDimFlashingLightsKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v11(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA030AccessibilityDimFlashingLightsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityDimFlashingLightsKey>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA031AccessibilityPlayAnimatedImagesI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA031AccessibilityPlayAnimatedImagesF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityPlayAnimatedImagesKey>, &type metadata for AccessibilityPlayAnimatedImagesKey, &protocol witness table for AccessibilityPlayAnimatedImagesKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v11(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA031AccessibilityPlayAnimatedImagesF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityPlayAnimatedImagesKey>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA024AccessibilityOnOffLabelsI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA024AccessibilityOnOffLabelsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityOnOffLabelsKey>, &type metadata for AccessibilityOnOffLabelsKey, &protocol witness table for AccessibilityOnOffLabelsKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v11(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA024AccessibilityOnOffLabelsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityOnOffLabelsKey>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA028ExplicitPreferredColorSchemeI033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt1g5@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA028ExplicitPreferredColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey>, &type metadata for ExplicitPreferredColorSchemeKey, &protocol witness table for ExplicitPreferredColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for ColorScheme?, &type metadata for ColorScheme, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA028ExplicitPreferredColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey>>();
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013PlacementTintI033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    *&v14[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013PlacementTintF033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlacementTintKey>, &type metadata for PlacementTintKey, &protocol witness table for PlacementTintKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v11 = v10[1];
    type metadata accessor for [TintPlacement : AnyShapeStyle]();
    v11(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    *&v14[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013PlacementTintF033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<PlacementTintKey>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    v15[0] = *&v14[0];

    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return *&v14[0];
}

uint64_t _s7SwiftUI22EnvironmentPropertyKeyV11valuesEqualySb5ValueQz_AFtFZAA0C6ValuesVAAE029ResolvableStringReferenceDateE033_6237733B8EBAC19656F21E79CFCF2D67LLV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E6969530];
  v8 = MEMORY[0x1E69E6720];
  type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  type metadata accessor for (AttributedString.LineHeight?, AttributedString.LineHeight?)(0, &lazy cache variable for type metadata for (Date?, Date?), &lazy cache variable for type metadata for Date?, v7);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v16 = *(v15 + 56);
  outlined init with copy of WeakBox<GlassContainerCache>(a1, &v22 - v13, &lazy cache variable for type metadata for Date?, v7, v8);
  outlined init with copy of WeakBox<GlassContainerCache>(a2, &v14[v16], &lazy cache variable for type metadata for Date?, v7, v8);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) != 1)
  {
    outlined init with copy of WeakBox<GlassContainerCache>(v14, v11, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v17(&v14[v16], 1, v4) != 1)
    {
      v19 = v23;
      (*(v5 + 32))(v23, &v14[v16], v4);
      lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v5 + 8);
      v20(v19, v4);
      v20(v11, v4);
      outlined destroy of WeakBox<GlassContainerCache>(v14, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      return v18 & 1;
    }

    (*(v5 + 8))(v11, v4);
    goto LABEL_6;
  }

  if (v17(&v14[v16], 1, v4) != 1)
  {
LABEL_6:
    outlined destroy of (AttributedString.LineHeight?, AttributedString.LineHeight?)(v14, &lazy cache variable for type metadata for (Date?, Date?), &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    v18 = 0;
    return v18 & 1;
  }

  outlined destroy of WeakBox<GlassContainerCache>(v14, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v18 = 1;
  return v18 & 1;
}

uint64_t _s7SwiftUI22EnvironmentPropertyKeyV11valuesEqualySb5ValueQz_AFtFZAA0C6ValuesVAAE028ContainerBackgroundLuminanceE033_8D5CD1C02D0C201DDE64A5D11F6A296DLLV_Tt1B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a3 & 0x10000000000) != 0)
  {
    return (a6 >> 40) & 1;
  }

  v14[0] = a1;
  v14[1] = a2;
  v15 = a3;
  v16 = BYTE4(a3);
  v17 = 0;
  if ((a6 & 0x10000000000) != 0)
  {
    return 0;
  }

  else
  {
    v8 = a4;
    v9 = BYTE4(a4) & 1;
    v10 = a5;
    v11 = BYTE4(a5) & 1;
    v12 = a6;
    v13 = BYTE4(a6) & 1;
    return specialized static ContainerBackgroundLuminance.== infix(_:_:)(v14, &v8);
  }
}

BOOL _s7SwiftUI22EnvironmentPropertyKeyV11valuesEqualySb5ValueQz_AFtFZAA012SystemAccenthE033_AA5C9AAB6528C7C6B599DF55246DE53ALLV_Tt1B5(char a1, char a2)
{
  v2 = a2 == 10 && a1 == 10;
  if (a1 != 10 && a2 != 10)
  {
    return qword_18DDA6D68[a1] == qword_18DDA6D68[a2];
  }

  return v2;
}

uint64_t _s7SwiftUI22EnvironmentPropertyKeyV11valuesEqualySb5ValueQz_AFtFZAA0C6ValuesVAAE02__E11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString.LineHeight();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E6965590];
  v8 = MEMORY[0x1E69E6720];
  type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  type metadata accessor for (AttributedString.LineHeight?, AttributedString.LineHeight?)(0, &lazy cache variable for type metadata for (AttributedString.LineHeight?, AttributedString.LineHeight?), &lazy cache variable for type metadata for AttributedString.LineHeight?, v7);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v16 = *(v15 + 56);
  outlined init with copy of WeakBox<GlassContainerCache>(a1, &v22 - v13, &lazy cache variable for type metadata for AttributedString.LineHeight?, v7, v8);
  outlined init with copy of WeakBox<GlassContainerCache>(a2, &v14[v16], &lazy cache variable for type metadata for AttributedString.LineHeight?, v7, v8);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) != 1)
  {
    outlined init with copy of WeakBox<GlassContainerCache>(v14, v11, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
    if (v17(&v14[v16], 1, v4) != 1)
    {
      v19 = v23;
      (*(v5 + 32))(v23, &v14[v16], v4);
      lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type AttributedString.LineHeight and conformance AttributedString.LineHeight, MEMORY[0x1E6965590]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v5 + 8);
      v20(v19, v4);
      v20(v11, v4);
      outlined destroy of WeakBox<GlassContainerCache>(v14, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
      return v18 & 1;
    }

    (*(v5 + 8))(v11, v4);
    goto LABEL_6;
  }

  if (v17(&v14[v16], 1, v4) != 1)
  {
LABEL_6:
    outlined destroy of (AttributedString.LineHeight?, AttributedString.LineHeight?)(v14, &lazy cache variable for type metadata for (AttributedString.LineHeight?, AttributedString.LineHeight?), &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    v18 = 0;
    return v18 & 1;
  }

  outlined destroy of WeakBox<GlassContainerCache>(v14, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
  v18 = 1;
  return v18 & 1;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA028SymbolBackgroundCornerRadiusS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>, &type metadata for SymbolBackgroundCornerRadiusKey, &protocol witness table for SymbolBackgroundCornerRadiusKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA028SymbolBackgroundCornerRadiusV033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA026SymbolsGrowToFitBackgroundS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>, &type metadata for SymbolsGrowToFitBackgroundKey, &protocol witness table for SymbolsGrowToFitBackgroundKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA026SymbolsGrowToFitBackgroundV033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA24MaterialActiveAppearanceVAAE0S033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MaterialActiveAppearance.Key>, &type metadata for MaterialActiveAppearance.Key, &protocol witness table for MaterialActiveAppearance.Key, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA24MaterialActiveAppearanceVAAE0V033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>, &type metadata for EnvironmentValues.__Key_materialColorRenderingMode, &protocol witness table for EnvironmentValues.__Key_materialColorRenderingMode, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA031AccessibilitySettingsDefinitionS0031_DD012B99EE4F6885B033D7D23FEF69J0LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>, &type metadata for AccessibilitySettingsDefinitionKey, &protocol witness table for AccessibilitySettingsDefinitionKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA031AccessibilitySettingsDefinitionV0031_DD012B99EE4F6885B033D7D23FEF69J0LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA19UnredactSymbolImageVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UnredactSymbolImage>, &type metadata for UnredactSymbolImage, &protocol witness table for UnredactSymbolImage, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA19UnredactSymbolImageVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV022MaxAllowedDynamicRangeS0VG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>, &type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.MaxAllowedDynamicRangeKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV022MaxAllowedDynamicRangeV0VG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA23ContainerBackgroundKindO0S0VG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKind.Key>, &type metadata for ContainerBackgroundKind.Key, &protocol witness table for ContainerBackgroundKind.Key, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA23ContainerBackgroundKindO0V0VG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE019PlatformColorSchemeS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>, &type metadata for EnvironmentValues.PlatformColorSchemeKey, &protocol witness table for EnvironmentValues.PlatformColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE019PlatformColorSchemeV033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE019ExplicitColorSchemeS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>, &type metadata for EnvironmentValues.ExplicitColorSchemeKey, &protocol witness table for EnvironmentValues.ExplicitColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE019ExplicitColorSchemeV033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA24MaterialActiveAppearanceVAAE0F033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA24MaterialActiveAppearanceVAAE0S033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(*a1);
  if (!result || *(result + 72) != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<MaterialActiveAppearance.Key>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MaterialActiveAppearance.Key>, &type metadata for MaterialActiveAppearance.Key, &protocol witness table for MaterialActiveAppearance.Key, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14ReusableInputsV_Tt2B5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for ReusableInputs);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14ReusableInputsV_Tt0B5(v6, v10) || (result = AGCompareValues(), !result))
  {
    v8 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<ReusableInputs>, &type metadata for ReusableInputs, &protocol witness table for ReusableInputs, type metadata accessor for TypedElement);
    v9 = swift_allocObject();
    *(v9 + 72) = a2;
    *(v9 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for ReusableInputs, 0, v8);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableLayoutDirection.CodingValue and conformance CodableLayoutDirection.CodingValue()
{
  result = lazy protocol witness table cache variable for type CodableLayoutDirection.CodingValue and conformance CodableLayoutDirection.CodingValue;
  if (!lazy protocol witness table cache variable for type CodableLayoutDirection.CodingValue and conformance CodableLayoutDirection.CodingValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableLayoutDirection.CodingValue and conformance CodableLayoutDirection.CodingValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableLayoutDirection.CodingValue and conformance CodableLayoutDirection.CodingValue;
  if (!lazy protocol witness table cache variable for type CodableLayoutDirection.CodingValue and conformance CodableLayoutDirection.CodingValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableLayoutDirection.CodingValue and conformance CodableLayoutDirection.CodingValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableLayoutDirection.CodingValue and conformance CodableLayoutDirection.CodingValue;
  if (!lazy protocol witness table cache variable for type CodableLayoutDirection.CodingValue and conformance CodableLayoutDirection.CodingValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableLayoutDirection.CodingValue and conformance CodableLayoutDirection.CodingValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableLayoutDirection.CodingValue and conformance CodableLayoutDirection.CodingValue;
  if (!lazy protocol witness table cache variable for type CodableLayoutDirection.CodingValue and conformance CodableLayoutDirection.CodingValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableLayoutDirection.CodingValue and conformance CodableLayoutDirection.CodingValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LayoutDirection and conformance LayoutDirection()
{
  result = lazy protocol witness table cache variable for type LayoutDirection and conformance LayoutDirection;
  if (!lazy protocol witness table cache variable for type LayoutDirection and conformance LayoutDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutDirection and conformance LayoutDirection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [LayoutDirection] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [LayoutDirection] and conformance [A];
  if (!lazy protocol witness table cache variable for type [LayoutDirection] and conformance [A])
  {
    type metadata accessor for [LayoutDirection](255, &lazy cache variable for type metadata for [LayoutDirection], &type metadata for LayoutDirection, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [LayoutDirection] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableLayoutDirection and conformance CodableLayoutDirection()
{
  result = lazy protocol witness table cache variable for type CodableLayoutDirection and conformance CodableLayoutDirection;
  if (!lazy protocol witness table cache variable for type CodableLayoutDirection and conformance CodableLayoutDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableLayoutDirection and conformance CodableLayoutDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableLayoutDirection and conformance CodableLayoutDirection;
  if (!lazy protocol witness table cache variable for type CodableLayoutDirection and conformance CodableLayoutDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableLayoutDirection and conformance CodableLayoutDirection);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for CodableLayoutDirection(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type CodableLayoutDirection and conformance CodableLayoutDirection();
  result = lazy protocol witness table accessor for type CodableLayoutDirection and conformance CodableLayoutDirection();
  *(a1 + 16) = result;
  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014DefaultPaddingF033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt2g5(uint64_t *a1, double a2, double a3, double a4, double a5)
{
  v6 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultPaddingKey>, &type metadata for DefaultPaddingKey, &protocol witness table for DefaultPaddingKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  BloomFilter.init(hashValue:)(v7);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014DefaultPaddingV033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt0B5(v6, v18);
  if (!result || (v10.f64[0] = a2, v10.f64[1] = a3, v11.f64[0] = a4, v11.f64[1] = a5, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(result + 9), v10), vceqq_f64(*(result + 11), v11)))) & 1) == 0))
  {
    v12 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultPaddingKey>>();
    v13 = swift_allocObject();
    v13[9] = a2;
    v13[10] = a3;
    v13[11] = a4;
    v13[12] = a5;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v12);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021PlatformItemsFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemsFeaturesKey);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE021PlatformItemsFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v4, v7);
  if (!result || *(result + 72) != a2)
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_ViewInputs.PlatformItemsFeaturesKey>, &type metadata for _ViewInputs.PlatformItemsFeaturesKey, &protocol witness table for _ViewInputs.PlatformItemsFeaturesKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _ViewInputs.PlatformItemsFeaturesKey, 0, v6);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE020PlatformItemFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v4, v7);
  if (!result || *(result + 72) != a2)
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_ViewInputs.PlatformItemFeaturesKey>, &type metadata for _ViewInputs.PlatformItemFeaturesKey, &protocol witness table for _ViewInputs.PlatformItemFeaturesKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey, 0, v6);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021RequestsPlatformItemsF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.RequestsPlatformItemsKey);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE021RequestsPlatformItemsV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v4, v7);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_ViewInputs.RequestsPlatformItemsKey>, &type metadata for _ViewInputs.RequestsPlatformItemsKey, &protocol witness table for _ViewInputs.RequestsPlatformItemsKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _ViewInputs.RequestsPlatformItemsKey, 0, v6);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA010TextSuffixF033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt2B5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSuffixKey>, &type metadata for TextSuffixKey, &protocol witness table for TextSuffixKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010TextSuffixV033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt0B5(v4, *&v19[0]);
  if (!v7 || (v8 = v7[15], v9 = *(v7 + 9), v10 = *(v7 + 11), v11 = *(v7 + 13), v12 = *(a2 + 16), v19[0] = *a2, v19[1] = v12, v19[2] = *(a2 + 32), v20 = *(a2 + 48), v17[0] = v9, v17[1] = v10, v17[2] = v11, v18 = v8, result = specialized static ResolvedTextSuffix.== infix(_:_:)(v19, v17), (result & 1) == 0))
  {
    v14 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<TextSuffixKey>>();
    v15 = swift_allocObject();
    v16 = *(a2 + 16);
    *(v15 + 72) = *a2;
    *(v15 + 88) = v16;
    *(v15 + 104) = *(a2 + 32);
    *(v15 + 120) = *(a2 + 48);

    outlined init with copy of ResolvedTextSuffix(a2, v19);
    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v14);
  }

  return result;
}

uint64_t specialized closure #1 in PropertyList.subscript.setter(Swift::UInt *a1, Swift::Int hashValue, char a3, uint64_t a4, uint64_t (*a5)(Swift::UInt, Swift::Int), unint64_t *a6, uint64_t a7, uint64_t a8)
{
  v15.value = *a1;
  BloomFilter.init(hashValue:)(hashValue);
  result = a5(v15.value, hashValue);
  if (!result || *(result + 72) != (a3 & 1))
  {
    v17 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, a6, a7, a8, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a3 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(hashValue, 0, v17);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA19VariantThatFitsFlagV_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for VariantThatFitsFlag);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19VariantThatFitsFlagV_Tt0B5(v4, v7);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<VariantThatFitsFlag>, &type metadata for VariantThatFitsFlag, &protocol witness table for VariantThatFitsFlag, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for VariantThatFitsFlag, 0, v6);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA36ContainerContextStylingDisabledInputV_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for ContainerContextStylingDisabledInput);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA36ContainerContextStylingDisabledInputV_Tt0B5(v4, v7);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<ContainerContextStylingDisabledInput>, &type metadata for ContainerContextStylingDisabledInput, &protocol witness table for ContainerContextStylingDisabledInput, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for ContainerContextStylingDisabledInput, 0, v6);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA07DisplayD0V7OptionsV_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v4, v7);
  if (!result || *(result + 72) != a2)
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<DisplayList.Options>, &type metadata for DisplayList.Options, &protocol witness table for DisplayList.Options, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for DisplayList.Options, 0, v6);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA28PreferTextLayoutManagerInputV_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for PreferTextLayoutManagerInput);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA28PreferTextLayoutManagerInputV_Tt0B5(v4, v7);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<PreferTextLayoutManagerInput>, &type metadata for PreferTextLayoutManagerInput, &protocol witness table for PreferTextLayoutManagerInput, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for PreferTextLayoutManagerInput, 0, v6);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F18_glassEffectHidden08_3DF70D9M23D7473F4D189A049B764CFEFLLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>, &type metadata for EnvironmentValues.__Key_glassEffectHidden, &protocol witness table for EnvironmentValues.__Key_glassEffectHidden, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V18_glassEffectHidden33_3DF70D9D9D7473F4D189A049B764CFEFLLVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA31ShouldAttachScrollEdgeEffectTagV_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for ShouldAttachScrollEdgeEffectTag);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA31ShouldAttachScrollEdgeEffectTagV_Tt0B5(v4, v7);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<ShouldAttachScrollEdgeEffectTag>, &type metadata for ShouldAttachScrollEdgeEffectTag, &protocol witness table for ShouldAttachScrollEdgeEffectTag, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for ShouldAttachScrollEdgeEffectTag, 0, v6);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE037GlassEffectContainerTintConfigurationF033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt2B5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>, &type metadata for EnvironmentValues.GlassEffectContainerTintConfigurationKey, &protocol witness table for EnvironmentValues.GlassEffectContainerTintConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE037GlassEffectContainerTintConfigurationV033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt0B5(v4, v10);
  if (!v7 || (result = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI40MaterialEffectContainerTintConfigurationV7ElementV_Tt1g5(a2, v7[9]), (result & 1) == 0))
  {
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>>();
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollPhaseStateF033_6CF0FEE8B18B5917140F6DA7931A3E74LLV_Tt2B5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollPhaseStateKey);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE016ScrollPhaseStateV033_6CF0FEE8B18B5917140F6DA7931A3E74LLV_Tt0B5(v4, v10);
  if (!v5 || (v6 = *(v5 + 72), , v7 = _s7SwiftUI5StackOAASQRzlE2eeoiySbACyxG_AEtFZ14AttributeGraph08OptionalE0VyAA16ScrollPhaseStateVG_Tt1B5(a2, v6), result = , !v7))
  {
    v9 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.ScrollPhaseStateKey>, &type metadata for _GraphInputs.ScrollPhaseStateKey, &protocol witness table for _GraphInputs.ScrollPhaseStateKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.ScrollPhaseStateKey, 0, v9);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14BodyCountInputVyAA21_ViewModifier_ContentVyAA010ScalePulseK033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGG_Tt2B5Tm(Swift::UInt *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(Swift::UInt), unint64_t *a7)
{
  v13.value = *a1;
  type metadata accessor for GlassEffectBackdropObserver?(0, a4, a5, type metadata accessor for BodyCountInput);
  v15 = v14;
  BloomFilter.init(hashValue:)(v14);
  if (!a6(v13.value) || (type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for Stack<(_:)>, type metadata accessor for (_:), type metadata accessor for Stack), result = AGCompareValues(), !result))
  {
    v17 = *a1;
    type metadata accessor for TypedElement<BodyCountInput<_ViewModifier_Content<ScalePulseModifier<Int>>>>(0, a7, a4, a5);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v15, 0, v17);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14BodyCountInputVyAA21_ViewModifier_ContentVyAA020GlassTransitionStateK033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGG_Tt2B5Tm(Swift::UInt *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(Swift::UInt), unint64_t *a6, void (*a7)(uint64_t))
{
  v12.value = *a1;
  v13 = a4(0);
  BloomFilter.init(hashValue:)(v13);
  if (!a5(v12.value) || (type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for Stack<(_:)>, type metadata accessor for (_:), type metadata accessor for Stack), result = AGCompareValues(), !result))
  {
    v15 = *a1;
    type metadata accessor for TypedElement<BodyInput<_ViewModifier_Content<GlassEffectLocalModifier>>>(0, a6, a7);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v13, 0, v15);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA018ScheduledAnimationT033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGGG_Tt2B5Tm(Swift::UInt *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(Swift::UInt), void (*a7)(void))
{
  v11.value = *a1;
  type metadata accessor for GlassEffectBackdropObserver?(0, a4, a5, type metadata accessor for BodyInput);
  v13 = v12;
  BloomFilter.init(hashValue:)(v12);
  v14 = a6(v11.value);
  if (!v14 || (v15 = *(v14 + 72), , v16 = _s7SwiftUI5StackOAASQRzlE2eeoiySbACyxG_AEtFZAA16BodyInputElement33_2BA0A33A15B7F322F46AFB9D0D1A262DLLO_Tt1B5(a2, v15), result = , (v16 & 1) == 0))
  {
    v18 = *a1;
    a7(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v13, 0, v18);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015FlexInteractionT0VGG_Tt2B5Tm(Swift::UInt *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(Swift::UInt), unint64_t *a6, void (*a7)(uint64_t))
{
  v12.value = *a1;
  v13 = a4(0);
  BloomFilter.init(hashValue:)(v13);
  v14 = a5(v12.value);
  if (!v14 || (v15 = *(v14 + 72), , v16 = _s7SwiftUI5StackOAASQRzlE2eeoiySbACyxG_AEtFZAA16BodyInputElement33_2BA0A33A15B7F322F46AFB9D0D1A262DLLO_Tt1B5(a2, v15), result = , (v16 & 1) == 0))
  {
    v18 = *a1;
    type metadata accessor for TypedElement<BodyInput<_ViewModifier_Content<GlassEffectLocalModifier>>>(0, a6, a7);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v13, 0, v18);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE013IsScrollStatee6UpdateF0019_D49197C3D3C61F0DA0W12CF1D72D0077ALLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.IsScrollStateValueUpdateKey>, &type metadata for Transaction.IsScrollStateValueUpdateKey, &protocol witness table for Transaction.IsScrollStateValueUpdateKey, type metadata accessor for TransactionPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE024IsScrollStateValueUpdateV033_D49197C3D3C61F0DA0F0CF1D72D0077ALLVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.IsScrollStateValueUpdateKey>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE019ExplicitColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v3 = a2;
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE019ExplicitColorSchemeS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(*a1);
  if (!result)
  {
    goto LABEL_7;
  }

  v5 = *(result + 72);
  if (v3 == 2)
  {
    if (v5 == 2)
    {
      return result;
    }

LABEL_7:
    v6 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>>();
    *(swift_allocObject() + 72) = v3;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>, &type metadata for EnvironmentValues.ExplicitColorSchemeKey, &protocol witness table for EnvironmentValues.ExplicitColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
    v8 = v7;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v6);
  }

  if (v5 == 2 || ((v5 ^ v3) & 1) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE34ScrollToRequiresCompleteVisibility019_D49197C3D3C61F0DA0X12CF1D72D0077ALLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollToRequiresCompleteVisibility>, &type metadata for Transaction.ScrollToRequiresCompleteVisibility, &protocol witness table for Transaction.ScrollToRequiresCompleteVisibility, type metadata accessor for TransactionPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE34ScrollToRequiresCompleteVisibility33_D49197C3D3C61F0DA0F0CF1D72D0077ALLVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.ScrollToRequiresCompleteVisibility>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE033UseDefaultGlassContainerAnimationF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.UseDefaultGlassContainerAnimationKey>, &type metadata for Transaction.UseDefaultGlassContainerAnimationKey, &protocol witness table for Transaction.UseDefaultGlassContainerAnimationKey, type metadata accessor for TransactionPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE033UseDefaultGlassContainerAnimationV001_J30CCB6EB7DEF7555840E44B500337668LLVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.UseDefaultGlassContainerAnimationKey>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2B5(uint64_t *a1, const void *a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.GlassContainerSettingsOverrideKey>, &type metadata for Transaction.GlassContainerSettingsOverrideKey, &protocol witness table for Transaction.GlassContainerSettingsOverrideKey, type metadata accessor for TransactionPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE030GlassContainerSettingsOverrideV001_J30CCB6EB7DEF7555840E44B500337668LLVG_Tt0B5(v4, __dst[0]);
  if (!v7 || (memcpy(v11, v7 + 9, 0x149uLL), memcpy(__dst, a2, 0x149uLL), result = specialized static GlassContainer.SettingsOverride.== infix(_:_:)(__dst, v11), (result & 1) == 0))
  {
    v9 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.GlassContainerSettingsOverrideKey>>();
    v10 = swift_allocObject();
    memcpy((v10 + 72), a2, 0x149uLL);

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE028ContainerBackgroundLuminanceF033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt2B5(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>, &type metadata for EnvironmentValues.ContainerBackgroundLuminanceKey, &protocol witness table for EnvironmentValues.ContainerBackgroundLuminanceKey, type metadata accessor for EnvironmentPropertyKey);
  v10 = v9;
  BloomFilter.init(hashValue:)(v9);
  v11 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE028ContainerBackgroundLuminanceV033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt0B5(v8, v16);
  v12 = (a4 >> 40) & 1;
  if (!v11 || (result = _s7SwiftUI22EnvironmentPropertyKeyV11valuesEqualySb5ValueQz_AFtFZAA0C6ValuesVAAE028ContainerBackgroundLuminanceE033_8D5CD1C02D0C201DDE64A5D11F6A296DLLV_Tt1B5(a2, a3, a4 & 0xFFFFFFFFFFLL | (v12 << 40), v11[9], v11[10], *(v11 + 22) | (*(v11 + 92) << 32) | (*(v11 + 93) << 40)), (result & 1) == 0))
  {
    v14 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>>();
    v15 = swift_allocObject();
    *(v15 + 72) = a2;
    *(v15 + 80) = a3;
    *(v15 + 92) = BYTE4(a4);
    *(v15 + 88) = a4;
    *(v15 + 93) = v12;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v10, 0, v14);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE017HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.HasWidgetMetadataKey);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE017HasWidgetMetadataV033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt0B5(v4, v7);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.HasWidgetMetadataKey>, &type metadata for _GraphInputs.HasWidgetMetadataKey, &protocol witness table for _GraphInputs.HasWidgetMetadataKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.HasWidgetMetadataKey, 0, v6);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016HoverEffectStateF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>, &type metadata for EnvironmentValues.HoverEffectStateKey, &protocol witness table for EnvironmentValues.HoverEffectStateKey, type metadata accessor for EnvironmentPropertyKey);
  v10 = v9;
  BloomFilter.init(hashValue:)(v9);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016HoverEffectStateV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(v8, v15))
  {
    v11 = a2 & 1;
    goto LABEL_5;
  }

  v11 = a2 & 1;
  result = AGCompareValues();
  if (!result)
  {
LABEL_5:
    v13 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>>();
    v14 = swift_allocObject();
    *(v14 + 72) = v11;
    *(v14 + 80) = a3;
    *(v14 + 88) = a4;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v10, 0, v13);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE031PlatformAccessibilityPreferenceF033_44953956318F41C5365C38B8AC5FF331LLV_Tt2g5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformAccessibilityPreferenceKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE031PlatformAccessibilityPreferenceV033_44953956318F41C5365C38B8AC5FF331LLV_Tt0B5(v6, v10) || (type metadata accessor for PreferenceKey.Type?(), result = AGCompareValues(), !result))
  {
    v8 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_ViewInputs.PlatformAccessibilityPreferenceKey>, &type metadata for _ViewInputs.PlatformAccessibilityPreferenceKey, &protocol witness table for _ViewInputs.PlatformAccessibilityPreferenceKey, type metadata accessor for TypedElement);
    v9 = swift_allocObject();
    *(v9 + 72) = a2;
    *(v9 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _ViewInputs.PlatformAccessibilityPreferenceKey, 0, v8);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE014PlatformSystemF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.PlatformSystemKey);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014PlatformSystemV033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt0B5(v4, v7);
  if (!result || *(result + 72) != a2)
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.PlatformSystemKey>, &type metadata for _GraphInputs.PlatformSystemKey, &protocol witness table for _GraphInputs.PlatformSystemKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.PlatformSystemKey, 0, v6);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.UpdateCycleUseSetNeedsLayoutKey);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutV033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt0B5(v4, v7);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.UpdateCycleUseSetNeedsLayoutKey>, &type metadata for _GraphInputs.UpdateCycleUseSetNeedsLayoutKey, &protocol witness table for _GraphInputs.UpdateCycleUseSetNeedsLayoutKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.UpdateCycleUseSetNeedsLayoutKey, 0, v6);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE024AnimationLogicalListenerF033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(*a1) || (type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for AnimationListener?, type metadata accessor for AnimationListener, MEMORY[0x1E69E6720]), result = AGCompareValues(), !result))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.AnimationLogicalListenerKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.AnimationLogicalListenerKey>, &type metadata for Transaction.AnimationLogicalListenerKey, &protocol witness table for Transaction.AnimationLogicalListenerKey, type metadata accessor for TransactionPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA012SystemAccenteF033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt2B5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemAccentValueKey>, &type metadata for SystemAccentValueKey, &protocol witness table for SystemAccentValueKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017SystemAccentValueV033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0B5(v4, v10);
  if (!v7 || (result = _s7SwiftUI22EnvironmentPropertyKeyV11valuesEqualySb5ValueQz_AFtFZAA012SystemAccenthE033_AA5C9AAB6528C7C6B599DF55246DE53ALLV_Tt1B5(a2, *(v7 + 72)), (result & 1) == 0))
  {
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<SystemAccentValueKey>>();
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA021PresentingContextMenuF033_582793BC0A30BEC55316E8383E1A8442LLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentingContextMenuKey>, &type metadata for PresentingContextMenuKey, &protocol witness table for PresentingContextMenuKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021PresentingContextMenuV033_582793BC0A30BEC55316E8383E1A8442LLVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<PresentingContextMenuKey>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA028GlassEffectBackdropGroupNameF008_3DF70D9N23D7473F4D189A049B764CFEFLLVG_Tt2g5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>, &type metadata for GlassEffectBackdropGroupNameKey, &protocol witness table for GlassEffectBackdropGroupNameKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  BloomFilter.init(hashValue:)(v7);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA028GlassEffectBackdropGroupNameV033_3DF70D9D9D7473F4D189A049B764CFEFLLVG_Tt0B5(v6, v14);
  if (!result)
  {
    goto LABEL_11;
  }

  v10 = *(result + 80);
  if (!a3)
  {
    if (!v10)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (!v10 || (*(result + 72) == a2 ? (v11 = v10 == a3) : (v11 = 0), !v11 && (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0)))
  {
LABEL_11:
    v12 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>>();
    v13 = swift_allocObject();
    *(v13 + 72) = a2;
    *(v13 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v12);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016SensitiveContentF033_7799685610985DBA9248562F2E4D5E6ELLVG_Tt2g5(uint64_t *a1, char a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016SensitiveContentS0024_7799685610985DBA9248562L7E4D5E6ELLVG_Tt0g5(*a1);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<SensitiveContentKey>>();
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SensitiveContentKey>, &type metadata for SensitiveContentKey, &protocol witness table for SensitiveContentKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA24RequestedLeafContentTypeV_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for RequestedLeafContentType);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA24RequestedLeafContentTypeV_Tt0B5(v4, v7);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<RequestedLeafContentType>, &type metadata for RequestedLeafContentType, &protocol witness table for RequestedLeafContentType, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for RequestedLeafContentType, 0, v6);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F13_buttonSizing014_B3F6B53DB8F35K17F9F84F34C99C79B2CLLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing>, &type metadata for EnvironmentValues.__Key_buttonSizing, &protocol witness table for EnvironmentValues.__Key_buttonSizing, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V13_buttonSizing33_B3F6B53DB8F35B3F9F84F34C99C79B2CLLVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != a2)
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing>>();
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV044AccessibilitySpeechAlwaysIncludesPunctuationF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(uint64_t *a1, int a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV044AccessibilitySpeechAlwaysIncludesPunctuationV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(v4, v10);
  if (!result)
  {
    goto LABEL_7;
  }

  v8 = *(result + 72);
  if (a2 == 2)
  {
    if (v8 == 2)
    {
      return result;
    }

LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey>>();
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);
  }

  if (v8 == 2 || ((v8 ^ a2) & 1) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV038AccessibilitySpeechSpellsOutCharactersF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(uint64_t *a1, int a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey>, &type metadata for EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV038AccessibilitySpeechSpellsOutCharactersV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(v4, v10);
  if (!result)
  {
    goto LABEL_7;
  }

  v8 = *(result + 72);
  if (a2 == 2)
  {
    if (v8 == 2)
    {
      return result;
    }

LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey>>();
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);
  }

  if (v8 == 2 || ((v8 ^ a2) & 1) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV032AccessibilitySpeechAdjustedPitchF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAdjustedPitchKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAdjustedPitchKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  BloomFilter.init(hashValue:)(v7);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV032AccessibilitySpeechAdjustedPitchV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(v6, v13);
  if (!result)
  {
    goto LABEL_8;
  }

  v10 = *(result + 80);
  if (a3)
  {
    if (*(result + 80))
    {
      return result;
    }

LABEL_8:
    v11 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey>>();
    v12 = swift_allocObject();
    *(v12 + 72) = *&a2;
    *(v12 + 80) = a3 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v11);
  }

  if (*(result + 9) != *&a2)
  {
    v10 = 1;
  }

  if (v10)
  {
    goto LABEL_8;
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV040AccessibilitySpeechAnnouncementsPriorityF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV040AccessibilitySpeechAnnouncementsPriorityV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(v4, v11);
  if (!result)
  {
    goto LABEL_9;
  }

  v8 = *(result + 72);
  if (v3 == 3)
  {
    if (v8 == 3)
    {
      return result;
    }

LABEL_9:
    v10 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>>();
    *(swift_allocObject() + 72) = v3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v10);
  }

  if (v8 == 3 || v8 != v3)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>, &type metadata for EnvironmentValues.__Key_glassEffectBackdropObserver, &protocol witness table for EnvironmentValues.__Key_glassEffectBackdropObserver, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVG_Tt0B5(v4, v9) || (type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for GlassEffectBackdropObserver?, type metadata accessor for GlassEffectBackdropObserver, MEMORY[0x1E69E6720]), result = AGCompareValues(), !result))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>>();
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV013ContentShapesF033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt2B5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>, &type metadata for EnvironmentValues.ContentShapesKey, &protocol witness table for EnvironmentValues.ContentShapesKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV013ContentShapesV033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt0B5(v4, v9) || (result = AGCompareValues(), !result))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>>();
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA8SolariumV022AllowedInCompatibilityF0V_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for Solarium.AllowedInCompatibilityKey);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA8SolariumV022AllowedInCompatibilityV0V_Tt0B5(v4, v7);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<Solarium.AllowedInCompatibilityKey>, &type metadata for Solarium.AllowedInCompatibilityKey, &protocol witness table for Solarium.AllowedInCompatibilityKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for Solarium.AllowedInCompatibilityKey, 0, v6);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA23ContainerBackgroundKindO0F0VG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v3 = a2;
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA23ContainerBackgroundKindO0S0VG_Tt0g5(*a1);
  if (!result)
  {
    goto LABEL_9;
  }

  v5 = *(result + 72);
  if (v3 != 6 && v5 != 6)
  {
    if (v3 == 5)
    {
      if (v5 == 5)
      {
        return result;
      }
    }

    else if (v5 == v3)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (v3 != 6 || v5 != 6)
  {
LABEL_9:
    v6 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<ContainerBackgroundKind.Key>>();
    *(swift_allocObject() + 72) = v3;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKind.Key>, &type metadata for ContainerBackgroundKind.Key, &protocol witness table for ContainerBackgroundKind.Key, type metadata accessor for EnvironmentPropertyKey);
    v8 = v7;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v6);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE013SymbolEffectsF033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>, &type metadata for EnvironmentValues.SymbolEffectsKey, &protocol witness table for EnvironmentValues.SymbolEffectsKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE013SymbolEffectsV033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt0B5(v4, v12);
  if (!v7 || (v8 = v7[9], , v9 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI13_SymbolEffectV10IdentifiedV_Tt1g5(a2, v8), result = , (v9 & 1) == 0))
  {
    v11 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>>();
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v11);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE032CoreInteractionResponderProviderF033_03AF342AA286115256FF95C286FEA7E3LLV_Tt2g5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.CoreInteractionResponderProviderKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE032CoreInteractionResponderProviderV033_03AF342AA286115256FF95C286FEA7E3LLV_Tt0B5(v6, v10) || (type metadata accessor for CoreInteractionResponderProvider.Type?(), result = AGCompareValues(), !result))
  {
    v8 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.CoreInteractionResponderProviderKey>, &type metadata for _GraphInputs.CoreInteractionResponderProviderKey, &protocol witness table for _GraphInputs.CoreInteractionResponderProviderKey, type metadata accessor for TypedElement);
    v9 = swift_allocObject();
    *(v9 + 72) = a2;
    *(v9 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.CoreInteractionResponderProviderKey, 0, v8);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027TextSelectionRepresentationF033_E9056C24F23374CCD1A34D90898CB830LLV_Tt2g5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.TextSelectionRepresentationKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE027TextSelectionRepresentationV0019_E9056C24F23374CCD1I11D90898CB830LLV_Tt0B5(v6, v10) || (type metadata accessor for PlatformTextSelectionRepresentation.Type?(), result = AGCompareValues(), !result))
  {
    v8 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.TextSelectionRepresentationKey>, &type metadata for _GraphInputs.TextSelectionRepresentationKey, &protocol witness table for _GraphInputs.TextSelectionRepresentationKey, type metadata accessor for TypedElement);
    v9 = swift_allocObject();
    *(v9 + 72) = a2;
    *(v9 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.TextSelectionRepresentationKey, 0, v8);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017TextJustificationF033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt2B5(uint64_t *a1, int a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017TextJustificationS033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt0g5(*a1);
  if (!result)
  {
    goto LABEL_6;
  }

  v5 = *(result + 36);
  if (a2 == 2)
  {
    if (v5 == 2)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (v5 == 2 || (v9 = *(result + 36) ^ a2, (v9 & 1) != 0) || ((v9 >> 8) & 1) != 0)
  {
LABEL_6:
    v6 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<TextJustificationKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextJustificationKey>, &type metadata for TextJustificationKey, &protocol witness table for TextJustificationKey, type metadata accessor for EnvironmentPropertyKey);
    v8 = v7;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v6);
  }

  return result;
}

double *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt2B5(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt0g5(*a1);
  if (!result)
  {
    goto LABEL_11;
  }

  v9 = *(result + 9);
  if (a2 == 2)
  {
    if (v9 == 2)
    {
      return result;
    }

LABEL_11:
    v11 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>>();
    v12 = swift_allocObject();
    *(v12 + 72) = a2;
    *(v12 + 80) = *&a3;
    *(v12 + 88) = *&a4;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>, &type metadata for EnvironmentValues.__Key_textShape, &protocol witness table for EnvironmentValues.__Key_textShape, type metadata accessor for EnvironmentPropertyKey);
    v14 = v13;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v14, 0, v11);
  }

  if (v9 == 2 || ((v9 ^ a2) & 1) != 0)
  {
    goto LABEL_11;
  }

  if (result[10] != *&a3 || result[11] != *&a4)
  {
    goto LABEL_11;
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014TracksVelocityF033_FD9125BC1E04E33D1D7BE4A31225AA98LLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<TracksVelocityKey>, &type metadata for TracksVelocityKey, &protocol witness table for TracksVelocityKey, type metadata accessor for TransactionPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014TracksVelocityV033_FD9125BC1E04E33D1D7BE4A31225AA98LLVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<TracksVelocityKey>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

double *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018LineHeightMultipleF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(uint64_t *a1, double a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018LineHeightMultipleS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(*a1);
  if (!result || result[9] != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<LineHeightMultipleKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LineHeightMultipleKey>, &type metadata for LineHeightMultipleKey, &protocol witness table for LineHeightMultipleKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

double *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017MaximumLineHeightF0VG_Tt2g5(uint64_t *a1, double a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017MaximumLineHeightS0VG_Tt0g5(*a1);
  if (!result || result[9] != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<MaximumLineHeightKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MaximumLineHeightKey>, &type metadata for MaximumLineHeightKey, &protocol witness table for MaximumLineHeightKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

double *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017MinimumLineHeightF0VG_Tt2g5(uint64_t *a1, double a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017MinimumLineHeightS0VG_Tt0g5(*a1);
  if (!result || result[9] != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<MinimumLineHeightKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MinimumLineHeightKey>, &type metadata for MinimumLineHeightKey, &protocol witness table for MinimumLineHeightKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA019HyphenationDisabledF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(uint64_t *a1, char a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019HyphenationDisabledS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(*a1);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<HyphenationDisabledKey>>();
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HyphenationDisabledKey>, &type metadata for HyphenationDisabledKey, &protocol witness table for HyphenationDisabledKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA011WritingModeF0023_82074A2E22E8635055FCB3J8D5E40280LLVG_Tt2B5(uint64_t *a1, char a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011WritingModeS0023_82074A2E22E8635055FCB3W8D5E40280LLVG_Tt0g5(*a1);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<WritingModeKey>>();
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WritingModeKey>, &type metadata for WritingModeKey, &protocol witness table for WritingModeKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018StrikethroughStyleF0VG_Tt2B5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<StrikethroughStyleKey>, &type metadata for StrikethroughStyleKey, &protocol witness table for StrikethroughStyleKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  BloomFilter.init(hashValue:)(v7);
  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018StrikethroughStyleV0VG_Tt0B5(v6, v16);
  if (!v9 || (v10 = v9[9], v11 = v9[10], outlined copy of Text.LineStyle?(v10, v11), v12 = _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA018StrikethroughStyleD0V_Tt1B5(a2, a3, v10, v11), result = outlined consume of Text.LineStyle?(v10, v11), (v12 & 1) == 0))
  {
    v14 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<StrikethroughStyleKey>>();
    v15 = swift_allocObject();
    *(v15 + 72) = a2;
    *(v15 + 80) = a3;

    outlined copy of Text.LineStyle?(a2, a3);
    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v14);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA19UnredactSymbolImageVG_Tt2g5(uint64_t *a1, char a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA19UnredactSymbolImageVG_Tt0g5(*a1);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<UnredactSymbolImage>>();
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UnredactSymbolImage>, &type metadata for UnredactSymbolImage, &protocol witness table for UnredactSymbolImage, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE022LazySubviewMinorSizingF033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt2g5(uint64_t *a1, unsigned __int8 a2, uint64_t a3)
{
  v6 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>, &type metadata for EnvironmentValues.LazySubviewMinorSizingKey, &protocol witness table for EnvironmentValues.LazySubviewMinorSizingKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  BloomFilter.init(hashValue:)(v7);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE022LazySubviewMinorSizingV033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt0B5(v6, v16);
  if (!result || *(result + 72) != a2)
  {
    goto LABEL_8;
  }

  v10 = *(result + 80);
  if (!a3)
  {
    if (!v10)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (!v10 || (v11 = *(*a3 + 104), v12 = , v13 = v11(v12), result = , (v13 & 1) == 0))
  {
LABEL_8:
    v14 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>>();
    v15 = swift_allocObject();
    *(v15 + 72) = a2;
    *(v15 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v14);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA021SystemColorDefinitionF033_9E3352CE4697DF56A738786E16992848LLVG_Tt2g5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(*a1);
  if (!result || result[9] != a2)
  {
    v7 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<SystemColorDefinitionKey>>();
    v8 = swift_allocObject();
    *(v8 + 72) = a2;
    *(v8 + 80) = a3;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemColorDefinitionKey>, &type metadata for SystemColorDefinitionKey, &protocol witness table for SystemColorDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    v10 = v9;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v10, 0, v7);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE026DefaultSeparatorShapeStyleF033_43B3709EE4A9B8504AC89AFCD0D99421LLVG_Tt2g5(uint64_t *a1, int a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>, &type metadata for EnvironmentValues.DefaultSeparatorShapeStyleKey, &protocol witness table for EnvironmentValues.DefaultSeparatorShapeStyleKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE026DefaultSeparatorShapeStyleV033_43B3709EE4A9B8504AC89AFCD0D99421LLVG_Tt0B5(v4, v9) || (result = AGCompareValues(), !result))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>>();
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA031AccessibilitySettingsDefinitionF033_DD012B99EE4F6885B033D7D23FEF69C0LLVG_Tt2B5(uint64_t *a1, uint64_t a2, char a3)
{
  if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA031AccessibilitySettingsDefinitionS0031_DD012B99EE4F6885B033D7D23FEF69J0LLVG_Tt0g5(*a1) || (type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for AccessibilitySettingsDefinitionKey?, &type metadata for AccessibilitySettingsDefinitionKey, MEMORY[0x1E69E6720]), result = AGCompareValues(), !result))
  {
    v7 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>>();
    v8 = swift_allocObject();
    *(v8 + 72) = a2;
    *(v8 + 80) = a3 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>, &type metadata for AccessibilitySettingsDefinitionKey, &protocol witness table for AccessibilitySettingsDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    v10 = v9;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v10, 0, v7);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA010ContinuousF033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<ContinuousKey>, &type metadata for ContinuousKey, &protocol witness table for ContinuousKey, type metadata accessor for TransactionPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA010ContinuousV033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<ContinuousKey>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA30DefaultTextFieldTruncationMode33_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultTextFieldTruncationMode>, &type metadata for DefaultTextFieldTruncationMode, &protocol witness table for DefaultTextFieldTruncationMode, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA30DefaultTextFieldTruncationMode33_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(v4, v11);
  if (!result)
  {
    goto LABEL_9;
  }

  v8 = *(result + 72);
  if (v3 == 3)
  {
    if (v8 == 3)
    {
      return result;
    }

LABEL_9:
    v10 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultTextFieldTruncationMode>>();
    *(swift_allocObject() + 72) = v3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v10);
  }

  if (v8 == 3 || v8 != v3)
  {
    goto LABEL_9;
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013AvoidsOrphansF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AvoidsOrphansKey>, &type metadata for AvoidsOrphansKey, &protocol witness table for AvoidsOrphansKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013AvoidsOrphansV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<AvoidsOrphansKey>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA024TypesettingConfigurationF0VG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for TypesettingConfiguration();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v29 - v9;
  v11 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TypesettingConfigurationKey>, &type metadata for TypesettingConfigurationKey, &protocol witness table for TypesettingConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
  v13 = v12;
  BloomFilter.init(hashValue:)(v12);
  v14 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA024TypesettingConfigurationV0VG_Tt0B5(v11, v29[3]);
  if (!v14)
  {
    goto LABEL_8;
  }

  outlined init with copy of EnvironmentValues.CapitalizationContext(v14 + *(*v14 + 248), v10, type metadata accessor for TypesettingConfiguration);
  if (!specialized static TypesettingLanguage.Storage.== infix(_:_:)(a2, v10))
  {
    outlined destroy of EnvironmentValues.CapitalizationContext(v10, type metadata accessor for TypesettingConfiguration);
    goto LABEL_8;
  }

  v29[1] = v2;
  v15 = *(v5 + 20);
  v16 = *(a2 + v15);
  v17 = *(a2 + v15 + 8);
  v18 = &v10[v15];
  v19 = *v18;
  v20 = v18[8];
  result = outlined destroy of EnvironmentValues.CapitalizationContext(v10, type metadata accessor for TypesettingConfiguration);
  if (v17 == 1)
  {
    if (v16 == 0.0)
    {
      v22 = *&v19 == 0;
LABEL_15:
      if (v22)
      {
        v27 = v20;
      }

      else
      {
        v27 = 0;
      }

      if (v27)
      {
        return result;
      }

LABEL_8:
      outlined init with copy of EnvironmentValues.CapitalizationContext(a2, v7, type metadata accessor for TypesettingConfiguration);
      v23 = *a1;
      type metadata accessor for TypedElement<EnvironmentPropertyKey<TypesettingConfigurationKey>>();
      v24 = swift_allocObject();
      outlined init with copy of EnvironmentValues.CapitalizationContext(v7, v24 + *(*v24 + 248), type metadata accessor for TypesettingConfiguration);

      value = PropertyList.Element.init(keyType:before:after:)(v13, 0, v23).value;
      outlined destroy of EnvironmentValues.CapitalizationContext(v7, type metadata accessor for TypesettingConfiguration);
      *a1 = value;
    }

    if (*&v16 == 1)
    {
      v22 = *&v19 == 1;
      goto LABEL_15;
    }

    if (*&v19 > 1uLL)
    {
      v28 = v20;
    }

    else
    {
      v28 = 0;
    }

    if (v28 != 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v16 == v19)
    {
      v26 = v20;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V023ScrollPreservesVelocityF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollPreservesVelocityKey>, &type metadata for Transaction.ScrollPreservesVelocityKey, &protocol witness table for Transaction.ScrollPreservesVelocityKey, type metadata accessor for TransactionPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V023ScrollPreservesVelocityV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.ScrollPreservesVelocityKey>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V031ScrollContentAdjustmentBehaviorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2B5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>, &type metadata for Transaction.ScrollContentAdjustmentBehaviorKey, &protocol witness table for Transaction.ScrollContentAdjustmentBehaviorKey, type metadata accessor for TransactionPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V031ScrollContentAdjustmentBehaviorV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(v4, v9) || (result = AGCompareValues(), !result))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>>();
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v20 - v5;
  v7 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>, &type metadata for EnvironmentValues.__Key_lineHeight, &protocol witness table for EnvironmentValues.__Key_lineHeight, type metadata accessor for EnvironmentPropertyKey);
  v9 = v8;
  BloomFilter.init(hashValue:)(v8);
  v10 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt0B5(v7, v20[1]);
  if (!v10 || (v11 = MEMORY[0x1E6965590], v12 = MEMORY[0x1E69E6720], outlined init with copy of WeakBox<GlassContainerCache>(v10 + *(*v10 + 248), v6, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]), v13 = _s7SwiftUI22EnvironmentPropertyKeyV11valuesEqualySb5ValueQz_AFtFZAA0C6ValuesVAAE02__E11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLV_Tt1g5(a2, v6), result = outlined destroy of WeakBox<GlassContainerCache>(v6, &lazy cache variable for type metadata for AttributedString.LineHeight?, v11, v12), (v13 & 1) == 0))
  {
    v15 = MEMORY[0x1E6965590];
    v16 = MEMORY[0x1E69E6720];
    outlined init with copy of WeakBox<GlassContainerCache>(a2, v6, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
    v17 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>>();
    v18 = swift_allocObject();
    outlined init with copy of WeakBox<GlassContainerCache>(v6, v18 + *(*v18 + 248), &lazy cache variable for type metadata for AttributedString.LineHeight?, v15, v16);

    value = PropertyList.Element.init(keyType:before:after:)(v9, 0, v17).value;
    outlined destroy of WeakBox<GlassContainerCache>(v6, &lazy cache variable for type metadata for AttributedString.LineHeight?, v15, v16);
    *a1 = value;
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017BackgroundContextF033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt2B5(uint64_t *a1, char a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017BackgroundContextS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(*a1);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<BackgroundContextKey>>();
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundContextKey>, &type metadata for BackgroundContextKey, &protocol witness table for BackgroundContextKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015BackgroundStyleF033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015BackgroundStyleS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(*a1) || (type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for AnyShapeStyle?, &type metadata for AnyShapeStyle, MEMORY[0x1E69E6720]), result = AGCompareValues(), !result))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<BackgroundStyleKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundStyleKey>, &type metadata for BackgroundStyleKey, &protocol witness table for BackgroundStyleKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt2B5(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>, &type metadata for EnvironmentValues.__Key_attributeScopeContext, &protocol witness table for EnvironmentValues.__Key_attributeScopeContext, type metadata accessor for EnvironmentPropertyKey);
  v12 = v11;
  BloomFilter.init(hashValue:)(v11);
  v13 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt0B5(v10, v21);
  if (!v13 || v13[11] != a4)
  {
    goto LABEL_7;
  }

  v14 = v13[9];
  v15 = v13[10];

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI32AnyAttributedTextValueConstraintV_Tt1g5(a2, v14) & 1) == 0)
  {

    goto LABEL_7;
  }

  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt1g5(a3, v15);
  v20 = v16;

  if ((v20 & 1) == 0)
  {
LABEL_7:
    v18 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>>();
    v19 = swift_allocObject();
    v19[9] = a2;
    v19[10] = a3;
    v19[11] = a4;
    v19[12] = a5;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v12, 0, v18);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE028PlatformHiddenRepresentationF033_EEBDF553DE8212BCBDF456E235E95E1ELLV_Tt2g5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.PlatformHiddenRepresentationKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028PlatformHiddenRepresentationV033_EEBDF553DE8212BCBDF456E235E95E1ELLV_Tt0B5(v6, v10) || (type metadata accessor for PlatformHiddenRepresentable.Type?(), result = AGCompareValues(), !result))
  {
    v8 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.PlatformHiddenRepresentationKey>, &type metadata for _GraphInputs.PlatformHiddenRepresentationKey, &protocol witness table for _GraphInputs.PlatformHiddenRepresentationKey, type metadata accessor for TypedElement);
    v9 = swift_allocObject();
    *(v9 + 72) = a2;
    *(v9 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.PlatformHiddenRepresentationKey, 0, v8);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027HiddenAccessibilityProviderF033_EEBDF553DE8212BCBDF456E235E95E1ELLV_Tt2g5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.HiddenAccessibilityProviderKey);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE027HiddenAccessibilityProviderV033_EEBDF553DE8212BCBDF456E235E95E1ELLV_Tt0B5(v6, v10) || (type metadata accessor for HiddenAccessibilityProvider.Type?(), result = AGCompareValues(), !result))
  {
    v8 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.HiddenAccessibilityProviderKey>, &type metadata for _GraphInputs.HiddenAccessibilityProviderKey, &protocol witness table for _GraphInputs.HiddenAccessibilityProviderKey, type metadata accessor for TypedElement);
    v9 = swift_allocObject();
    *(v9 + 72) = a2;
    *(v9 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.HiddenAccessibilityProviderKey, 0, v8);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE017RenderingRootViewF033_F748B30B59970FC73194935C526E3031LLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>, &type metadata for EnvironmentValues.RenderingRootViewKey, &protocol witness table for EnvironmentValues.RenderingRootViewKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE017RenderingRootViewV033_F748B30B59970FC73194935C526E3031LLVG_Tt0B5(v4, v14[0]);
  v8 = MEMORY[0x1E69E7C98];
  if (!v7 || (outlined init with copy of HoverEffectContext?((v7 + 9), v14, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, type metadata accessor for WeakBox), type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, v8 + 8, type metadata accessor for WeakBox), v9 = AGCompareValues(), result = outlined destroy of HoverEffectContext?(v14, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, v8 + 8, type metadata accessor for WeakBox), !v9))
  {
    outlined init with copy of HoverEffectContext?(a2, v14, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, v8 + 8, type metadata accessor for WeakBox);
    v11 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>>();
    v12 = swift_allocObject();
    outlined init with copy of HoverEffectContext?(v14, v12 + 72, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, v8 + 8, type metadata accessor for WeakBox);

    value = PropertyList.Element.init(keyType:before:after:)(v6, 0, v11).value;
    outlined destroy of HoverEffectContext?(v14, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, v8 + 8, type metadata accessor for WeakBox);
    *a1 = value;
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE019PlatformColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2B5(uint64_t *a1, char a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE019PlatformColorSchemeS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(*a1);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>>();
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>, &type metadata for EnvironmentValues.PlatformColorSchemeKey, &protocol witness table for EnvironmentValues.PlatformColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013AppearsActiveF0VG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AppearsActiveKey>, &type metadata for AppearsActiveKey, &protocol witness table for AppearsActiveKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013AppearsActiveV0VG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<AppearsActiveKey>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO14AppearsFocusedVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused>, &type metadata for WindowEnvironmentKeys.AppearsFocused, &protocol witness table for WindowEnvironmentKeys.AppearsFocused, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06WindowW4KeysO14AppearsFocusedVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO11AppearsMainVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>, &type metadata for WindowEnvironmentKeys.AppearsMain, &protocol witness table for WindowEnvironmentKeys.AppearsMain, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06WindowW4KeysO11AppearsMainVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO9IsFocusedVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused>, &type metadata for WindowEnvironmentKeys.IsFocused, &protocol witness table for WindowEnvironmentKeys.IsFocused, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06WindowW4KeysO9IsFocusedVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO6IsMainVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain>, &type metadata for WindowEnvironmentKeys.IsMain, &protocol witness table for WindowEnvironmentKeys.IsMain, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA06WindowW4KeysO6IsMainVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>, &type metadata for EnvironmentValues.__Key_textWritingDirection, &protocol witness table for EnvironmentValues.__Key_textWritingDirection, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt0B5(v4, v10);
  if (!result)
  {
    goto LABEL_7;
  }

  v8 = *(result + 72);
  if (v3 == 2)
  {
    if (v8 == 2)
    {
      return result;
    }

LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>>();
    *(swift_allocObject() + 72) = v3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);
  }

  if (v8 == 2 || ((v8 ^ v3) & 1) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA09TextScaleF0VG_Tt2B5(uint64_t *a1, int a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextScaleKey>, &type metadata for TextScaleKey, &protocol witness table for TextScaleKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA09TextScaleV0VG_Tt0B5(v4, v10);
  if (!result)
  {
    goto LABEL_8;
  }

  v8 = *(result + 72);
  if (a2 != 2 && v8 != 2)
  {
    if (((v8 ^ a2) & 1) == 0)
    {
      return result;
    }

LABEL_8:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<TextScaleKey>>();
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);
  }

  if (a2 != 2 || v8 != 2)
  {
    goto LABEL_8;
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F11_glassFrost33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>, &type metadata for EnvironmentValues.__Key_glassFrost, &protocol witness table for EnvironmentValues.__Key_glassFrost, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V11_glassFrost33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != a2)
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>>();
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_glassDiffusion33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt2B5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>, &type metadata for EnvironmentValues.__Key_glassDiffusion, &protocol witness table for EnvironmentValues.__Key_glassDiffusion, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V15_glassDiffusion33_0BFB0E96643D8B89AA134FA2D1387AC4LLVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE019WatchDisplayVariantF0VG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE019WatchDisplayVariantS0VG_Tt0g5(*a1);
  if (!result || *(result + 72) != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>, &type metadata for EnvironmentValues.WatchDisplayVariantKey, &protocol witness table for EnvironmentValues.WatchDisplayVariantKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA026DisablesContentTransitionsF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<DisablesContentTransitionsKey>, &type metadata for DisablesContentTransitionsKey, &protocol witness table for DisablesContentTransitionsKey, type metadata accessor for TransactionPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA026DisablesContentTransitionsV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<DisablesContentTransitionsKey>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016DisableLinkColorF0030_7AFAB46D18FA6D189589CFA78D8B2R1ELLVG_Tt2g5(uint64_t *a1, char a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE016DisableLinkColorS033_7AFAB46D18FA6D189589CFA78D8B2B2ELLVG_Tt0g5(*a1);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey>>();
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey>, &type metadata for EnvironmentValues.DisableLinkColorKey, &protocol witness table for EnvironmentValues.DisableLinkColorKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA020ParagraphTypesettingF033_D39DBD719189F2769C15C168465CE407LLVG_Tt2B5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ParagraphTypesettingKey>, &type metadata for ParagraphTypesettingKey, &protocol witness table for ParagraphTypesettingKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA020ParagraphTypesettingV033_D39DBD719189F2769C15C168465CE407LLVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<ParagraphTypesettingKey>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016HeaderProminenceF0VG_Tt2B5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HeaderProminenceKey>, &type metadata for HeaderProminenceKey, &protocol witness table for HeaderProminenceKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016HeaderProminenceV0VG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<HeaderProminenceKey>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV019AllowedDynamicRangeF033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV019AllowedDynamicRangeS033_B0F5FD51133E70141176B7B8AC4E9712LLVG_Tt0g5(*a1);
  if (!result || *(result + 72) != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey>, &type metadata for EnvironmentValues.AllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.AllowedDynamicRangeKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV022MaxAllowedDynamicRangeF0VG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV022MaxAllowedDynamicRangeS0VG_Tt0g5(*a1);
  if (!result || *(result + 72) != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>, &type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.MaxAllowedDynamicRangeKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA028SymbolBackgroundCornerRadiusF033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt2g5(uint64_t *a1, uint64_t a2, char a3)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA028SymbolBackgroundCornerRadiusS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(*a1);
  if (!result)
  {
    goto LABEL_8;
  }

  v7 = *(result + 80);
  if (a3)
  {
    if (*(result + 80))
    {
      return result;
    }

LABEL_8:
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>>();
    v9 = swift_allocObject();
    *(v9 + 72) = *&a2;
    *(v9 + 80) = a3 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>, &type metadata for SymbolBackgroundCornerRadiusKey, &protocol witness table for SymbolBackgroundCornerRadiusKey, type metadata accessor for EnvironmentPropertyKey);
    v11 = v10;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v11, 0, v8);
  }

  if (*(result + 9) != *&a2)
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_8;
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA026SymbolsGrowToFitBackgroundF033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt2g5(uint64_t *a1, char a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA026SymbolsGrowToFitBackgroundS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(*a1);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>>();
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>, &type metadata for SymbolsGrowToFitBackgroundKey, &protocol witness table for SymbolsGrowToFitBackgroundKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance>, &type metadata for EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance, &protocol witness table for EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015IsVisionEnabledF0VG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsVisionEnabledKey>, &type metadata for IsVisionEnabledKey, &protocol witness table for IsVisionEnabledKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015IsVisionEnabledV0VG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<IsVisionEnabledKey>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA4TextVAAE17AlignmentStrategyV0gF0VG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey>, &type metadata for Text.AlignmentStrategy.EnvironmentKey, &protocol witness table for Text.AlignmentStrategy.EnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA4TextVAAE17AlignmentStrategyV0wV0VG_Tt0B5(v4, v10);
  if (!result)
  {
    goto LABEL_7;
  }

  v8 = *(result + 72);
  if (v3 == 2)
  {
    if (v8 == 2)
    {
      return result;
    }

LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey>>();
    *(swift_allocObject() + 72) = v3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);
  }

  if (v8 == 2 || ((v8 ^ v3) & 1) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA010SymbolFontF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010SymbolFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
  if (!result)
  {
    goto LABEL_7;
  }

  v5 = *(result + 72);
  if (!a2)
  {
    if (!v5)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (!v5 || (v6 = *(*a2 + 112), v7 = , v8 = v6(v7), result = , (v8 & 1) == 0))
  {
LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<SymbolFontKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolFontKey>, &type metadata for SymbolFontKey, &protocol witness table for SymbolFontKey, type metadata accessor for EnvironmentPropertyKey);
    v11 = v10;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v11, 0, v9);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017DefaultSymbolFontF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017DefaultSymbolFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
  if (!result)
  {
    goto LABEL_7;
  }

  v5 = *(result + 72);
  if (!a2)
  {
    if (!v5)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (!v5 || (v6 = *(*a2 + 112), v7 = , v8 = v6(v7), result = , (v8 & 1) == 0))
  {
LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultSymbolFontKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultSymbolFontKey>, &type metadata for DefaultSymbolFontKey, &protocol witness table for DefaultSymbolFontKey, type metadata accessor for EnvironmentPropertyKey);
    v11 = v10;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v11, 0, v9);
  }

  return result;
}

double *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015DefaultTrackingF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(uint64_t *a1, double a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultTrackingKey>, &type metadata for DefaultTrackingKey, &protocol witness table for DefaultTrackingKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015DefaultTrackingV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(v4, v9);
  if (!result || result[9] != a2)
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultTrackingKey>>();
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

double *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA021DefaultBaselineOffsetF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(uint64_t *a1, double a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultBaselineOffsetKey>, &type metadata for DefaultBaselineOffsetKey, &protocol witness table for DefaultBaselineOffsetKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021DefaultBaselineOffsetV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(v4, v9);
  if (!result || result[9] != a2)
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultBaselineOffsetKey>>();
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA010InTouchBarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InTouchBarKey>, &type metadata for InTouchBarKey, &protocol witness table for InTouchBarKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010InTouchBarV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<InTouchBarKey>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018DefaultPixelLengthF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(uint64_t *a1, uint64_t a2, char a3)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018DefaultPixelLengthS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
  if (!result)
  {
    goto LABEL_8;
  }

  v7 = *(result + 80);
  if (a3)
  {
    if (*(result + 80))
    {
      return result;
    }

LABEL_8:
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultPixelLengthKey>>();
    v9 = swift_allocObject();
    *(v9 + 72) = *&a2;
    *(v9 + 80) = a3 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultPixelLengthKey>, &type metadata for DefaultPixelLengthKey, &protocol witness table for DefaultPixelLengthKey, type metadata accessor for EnvironmentPropertyKey);
    v11 = v10;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v11, 0, v8);
  }

  if (*(result + 9) != *&a2)
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_8;
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016DividerThicknessF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DividerThicknessKey>, &type metadata for DividerThicknessKey, &protocol witness table for DividerThicknessKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  BloomFilter.init(hashValue:)(v7);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016DividerThicknessV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(v6, v13);
  if (!result)
  {
    goto LABEL_8;
  }

  v10 = *(result + 80);
  if (a3)
  {
    if (*(result + 80))
    {
      return result;
    }

LABEL_8:
    v11 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DividerThicknessKey>>();
    v12 = swift_allocObject();
    *(v12 + 72) = *&a2;
    *(v12 + 80) = a3 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v11);
  }

  if (*(result + 9) != *&a2)
  {
    v10 = 1;
  }

  if (v10)
  {
    goto LABEL_8;
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA020DefaultRenderingModeF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2B5(uint64_t *a1, char a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020DefaultRenderingModeS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultRenderingModeKey>>();
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultRenderingModeKey>, &type metadata for DefaultRenderingModeKey, &protocol witness table for DefaultRenderingModeKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA021AllowsVibrantBlendingF0VG_Tt2g5(uint64_t *a1, int a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021AllowsVibrantBlendingS0VG_Tt0g5(*a1);
  if (!result)
  {
    goto LABEL_7;
  }

  v5 = *(result + 72);
  if (a2 == 2)
  {
    if (v5 == 2)
    {
      return result;
    }

LABEL_7:
    v6 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<AllowsVibrantBlendingKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsVibrantBlendingKey>, &type metadata for AllowsVibrantBlendingKey, &protocol witness table for AllowsVibrantBlendingKey, type metadata accessor for EnvironmentPropertyKey);
    v8 = v7;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v6);
  }

  if (v5 == 2 || ((v5 ^ a2) & 1) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0g5(*a1);
  if (!result || *(result + 72) != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>, &type metadata for EnvironmentValues.__Key_materialColorRenderingMode, &protocol witness table for EnvironmentValues.__Key_materialColorRenderingMode, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA024SystemMaterialDefinitionF033_4075E3A4E56336DD739D990E781CBB12LLVG_Tt2g5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA024SystemMaterialDefinitionS033_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0g5(*a1);
  if (!result)
  {
    goto LABEL_7;
  }

  v7 = result[9];
  if (!a2)
  {
    if (!v7)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (!v7 || v7 != a2)
  {
LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<SystemMaterialDefinitionKey>>();
    v10 = swift_allocObject();
    *(v10 + 72) = a2;
    *(v10 + 80) = a3;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemMaterialDefinitionKey>, &type metadata for SystemMaterialDefinitionKey, &protocol witness table for SystemMaterialDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    v12 = v11;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v12, 0, v9);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013PlacementTintF033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlacementTintKey>, &type metadata for PlacementTintKey, &protocol witness table for PlacementTintKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013PlacementTintV033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt0B5(v4, v9) || (type metadata accessor for [TintPlacement : AnyShapeStyle](), result = AGCompareValues(), !result))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<PlacementTintKey>>();
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14BodyCountInputVyAA21_ViewModifier_ContentVyAA015SafeAreaPaddingK0VGG_Tt2B5Tm(Swift::UInt *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(Swift::UInt), unint64_t *a6, void (*a7)(uint64_t))
{
  v12.value = *a1;
  v13 = a4(0);
  BloomFilter.init(hashValue:)(v13);
  if (!a5(v12.value) || (type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for Stack<(_:)>, type metadata accessor for (_:), type metadata accessor for Stack), result = AGCompareValues(), !result))
  {
    v15 = *a1;
    type metadata accessor for TypedElement<BodyInput<_ViewModifier_Content<GlassEffectLocalModifier>>>(0, a6, a7);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v13, 0, v15);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA0u17CaptureProtectionsT0VGG_Tt2B5Tm(Swift::UInt *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(Swift::UInt), unint64_t *a6, void (*a7)(uint64_t))
{
  v12.value = *a1;
  v13 = a4(0);
  BloomFilter.init(hashValue:)(v13);
  v14 = a5(v12.value);
  if (!v14 || (v15 = *(v14 + 72), , v16 = _s7SwiftUI5StackOAASQRzlE2eeoiySbACyxG_AEtFZAA16BodyInputElement33_2BA0A33A15B7F322F46AFB9D0D1A262DLLO_Tt1B5(a2, v15), result = , (v16 & 1) == 0))
  {
    v18 = *a1;
    type metadata accessor for TypedElement<BodyInput<_ViewModifier_Content<GlassEffectLocalModifier>>>(0, a6, a7);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v13, 0, v18);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>, &type metadata for EnvironmentValues.__Key_glassEffectBackdropObserver, &protocol witness table for EnvironmentValues.__Key_glassEffectBackdropObserver, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>, &type metadata for EnvironmentValues.__Key_glassEffectBackdropObserver, &protocol witness table for EnvironmentValues.__Key_glassEffectBackdropObserver, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t type metadata accessor for (_:_:)()
{
  result = lazy cache variable for type metadata for (_:_:);
  if (!lazy cache variable for type metadata for (_:_:))
  {
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:);
  if (!lazy cache variable for type metadata for (_:_:))
  {
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:));
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>, &type metadata for EnvironmentValues.__Key_glassEffectBackdropObserver, &protocol witness table for EnvironmentValues.__Key_glassEffectBackdropObserver, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<TextSuffixKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TextSuffixKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSuffixKey>, &type metadata for TextSuffixKey, &protocol witness table for TextSuffixKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextSuffixKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TextSuffixKey>>);
    }
  }
}

void type metadata accessor for BodyCountInput<_ViewModifier_Content<SafeAreaPaddingModifier>>()
{
  if (!lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<SafeAreaPaddingModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<SafeAreaPaddingModifier>, lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier);
    v0 = type metadata accessor for BodyCountInput();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<SafeAreaPaddingModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier()
{
  result = lazy protocol witness table cache variable for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier;
  if (!lazy protocol witness table cache variable for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier);
  }

  return result;
}

void type metadata accessor for BodyInput<_ViewModifier_Content<SafeAreaPaddingModifier>>()
{
  if (!lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<SafeAreaPaddingModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<SafeAreaPaddingModifier>, lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier);
    v0 = type metadata accessor for BodyInput();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<SafeAreaPaddingModifier>>);
    }
  }
}

void type metadata accessor for BodyCountInput<_ViewModifier_Content<FlexibleButtonFrameModifier>>()
{
  if (!lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<FlexibleButtonFrameModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<FlexibleButtonFrameModifier>, lazy protocol witness table accessor for type FlexibleButtonFrameModifier and conformance FlexibleButtonFrameModifier);
    v0 = type metadata accessor for BodyCountInput();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<FlexibleButtonFrameModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type FlexibleButtonFrameModifier and conformance FlexibleButtonFrameModifier()
{
  result = lazy protocol witness table cache variable for type FlexibleButtonFrameModifier and conformance FlexibleButtonFrameModifier;
  if (!lazy protocol witness table cache variable for type FlexibleButtonFrameModifier and conformance FlexibleButtonFrameModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlexibleButtonFrameModifier and conformance FlexibleButtonFrameModifier);
  }

  return result;
}

void type metadata accessor for BodyInput<_ViewModifier_Content<FlexibleButtonFrameModifier>>()
{
  if (!lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<FlexibleButtonFrameModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<FlexibleButtonFrameModifier>, lazy protocol witness table accessor for type FlexibleButtonFrameModifier and conformance FlexibleButtonFrameModifier);
    v0 = type metadata accessor for BodyInput();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<FlexibleButtonFrameModifier>>);
    }
  }
}

void type metadata accessor for BodyCountInput<_ViewModifier_Content<ContentCaptureProtectionViewModifier>>()
{
  if (!lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<ContentCaptureProtectionViewModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ContentCaptureProtectionViewModifier>, lazy protocol witness table accessor for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier);
    v0 = type metadata accessor for BodyCountInput();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<ContentCaptureProtectionViewModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier()
{
  result = lazy protocol witness table cache variable for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier;
  if (!lazy protocol witness table cache variable for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier);
  }

  return result;
}

void type metadata accessor for BodyInput<_ViewModifier_Content<ContentCaptureProtectionViewModifier>>()
{
  if (!lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<ContentCaptureProtectionViewModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ContentCaptureProtectionViewModifier>, lazy protocol witness table accessor for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier);
    v0 = type metadata accessor for BodyInput();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<ContentCaptureProtectionViewModifier>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<PlacementTintKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<PlacementTintKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlacementTintKey>, &type metadata for PlacementTintKey, &protocol witness table for PlacementTintKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PlacementTintKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<PlacementTintKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<PlacementTintKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<PlacementTintKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<PlacementTintKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlacementTintKey>, &type metadata for PlacementTintKey, &protocol witness table for PlacementTintKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<PlacementTintKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<PlacementTintKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<PlacementTintKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlacementTintKey>, &type metadata for PlacementTintKey, &protocol witness table for PlacementTintKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PlacementTintKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<PlacementTintKey>>);
    }
  }
}

void type metadata accessor for Stack<ImageStyleProtocol.Type>()
{
  if (!lazy cache variable for type metadata for Stack<ImageStyleProtocol.Type>)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for ImageStyleProtocol.Type, &lazy cache variable for type metadata for ImageStyleProtocol);
    v0 = type metadata accessor for Stack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Stack<ImageStyleProtocol.Type>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<SystemColorSchemeKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SystemColorSchemeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemColorSchemeKey>, &type metadata for SystemColorSchemeKey, &protocol witness table for SystemColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemColorSchemeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SystemColorSchemeKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey>, &type metadata for ExplicitPreferredColorSchemeKey, &protocol witness table for ExplicitPreferredColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityOnOffLabelsKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityOnOffLabelsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityOnOffLabelsKey>, &type metadata for AccessibilityOnOffLabelsKey, &protocol witness table for AccessibilityOnOffLabelsKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityOnOffLabelsKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityOnOffLabelsKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityPlayAnimatedImagesKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityPlayAnimatedImagesKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityPlayAnimatedImagesKey>, &type metadata for AccessibilityPlayAnimatedImagesKey, &protocol witness table for AccessibilityPlayAnimatedImagesKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityPlayAnimatedImagesKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityPlayAnimatedImagesKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityDimFlashingLightsKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityDimFlashingLightsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityDimFlashingLightsKey>, &type metadata for AccessibilityDimFlashingLightsKey, &protocol witness table for AccessibilityDimFlashingLightsKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityDimFlashingLightsKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityDimFlashingLightsKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityInvertColorsKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityInvertColorsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityInvertColorsKey>, &type metadata for AccessibilityInvertColorsKey, &protocol witness table for AccessibilityInvertColorsKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityInvertColorsKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityInvertColorsKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityDifferentiateWithoutColorKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityDifferentiateWithoutColorKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityDifferentiateWithoutColorKey>, &type metadata for AccessibilityDifferentiateWithoutColorKey, &protocol witness table for AccessibilityDifferentiateWithoutColorKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityDifferentiateWithoutColorKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityDifferentiateWithoutColorKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<SystemMaterialDefinitionKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SystemMaterialDefinitionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemMaterialDefinitionKey>, &type metadata for SystemMaterialDefinitionKey, &protocol witness table for SystemMaterialDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemMaterialDefinitionKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SystemMaterialDefinitionKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>, &type metadata for EnvironmentValues.__Key_materialColorRenderingMode, &protocol witness table for EnvironmentValues.__Key_materialColorRenderingMode, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>, &type metadata for EnvironmentValues.__Key_materialColorRenderingMode, &protocol witness table for EnvironmentValues.__Key_materialColorRenderingMode, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<IsLowPowerModeEnabledKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<IsLowPowerModeEnabledKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsLowPowerModeEnabledKey>, &type metadata for IsLowPowerModeEnabledKey, &protocol witness table for IsLowPowerModeEnabledKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<IsLowPowerModeEnabledKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<IsLowPowerModeEnabledKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<AllowsVibrantBlendingKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AllowsVibrantBlendingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsVibrantBlendingKey>, &type metadata for AllowsVibrantBlendingKey, &protocol witness table for AllowsVibrantBlendingKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AllowsVibrantBlendingKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AllowsVibrantBlendingKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<AllowsVibrantBlendingKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<AllowsVibrantBlendingKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AllowsVibrantBlendingKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsVibrantBlendingKey>, &type metadata for AllowsVibrantBlendingKey, &protocol witness table for AllowsVibrantBlendingKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AllowsVibrantBlendingKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DisplayCornerRadiusKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DisplayCornerRadiusKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayCornerRadiusKey>, &type metadata for DisplayCornerRadiusKey, &protocol witness table for DisplayCornerRadiusKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DisplayCornerRadiusKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DisplayCornerRadiusKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultRenderingModeKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultRenderingModeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultRenderingModeKey>, &type metadata for DefaultRenderingModeKey, &protocol witness table for DefaultRenderingModeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultRenderingModeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultRenderingModeKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DividerThicknessKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DividerThicknessKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DividerThicknessKey>, &type metadata for DividerThicknessKey, &protocol witness table for DividerThicknessKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DividerThicknessKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DividerThicknessKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DividerThicknessKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DividerThicknessKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DividerThicknessKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DividerThicknessKey>, &type metadata for DividerThicknessKey, &protocol witness table for DividerThicknessKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DividerThicknessKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DividerThicknessKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DividerThicknessKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DividerThicknessKey>, &type metadata for DividerThicknessKey, &protocol witness table for DividerThicknessKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DividerThicknessKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DividerThicknessKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultPixelLengthKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultPixelLengthKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultPixelLengthKey>, &type metadata for DefaultPixelLengthKey, &protocol witness table for DefaultPixelLengthKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultPixelLengthKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultPixelLengthKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultPixelLengthKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultPixelLengthKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultPixelLengthKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultPixelLengthKey>, &type metadata for DefaultPixelLengthKey, &protocol witness table for DefaultPixelLengthKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultPixelLengthKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<InTouchBarKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<InTouchBarKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<InTouchBarKey>, &type metadata for InTouchBarKey, &protocol witness table for InTouchBarKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<InTouchBarKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<InTouchBarKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<InTouchBarKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<InTouchBarKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<InTouchBarKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<InTouchBarKey>, &type metadata for InTouchBarKey, &protocol witness table for InTouchBarKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<InTouchBarKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<InTouchBarKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<InTouchBarKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<InTouchBarKey>, &type metadata for InTouchBarKey, &protocol witness table for InTouchBarKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<InTouchBarKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<InTouchBarKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultBaselineOffsetKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultBaselineOffsetKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultBaselineOffsetKey>, &type metadata for DefaultBaselineOffsetKey, &protocol witness table for DefaultBaselineOffsetKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultBaselineOffsetKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultBaselineOffsetKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultTrackingKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultTrackingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultTrackingKey>, &type metadata for DefaultTrackingKey, &protocol witness table for DefaultTrackingKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultTrackingKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultTrackingKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultSymbolFontKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultSymbolFontKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultSymbolFontKey>, &type metadata for DefaultSymbolFontKey, &protocol witness table for DefaultSymbolFontKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultSymbolFontKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultSymbolFontKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultSymbolFontKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultSymbolFontKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultSymbolFontKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultSymbolFontKey>, &type metadata for DefaultSymbolFontKey, &protocol witness table for DefaultSymbolFontKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultSymbolFontKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultSymbolFontKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultSymbolFontKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultSymbolFontKey>, &type metadata for DefaultSymbolFontKey, &protocol witness table for DefaultSymbolFontKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultSymbolFontKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultSymbolFontKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<SymbolFontKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SymbolFontKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolFontKey>, &type metadata for SymbolFontKey, &protocol witness table for SymbolFontKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolFontKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SymbolFontKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolFontKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<SymbolFontKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SymbolFontKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolFontKey>, &type metadata for SymbolFontKey, &protocol witness table for SymbolFontKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SymbolFontKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<SymbolFontKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SymbolFontKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolFontKey>, &type metadata for SymbolFontKey, &protocol witness table for SymbolFontKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolFontKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SymbolFontKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<FontKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<FontKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontKey>, &type metadata for FontKey, &protocol witness table for FontKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<FontKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<FontKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey>, &type metadata for Text.AlignmentStrategy.EnvironmentKey, &protocol witness table for Text.AlignmentStrategy.EnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey>, &type metadata for Text.AlignmentStrategy.EnvironmentKey, &protocol witness table for Text.AlignmentStrategy.EnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<IsVisionEnabledKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<IsVisionEnabledKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsVisionEnabledKey>, &type metadata for IsVisionEnabledKey, &protocol witness table for IsVisionEnabledKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<IsVisionEnabledKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<IsVisionEnabledKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>, &type metadata for EnvironmentValues.LazySubviewMinorSizingKey, &protocol witness table for EnvironmentValues.LazySubviewMinorSizingKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>, &type metadata for EnvironmentValues.LazySubviewMinorSizingKey, &protocol witness table for EnvironmentValues.LazySubviewMinorSizingKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>, &type metadata for EnvironmentValues.LazySubviewMinorSizingKey, &protocol witness table for EnvironmentValues.LazySubviewMinorSizingKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance>, &type metadata for EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance, &protocol witness table for EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance>, &type metadata for EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance, &protocol witness table for EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance>, &type metadata for EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance, &protocol witness table for EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_enforceButtonDestructiveRoleAppearance>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<SystemColorDefinitionKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SystemColorDefinitionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemColorDefinitionKey>, &type metadata for SystemColorDefinitionKey, &protocol witness table for SystemColorDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemColorDefinitionKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SystemColorDefinitionKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>, &type metadata for EnvironmentValues.PlatformColorSchemeKey, &protocol witness table for EnvironmentValues.PlatformColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>, &type metadata for EnvironmentValues.PlatformColorSchemeKey, &protocol witness table for EnvironmentValues.PlatformColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>, &type metadata for SymbolsGrowToFitBackgroundKey, &protocol witness table for SymbolsGrowToFitBackgroundKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>, &type metadata for SymbolsGrowToFitBackgroundKey, &protocol witness table for SymbolsGrowToFitBackgroundKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>, &type metadata for SymbolBackgroundCornerRadiusKey, &protocol witness table for SymbolBackgroundCornerRadiusKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>, &type metadata for SymbolBackgroundCornerRadiusKey, &protocol witness table for SymbolBackgroundCornerRadiusKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>, &type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.MaxAllowedDynamicRangeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>, &type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.MaxAllowedDynamicRangeKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey>, &type metadata for EnvironmentValues.AllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.AllowedDynamicRangeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<HeaderProminenceKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<HeaderProminenceKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HeaderProminenceKey>, &type metadata for HeaderProminenceKey, &protocol witness table for HeaderProminenceKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HeaderProminenceKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<HeaderProminenceKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<HeaderProminenceKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<HeaderProminenceKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<HeaderProminenceKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HeaderProminenceKey>, &type metadata for HeaderProminenceKey, &protocol witness table for HeaderProminenceKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<HeaderProminenceKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<HeaderProminenceKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<HeaderProminenceKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HeaderProminenceKey>, &type metadata for HeaderProminenceKey, &protocol witness table for HeaderProminenceKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HeaderProminenceKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<HeaderProminenceKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<ParagraphTypesettingKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ParagraphTypesettingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ParagraphTypesettingKey>, &type metadata for ParagraphTypesettingKey, &protocol witness table for ParagraphTypesettingKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ParagraphTypesettingKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ParagraphTypesettingKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource>, &type metadata for EnvironmentValues.__Key_timeDataSource, &protocol witness table for EnvironmentValues.__Key_timeDataSource, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource>, &type metadata for EnvironmentValues.__Key_timeDataSource, &protocol witness table for EnvironmentValues.__Key_timeDataSource, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey>, &type metadata for EnvironmentValues.DisableLinkColorKey, &protocol witness table for EnvironmentValues.DisableLinkColorKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AllowsVibrantBlendingKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AllowsVibrantBlendingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsVibrantBlendingKey>, &type metadata for AllowsVibrantBlendingKey, &protocol witness table for AllowsVibrantBlendingKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AllowsVibrantBlendingKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AllowsVibrantBlendingKey>>);
    }
  }
}

void type metadata accessor for TypedElement<TransactionPropertyKey<DisablesContentTransitionsKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<DisablesContentTransitionsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<DisablesContentTransitionsKey>, &type metadata for DisablesContentTransitionsKey, &protocol witness table for DisablesContentTransitionsKey, type metadata accessor for TransactionPropertyKey);
    lazy protocol witness table accessor for type TransactionPropertyKey<DisablesContentTransitionsKey> and conformance TransactionPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<DisablesContentTransitionsKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TransactionPropertyKey<DisablesContentTransitionsKey> and conformance TransactionPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type TransactionPropertyKey<DisablesContentTransitionsKey> and conformance TransactionPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<DisablesContentTransitionsKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<DisablesContentTransitionsKey>, &type metadata for DisablesContentTransitionsKey, &protocol witness table for DisablesContentTransitionsKey, type metadata accessor for TransactionPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransactionPropertyKey<DisablesContentTransitionsKey> and conformance TransactionPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>, &type metadata for EnvironmentValues.WatchDisplayVariantKey, &protocol witness table for EnvironmentValues.WatchDisplayVariantKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>, &type metadata for EnvironmentValues.WatchDisplayVariantKey, &protocol witness table for EnvironmentValues.WatchDisplayVariantKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>, &type metadata for EnvironmentValues.GlassEffectContainerTintConfigurationKey, &protocol witness table for EnvironmentValues.GlassEffectContainerTintConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>, &type metadata for EnvironmentValues.GlassEffectContainerTintConfigurationKey, &protocol witness table for EnvironmentValues.GlassEffectContainerTintConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>, &type metadata for EnvironmentValues.GlassEffectContainerTintConfigurationKey, &protocol witness table for EnvironmentValues.GlassEffectContainerTintConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>, &type metadata for EnvironmentValues.__Key_glassDiffusion, &protocol witness table for EnvironmentValues.__Key_glassDiffusion, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>, &type metadata for EnvironmentValues.__Key_glassDiffusion, &protocol witness table for EnvironmentValues.__Key_glassDiffusion, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>, &type metadata for EnvironmentValues.__Key_glassDiffusion, &protocol witness table for EnvironmentValues.__Key_glassDiffusion, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassDiffusion>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>, &type metadata for EnvironmentValues.__Key_glassFrost, &protocol witness table for EnvironmentValues.__Key_glassFrost, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>, &type metadata for EnvironmentValues.__Key_glassFrost, &protocol witness table for EnvironmentValues.__Key_glassFrost, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>, &type metadata for EnvironmentValues.__Key_glassFrost, &protocol witness table for EnvironmentValues.__Key_glassFrost, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassFrost>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<TextScaleKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TextScaleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextScaleKey>, &type metadata for TextScaleKey, &protocol witness table for TextScaleKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextScaleKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TextScaleKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>, &type metadata for EnvironmentValues.__Key_textWritingDirection, &protocol witness table for EnvironmentValues.__Key_textWritingDirection, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain>, &type metadata for WindowEnvironmentKeys.IsMain, &protocol witness table for WindowEnvironmentKeys.IsMain, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain>, &type metadata for WindowEnvironmentKeys.IsMain, &protocol witness table for WindowEnvironmentKeys.IsMain, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain>, &type metadata for WindowEnvironmentKeys.IsMain, &protocol witness table for WindowEnvironmentKeys.IsMain, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.IsMain>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused>, &type metadata for WindowEnvironmentKeys.IsFocused, &protocol witness table for WindowEnvironmentKeys.IsFocused, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused>, &type metadata for WindowEnvironmentKeys.IsFocused, &protocol witness table for WindowEnvironmentKeys.IsFocused, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused>, &type metadata for WindowEnvironmentKeys.IsFocused, &protocol witness table for WindowEnvironmentKeys.IsFocused, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.IsFocused>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>, &type metadata for WindowEnvironmentKeys.AppearsMain, &protocol witness table for WindowEnvironmentKeys.AppearsMain, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>, &type metadata for WindowEnvironmentKeys.AppearsMain, &protocol witness table for WindowEnvironmentKeys.AppearsMain, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>, &type metadata for WindowEnvironmentKeys.AppearsMain, &protocol witness table for WindowEnvironmentKeys.AppearsMain, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsMain>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused>, &type metadata for WindowEnvironmentKeys.AppearsFocused, &protocol witness table for WindowEnvironmentKeys.AppearsFocused, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused>, &type metadata for WindowEnvironmentKeys.AppearsFocused, &protocol witness table for WindowEnvironmentKeys.AppearsFocused, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused>, &type metadata for WindowEnvironmentKeys.AppearsFocused, &protocol witness table for WindowEnvironmentKeys.AppearsFocused, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsFocused>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<AppearsActiveKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AppearsActiveKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AppearsActiveKey>, &type metadata for AppearsActiveKey, &protocol witness table for AppearsActiveKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AppearsActiveKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AppearsActiveKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>, &type metadata for EnvironmentValues.RenderingRootViewKey, &protocol witness table for EnvironmentValues.RenderingRootViewKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>, &type metadata for EnvironmentValues.RenderingRootViewKey, &protocol witness table for EnvironmentValues.RenderingRootViewKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>, &type metadata for EnvironmentValues.RenderingRootViewKey, &protocol witness table for EnvironmentValues.RenderingRootViewKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.RenderingRootViewKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<ScrollAnchorsKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ScrollAnchorsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollAnchorsKey>, &type metadata for ScrollAnchorsKey, &protocol witness table for ScrollAnchorsKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ScrollAnchorsKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ScrollAnchorsKey>>);
    }
  }
}

void type metadata accessor for HiddenAccessibilityProvider.Type?()
{
  if (!lazy cache variable for type metadata for HiddenAccessibilityProvider.Type?)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for HiddenAccessibilityProvider.Type, &lazy cache variable for type metadata for HiddenAccessibilityProvider);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HiddenAccessibilityProvider.Type?);
    }
  }
}

void type metadata accessor for PlatformHiddenRepresentable.Type?()
{
  if (!lazy cache variable for type metadata for PlatformHiddenRepresentable.Type?)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for PlatformHiddenRepresentable.Type, &lazy cache variable for type metadata for PlatformHiddenRepresentable);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlatformHiddenRepresentable.Type?);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>, &type metadata for EnvironmentValues.__Key_attributeScopeContext, &protocol witness table for EnvironmentValues.__Key_attributeScopeContext, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>, &type metadata for EnvironmentValues.__Key_attributeScopeContext, &protocol witness table for EnvironmentValues.__Key_attributeScopeContext, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<BackgroundStyleKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<BackgroundStyleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundStyleKey>, &type metadata for BackgroundStyleKey, &protocol witness table for BackgroundStyleKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<BackgroundStyleKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<BackgroundStyleKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<BackgroundContextKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<BackgroundContextKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundContextKey>, &type metadata for BackgroundContextKey, &protocol witness table for BackgroundContextKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<BackgroundContextKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<BackgroundContextKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>, &type metadata for EnvironmentValues.__Key_lineHeight, &protocol witness table for EnvironmentValues.__Key_lineHeight, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>, &type metadata for SymbolBackgroundCornerRadiusKey, &protocol witness table for SymbolBackgroundCornerRadiusKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>, &type metadata for SymbolsGrowToFitBackgroundKey, &protocol witness table for SymbolsGrowToFitBackgroundKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>>);
    }
  }
}

void type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>, &type metadata for Transaction.ScrollContentAdjustmentBehaviorKey, &protocol witness table for Transaction.ScrollContentAdjustmentBehaviorKey, type metadata accessor for TransactionPropertyKey);
    lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey> and conformance TransactionPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey> and conformance TransactionPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey> and conformance TransactionPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>, &type metadata for Transaction.ScrollContentAdjustmentBehaviorKey, &protocol witness table for Transaction.ScrollContentAdjustmentBehaviorKey, type metadata accessor for TransactionPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey> and conformance TransactionPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.ScrollPreservesVelocityKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.ScrollPreservesVelocityKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollPreservesVelocityKey>, &type metadata for Transaction.ScrollPreservesVelocityKey, &protocol witness table for Transaction.ScrollPreservesVelocityKey, type metadata accessor for TransactionPropertyKey);
    lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.ScrollPreservesVelocityKey> and conformance TransactionPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.ScrollPreservesVelocityKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.ScrollPreservesVelocityKey> and conformance TransactionPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.ScrollPreservesVelocityKey> and conformance TransactionPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.ScrollPreservesVelocityKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollPreservesVelocityKey>, &type metadata for Transaction.ScrollPreservesVelocityKey, &protocol witness table for Transaction.ScrollPreservesVelocityKey, type metadata accessor for TransactionPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.ScrollPreservesVelocityKey> and conformance TransactionPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<TypesettingConfigurationKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TypesettingConfigurationKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TypesettingConfigurationKey>, &type metadata for TypesettingConfigurationKey, &protocol witness table for TypesettingConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TypesettingConfigurationKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TypesettingConfigurationKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<AvoidsOrphansKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AvoidsOrphansKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AvoidsOrphansKey>, &type metadata for AvoidsOrphansKey, &protocol witness table for AvoidsOrphansKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AvoidsOrphansKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AvoidsOrphansKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultTextFieldTruncationMode>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultTextFieldTruncationMode>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultTextFieldTruncationMode>, &type metadata for DefaultTextFieldTruncationMode, &protocol witness table for DefaultTextFieldTruncationMode, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultTextFieldTruncationMode> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultTextFieldTruncationMode>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultTextFieldTruncationMode> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultTextFieldTruncationMode> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultTextFieldTruncationMode> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultTextFieldTruncationMode>, &type metadata for DefaultTextFieldTruncationMode, &protocol witness table for DefaultTextFieldTruncationMode, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultTextFieldTruncationMode> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultTextFieldTruncationMode>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultTextFieldTruncationMode>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultTextFieldTruncationMode>, &type metadata for DefaultTextFieldTruncationMode, &protocol witness table for DefaultTextFieldTruncationMode, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultTextFieldTruncationMode> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultTextFieldTruncationMode>>);
    }
  }
}

void type metadata accessor for TypedElement<TransactionPropertyKey<ContinuousKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<ContinuousKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<ContinuousKey>, &type metadata for ContinuousKey, &protocol witness table for ContinuousKey, type metadata accessor for TransactionPropertyKey);
    lazy protocol witness table accessor for type TransactionPropertyKey<ContinuousKey> and conformance TransactionPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<ContinuousKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TransactionPropertyKey<ContinuousKey> and conformance TransactionPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type TransactionPropertyKey<ContinuousKey> and conformance TransactionPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<ContinuousKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<ContinuousKey>, &type metadata for ContinuousKey, &protocol witness table for ContinuousKey, type metadata accessor for TransactionPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransactionPropertyKey<ContinuousKey> and conformance TransactionPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>, &type metadata for AccessibilitySettingsDefinitionKey, &protocol witness table for AccessibilitySettingsDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>, &type metadata for AccessibilitySettingsDefinitionKey, &protocol witness table for AccessibilitySettingsDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>, &type metadata for AccessibilitySettingsDefinitionKey, &protocol witness table for AccessibilitySettingsDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>, &type metadata for EnvironmentValues.DefaultSeparatorShapeStyleKey, &protocol witness table for EnvironmentValues.DefaultSeparatorShapeStyleKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>, &type metadata for EnvironmentValues.DefaultSeparatorShapeStyleKey, &protocol witness table for EnvironmentValues.DefaultSeparatorShapeStyleKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>, &type metadata for EnvironmentValues.DefaultSeparatorShapeStyleKey, &protocol witness table for EnvironmentValues.DefaultSeparatorShapeStyleKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.DefaultSeparatorShapeStyleKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>, &type metadata for EnvironmentValues.__Key_attributeScopeContext, &protocol witness table for EnvironmentValues.__Key_attributeScopeContext, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>, &type metadata for EnvironmentValues.ExplicitColorSchemeKey, &protocol witness table for EnvironmentValues.ExplicitColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>, &type metadata for EnvironmentValues.ExplicitColorSchemeKey, &protocol witness table for EnvironmentValues.ExplicitColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<MaterialActiveAppearance.Key>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<MaterialActiveAppearance.Key>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MaterialActiveAppearance.Key>, &type metadata for MaterialActiveAppearance.Key, &protocol witness table for MaterialActiveAppearance.Key, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MaterialActiveAppearance.Key> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<MaterialActiveAppearance.Key>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<MaterialActiveAppearance.Key> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<MaterialActiveAppearance.Key> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<MaterialActiveAppearance.Key> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MaterialActiveAppearance.Key>, &type metadata for MaterialActiveAppearance.Key, &protocol witness table for MaterialActiveAppearance.Key, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<MaterialActiveAppearance.Key> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<MaterialActiveAppearance.Key>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<MaterialActiveAppearance.Key>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MaterialActiveAppearance.Key>, &type metadata for MaterialActiveAppearance.Key, &protocol witness table for MaterialActiveAppearance.Key, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MaterialActiveAppearance.Key> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<MaterialActiveAppearance.Key>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<BackgroundProminence.Key>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<BackgroundProminence.Key>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundProminence.Key>, &type metadata for BackgroundProminence.Key, &protocol witness table for BackgroundProminence.Key, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<BackgroundProminence.Key> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<BackgroundProminence.Key>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<ControlSizeKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ControlSizeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ControlSizeKey>, &type metadata for ControlSizeKey, &protocol witness table for ControlSizeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ControlSizeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ControlSizeKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<UnredactSymbolImage>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<UnredactSymbolImage>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<UnredactSymbolImage>, &type metadata for UnredactSymbolImage, &protocol witness table for UnredactSymbolImage, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UnredactSymbolImage> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<UnredactSymbolImage>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<UnredactSymbolImage> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<UnredactSymbolImage> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<UnredactSymbolImage> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<UnredactSymbolImage>, &type metadata for UnredactSymbolImage, &protocol witness table for UnredactSymbolImage, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<UnredactSymbolImage> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<UnredactSymbolImage>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<UnredactSymbolImage>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<UnredactSymbolImage>, &type metadata for UnredactSymbolImage, &protocol witness table for UnredactSymbolImage, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UnredactSymbolImage> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<UnredactSymbolImage>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<StrikethroughStyleKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<StrikethroughStyleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<StrikethroughStyleKey>, &type metadata for StrikethroughStyleKey, &protocol witness table for StrikethroughStyleKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<StrikethroughStyleKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<StrikethroughStyleKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate>, &type metadata for EnvironmentValues.StringResolutionDate, &protocol witness table for EnvironmentValues.StringResolutionDate, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>, &type metadata for EnvironmentValues.__Key_textShape, &protocol witness table for EnvironmentValues.__Key_textShape, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_textShape> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_textShape> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textShape> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textShape> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>, &type metadata for EnvironmentValues.__Key_textShape, &protocol witness table for EnvironmentValues.__Key_textShape, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textShape> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<WritingModeKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<WritingModeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WritingModeKey>, &type metadata for WritingModeKey, &protocol witness table for WritingModeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WritingModeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<WritingModeKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<HyphenationDisabledKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<HyphenationDisabledKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HyphenationDisabledKey>, &type metadata for HyphenationDisabledKey, &protocol witness table for HyphenationDisabledKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HyphenationDisabledKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<HyphenationDisabledKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<HyphenationDisabledKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<HyphenationDisabledKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<HyphenationDisabledKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HyphenationDisabledKey>, &type metadata for HyphenationDisabledKey, &protocol witness table for HyphenationDisabledKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<HyphenationDisabledKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<MinimumLineHeightKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<MinimumLineHeightKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MinimumLineHeightKey>, &type metadata for MinimumLineHeightKey, &protocol witness table for MinimumLineHeightKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MinimumLineHeightKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<MinimumLineHeightKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<MinimumLineHeightKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<MinimumLineHeightKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<MinimumLineHeightKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MinimumLineHeightKey>, &type metadata for MinimumLineHeightKey, &protocol witness table for MinimumLineHeightKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<MinimumLineHeightKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<MaximumLineHeightKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<MaximumLineHeightKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MaximumLineHeightKey>, &type metadata for MaximumLineHeightKey, &protocol witness table for MaximumLineHeightKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MaximumLineHeightKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<MaximumLineHeightKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<MaximumLineHeightKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<MaximumLineHeightKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<MaximumLineHeightKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MaximumLineHeightKey>, &type metadata for MaximumLineHeightKey, &protocol witness table for MaximumLineHeightKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<MaximumLineHeightKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<LineHeightMultipleKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<LineHeightMultipleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<LineHeightMultipleKey>, &type metadata for LineHeightMultipleKey, &protocol witness table for LineHeightMultipleKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LineHeightMultipleKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<LineHeightMultipleKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<LineHeightMultipleKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<LineHeightMultipleKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<LineHeightMultipleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<LineHeightMultipleKey>, &type metadata for LineHeightMultipleKey, &protocol witness table for LineHeightMultipleKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<LineHeightMultipleKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey>, &type metadata for EnvironmentValues.LowerLineLimitKey, &protocol witness table for EnvironmentValues.LowerLineLimitKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<TextSizingKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TextSizingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSizingKey>, &type metadata for TextSizingKey, &protocol witness table for TextSizingKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextSizingKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TextSizingKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<MinimumScaleFactorKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<MinimumScaleFactorKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MinimumScaleFactorKey>, &type metadata for MinimumScaleFactorKey, &protocol witness table for MinimumScaleFactorKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MinimumScaleFactorKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<MinimumScaleFactorKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey>, &type metadata for EnvironmentValues.LowerLineLimitKey, &protocol witness table for EnvironmentValues.LowerLineLimitKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>, &type metadata for EnvironmentValues.LineLimitKey, &protocol witness table for EnvironmentValues.LineLimitKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.LineLimitKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>, &type metadata for EnvironmentValues.__Key_textShape, &protocol witness table for EnvironmentValues.__Key_textShape, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_textShape> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>>);
    }
  }
}

uint64_t outlined destroy of (AttributedString.LineHeight?, AttributedString.LineHeight?)(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for (AttributedString.LineHeight?, AttributedString.LineHeight?)(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for TypedElement<TransactionPropertyKey<TracksVelocityKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<TracksVelocityKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<TracksVelocityKey>, &type metadata for TracksVelocityKey, &protocol witness table for TracksVelocityKey, type metadata accessor for TransactionPropertyKey);
    lazy protocol witness table accessor for type TransactionPropertyKey<TracksVelocityKey> and conformance TransactionPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<TracksVelocityKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TransactionPropertyKey<TracksVelocityKey> and conformance TransactionPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type TransactionPropertyKey<TracksVelocityKey> and conformance TransactionPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<TracksVelocityKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<TracksVelocityKey>, &type metadata for TracksVelocityKey, &protocol witness table for TracksVelocityKey, type metadata accessor for TransactionPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransactionPropertyKey<TracksVelocityKey> and conformance TransactionPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<TextJustificationKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TextJustificationKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextJustificationKey>, &type metadata for TextJustificationKey, &protocol witness table for TextJustificationKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextJustificationKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TextJustificationKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultFontKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultFontKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultFontKey>, &type metadata for DefaultFontKey, &protocol witness table for DefaultFontKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultFontKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultFontKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<TruncationModeKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TruncationModeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TruncationModeKey>, &type metadata for TruncationModeKey, &protocol witness table for TruncationModeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TruncationModeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TruncationModeKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<HyphenationDisabledKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<HyphenationDisabledKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HyphenationDisabledKey>, &type metadata for HyphenationDisabledKey, &protocol witness table for HyphenationDisabledKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HyphenationDisabledKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<HyphenationDisabledKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<HyphenationFactorKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<HyphenationFactorKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HyphenationFactorKey>, &type metadata for HyphenationFactorKey, &protocol witness table for HyphenationFactorKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HyphenationFactorKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<HyphenationFactorKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<MinimumLineHeightKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<MinimumLineHeightKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MinimumLineHeightKey>, &type metadata for MinimumLineHeightKey, &protocol witness table for MinimumLineHeightKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MinimumLineHeightKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<MinimumLineHeightKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<MaximumLineHeightKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<MaximumLineHeightKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MaximumLineHeightKey>, &type metadata for MaximumLineHeightKey, &protocol witness table for MaximumLineHeightKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MaximumLineHeightKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<MaximumLineHeightKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<LineHeightMultipleKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<LineHeightMultipleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<LineHeightMultipleKey>, &type metadata for LineHeightMultipleKey, &protocol witness table for LineHeightMultipleKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LineHeightMultipleKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<LineHeightMultipleKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<LineSpacingKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<LineSpacingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<LineSpacingKey>, &type metadata for LineSpacingKey, &protocol witness table for LineSpacingKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LineSpacingKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<LineSpacingKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey>, &type metadata for Text.AlignmentStrategy.EnvironmentKey, &protocol witness table for Text.AlignmentStrategy.EnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey>>);
    }
  }
}

void type metadata accessor for PlatformTextSelectionRepresentation.Type?()
{
  if (!lazy cache variable for type metadata for PlatformTextSelectionRepresentation.Type?)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for PlatformTextSelectionRepresentation.Type, &lazy cache variable for type metadata for PlatformTextSelectionRepresentation);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlatformTextSelectionRepresentation.Type?);
    }
  }
}

void type metadata accessor for CoreInteractionResponderProvider.Type?()
{
  if (!lazy cache variable for type metadata for CoreInteractionResponderProvider.Type?)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for CoreInteractionResponderProvider.Type, &lazy cache variable for type metadata for CoreInteractionResponderProvider);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CoreInteractionResponderProvider.Type?);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>, &type metadata for EnvironmentValues.SymbolEffectsKey, &protocol witness table for EnvironmentValues.SymbolEffectsKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<ContainerBackgroundKind.Key>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ContainerBackgroundKind.Key>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKind.Key>, &type metadata for ContainerBackgroundKind.Key, &protocol witness table for ContainerBackgroundKind.Key, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKind.Key> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ContainerBackgroundKind.Key>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKind.Key> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContainerBackgroundKind.Key> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContainerBackgroundKind.Key> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKind.Key>, &type metadata for ContainerBackgroundKind.Key, &protocol witness table for ContainerBackgroundKind.Key, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContainerBackgroundKind.Key> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<ContainerBackgroundKind.Key>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ContainerBackgroundKind.Key>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKind.Key>, &type metadata for ContainerBackgroundKind.Key, &protocol witness table for ContainerBackgroundKind.Key, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKind.Key> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ContainerBackgroundKind.Key>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>, &type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.MaxAllowedDynamicRangeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>, &type metadata for EnvironmentValues.ContentShapesKey, &protocol witness table for EnvironmentValues.ContentShapesKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>, &type metadata for EnvironmentValues.ContentShapesKey, &protocol witness table for EnvironmentValues.ContentShapesKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>, &type metadata for EnvironmentValues.ContentShapesKey, &protocol witness table for EnvironmentValues.ContentShapesKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>, &type metadata for EnvironmentValues.ExplicitColorSchemeKey, &protocol witness table for EnvironmentValues.ExplicitColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>, &type metadata for EnvironmentValues.PlatformColorSchemeKey, &protocol witness table for EnvironmentValues.PlatformColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<ReducedLuminanceKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ReducedLuminanceKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ReducedLuminanceKey>, &type metadata for ReducedLuminanceKey, &protocol witness table for ReducedLuminanceKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ReducedLuminanceKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ReducedLuminanceKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<ContainerShapeKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ContainerShapeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerShapeKey>, &type metadata for ContainerShapeKey, &protocol witness table for ContainerShapeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerShapeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ContainerShapeKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAdjustedPitchKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAdjustedPitchKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAdjustedPitchKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAdjustedPitchKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey>, &type metadata for EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey>, &type metadata for EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAdjustedPitchKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAdjustedPitchKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey>, &type metadata for EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing>, &type metadata for EnvironmentValues.__Key_buttonSizing, &protocol witness table for EnvironmentValues.__Key_buttonSizing, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing>, &type metadata for EnvironmentValues.__Key_buttonSizing, &protocol witness table for EnvironmentValues.__Key_buttonSizing, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing>, &type metadata for EnvironmentValues.__Key_buttonSizing, &protocol witness table for EnvironmentValues.__Key_buttonSizing, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>, &type metadata for EnvironmentValues.WatchDisplayVariantKey, &protocol witness table for EnvironmentValues.WatchDisplayVariantKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<FontDefinitionKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<FontDefinitionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontDefinitionKey>, &type metadata for FontDefinitionKey, &protocol witness table for FontDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<FontDefinitionKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<FontDefinitionKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<OpenSensitiveURLActionKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<OpenSensitiveURLActionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<OpenSensitiveURLActionKey>, &type metadata for OpenSensitiveURLActionKey, &protocol witness table for OpenSensitiveURLActionKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<OpenSensitiveURLActionKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<OpenSensitiveURLActionKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>, &type metadata for EnvironmentValues.DefaultOpenURLActionKey, &protocol witness table for EnvironmentValues.DefaultOpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<OpenURLActionKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<OpenURLActionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<OpenURLActionKey>, &type metadata for OpenURLActionKey, &protocol witness table for OpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<OpenURLActionKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<OpenURLActionKey>>);
    }
  }
}

uint64_t objectdestroy_40Tm()
{
  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    outlined consume of OpenURLAction.Handler(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v1 & 1);
  }

  return swift_deallocObject();
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<HasSystemOpenURLActionKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<HasSystemOpenURLActionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HasSystemOpenURLActionKey>, &type metadata for HasSystemOpenURLActionKey, &protocol witness table for HasSystemOpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HasSystemOpenURLActionKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<HasSystemOpenURLActionKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<SensitiveContentKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SensitiveContentKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SensitiveContentKey>, &type metadata for SensitiveContentKey, &protocol witness table for SensitiveContentKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SensitiveContentKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SensitiveContentKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<RedactionReasonsKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<RedactionReasonsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<RedactionReasonsKey>, &type metadata for RedactionReasonsKey, &protocol witness table for RedactionReasonsKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<RedactionReasonsKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<RedactionReasonsKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>, &type metadata for GlassEffectBackdropGroupNameKey, &protocol witness table for GlassEffectBackdropGroupNameKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>, &type metadata for GlassEffectBackdropGroupNameKey, &protocol witness table for GlassEffectBackdropGroupNameKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>, &type metadata for GlassEffectBackdropGroupNameKey, &protocol witness table for GlassEffectBackdropGroupNameKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>, &type metadata for EnvironmentValues.__Key_glassEffectHidden, &protocol witness table for EnvironmentValues.__Key_glassEffectHidden, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>, &type metadata for EnvironmentValues.__Key_glassEffectHidden, &protocol witness table for EnvironmentValues.__Key_glassEffectHidden, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>, &type metadata for EnvironmentValues.__Key_glassEffectHidden, &protocol witness table for EnvironmentValues.__Key_glassEffectHidden, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_hasGlassEffect>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_hasGlassEffect>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_hasGlassEffect>, &type metadata for EnvironmentValues.__Key_hasGlassEffect, &protocol witness table for EnvironmentValues.__Key_hasGlassEffect, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_hasGlassEffect> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_hasGlassEffect>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<PresentingContextMenuKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<PresentingContextMenuKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentingContextMenuKey>, &type metadata for PresentingContextMenuKey, &protocol witness table for PresentingContextMenuKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentingContextMenuKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<PresentingContextMenuKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentingContextMenuKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentingContextMenuKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentingContextMenuKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentingContextMenuKey>, &type metadata for PresentingContextMenuKey, &protocol witness table for PresentingContextMenuKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentingContextMenuKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<PresentingContextMenuKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<PresentingContextMenuKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentingContextMenuKey>, &type metadata for PresentingContextMenuKey, &protocol witness table for PresentingContextMenuKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentingContextMenuKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<PresentingContextMenuKey>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<SystemAccentValueKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SystemAccentValueKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemAccentValueKey>, &type metadata for SystemAccentValueKey, &protocol witness table for SystemAccentValueKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemAccentValueKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SystemAccentValueKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemAccentValueKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemAccentValueKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemAccentValueKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemAccentValueKey>, &type metadata for SystemAccentValueKey, &protocol witness table for SystemAccentValueKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemAccentValueKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<SystemAccentValueKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SystemAccentValueKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemAccentValueKey>, &type metadata for SystemAccentValueKey, &protocol witness table for SystemAccentValueKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemAccentValueKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SystemAccentValueKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultAccentColorKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultAccentColorKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultAccentColorKey>, &type metadata for DefaultAccentColorKey, &protocol witness table for DefaultAccentColorKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultAccentColorKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultAccentColorKey>>);
    }
  }
}

void type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.AnimationLogicalListenerKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.AnimationLogicalListenerKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.AnimationLogicalListenerKey>, &type metadata for Transaction.AnimationLogicalListenerKey, &protocol witness table for Transaction.AnimationLogicalListenerKey, type metadata accessor for TransactionPropertyKey);
    lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.AnimationLogicalListenerKey> and conformance TransactionPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.AnimationLogicalListenerKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.AnimationLogicalListenerKey> and conformance TransactionPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.AnimationLogicalListenerKey> and conformance TransactionPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.AnimationLogicalListenerKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.AnimationLogicalListenerKey>, &type metadata for Transaction.AnimationLogicalListenerKey, &protocol witness table for Transaction.AnimationLogicalListenerKey, type metadata accessor for TransactionPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.AnimationLogicalListenerKey> and conformance TransactionPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for PreferenceKey.Type?()
{
  if (!lazy cache variable for type metadata for PreferenceKey.Type?)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for PreferenceKey.Type, &lazy cache variable for type metadata for PreferenceKey);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PreferenceKey.Type?);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>, &type metadata for EnvironmentValues.__Key_materialColorRenderingMode, &protocol witness table for EnvironmentValues.__Key_materialColorRenderingMode, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>>);
    }
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>, &type metadata for EnvironmentValues.HoverEffectStateKey, &protocol witness table for EnvironmentValues.HoverEffectStateKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>, &type metadata for EnvironmentValues.HoverEffectStateKey, &protocol witness table for EnvironmentValues.HoverEffectStateKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>, &type metadata for EnvironmentValues.HoverEffectStateKey, &protocol witness table for EnvironmentValues.HoverEffectStateKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<HoverEffectContextKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<HoverEffectContextKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HoverEffectContextKey>, &type metadata for HoverEffectContextKey, &protocol witness table for HoverEffectContextKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HoverEffectContextKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<HoverEffectContextKey>>);
    }
  }
}

uint64_t outlined copy of HoverEffectContext?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 != 1)
  {
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>, &type metadata for EnvironmentValues.ContainerBackgroundLuminanceKey, &protocol witness table for EnvironmentValues.ContainerBackgroundLuminanceKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>, &type metadata for EnvironmentValues.ContainerBackgroundLuminanceKey, &protocol witness table for EnvironmentValues.ContainerBackgroundLuminanceKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>, &type metadata for EnvironmentValues.ContainerBackgroundLuminanceKey, &protocol witness table for EnvironmentValues.ContainerBackgroundLuminanceKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>>);
    }
  }
}

void type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.GlassContainerSettingsOverrideKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.GlassContainerSettingsOverrideKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.GlassContainerSettingsOverrideKey>, &type metadata for Transaction.GlassContainerSettingsOverrideKey, &protocol witness table for Transaction.GlassContainerSettingsOverrideKey, type metadata accessor for TransactionPropertyKey);
    lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.GlassContainerSettingsOverrideKey> and conformance TransactionPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.GlassContainerSettingsOverrideKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.GlassContainerSettingsOverrideKey> and conformance TransactionPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.GlassContainerSettingsOverrideKey> and conformance TransactionPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.GlassContainerSettingsOverrideKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.GlassContainerSettingsOverrideKey>, &type metadata for Transaction.GlassContainerSettingsOverrideKey, &protocol witness table for Transaction.GlassContainerSettingsOverrideKey, type metadata accessor for TransactionPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.GlassContainerSettingsOverrideKey> and conformance TransactionPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.UseDefaultGlassContainerAnimationKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.UseDefaultGlassContainerAnimationKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.UseDefaultGlassContainerAnimationKey>, &type metadata for Transaction.UseDefaultGlassContainerAnimationKey, &protocol witness table for Transaction.UseDefaultGlassContainerAnimationKey, type metadata accessor for TransactionPropertyKey);
    lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.UseDefaultGlassContainerAnimationKey> and conformance TransactionPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.UseDefaultGlassContainerAnimationKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.UseDefaultGlassContainerAnimationKey> and conformance TransactionPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.UseDefaultGlassContainerAnimationKey> and conformance TransactionPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.UseDefaultGlassContainerAnimationKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.UseDefaultGlassContainerAnimationKey>, &type metadata for Transaction.UseDefaultGlassContainerAnimationKey, &protocol witness table for Transaction.UseDefaultGlassContainerAnimationKey, type metadata accessor for TransactionPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.UseDefaultGlassContainerAnimationKey> and conformance TransactionPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.ScrollToRequiresCompleteVisibility>>()
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.ScrollToRequiresCompleteVisibility>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollToRequiresCompleteVisibility>, &type metadata for Transaction.ScrollToRequiresCompleteVisibility, &protocol witness table for Transaction.ScrollToRequiresCompleteVisibility, type metadata accessor for TransactionPropertyKey);
    lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.ScrollToRequiresCompleteVisibility> and conformance TransactionPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.ScrollToRequiresCompleteVisibility>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.ScrollToRequiresCompleteVisibility> and conformance TransactionPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.ScrollToRequiresCompleteVisibility> and conformance TransactionPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.ScrollToRequiresCompleteVisibility> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollToRequiresCompleteVisibility>, &type metadata for Transaction.ScrollToRequiresCompleteVisibility, &protocol witness table for Transaction.ScrollToRequiresCompleteVisibility, type metadata accessor for TransactionPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.ScrollToRequiresCompleteVisibility> and conformance TransactionPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey>, &type metadata for EnvironmentValues.ResolvableStringReferenceDateKey, &protocol witness table for EnvironmentValues.ResolvableStringReferenceDateKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey>, &type metadata for AccessibilityPrefersCrossFadeTransitionsKey, &protocol witness table for AccessibilityPrefersCrossFadeTransitionsKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey>>);
    }
  }
}

void type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.IsScrollStateValueUpdateKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.IsScrollStateValueUpdateKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.IsScrollStateValueUpdateKey>, &type metadata for Transaction.IsScrollStateValueUpdateKey, &protocol witness table for Transaction.IsScrollStateValueUpdateKey, type metadata accessor for TransactionPropertyKey);
    lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.IsScrollStateValueUpdateKey> and conformance TransactionPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.IsScrollStateValueUpdateKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.IsScrollStateValueUpdateKey> and conformance TransactionPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.IsScrollStateValueUpdateKey> and conformance TransactionPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.IsScrollStateValueUpdateKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.IsScrollStateValueUpdateKey>, &type metadata for Transaction.IsScrollStateValueUpdateKey, &protocol witness table for Transaction.IsScrollStateValueUpdateKey, type metadata accessor for TransactionPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.IsScrollStateValueUpdateKey> and conformance TransactionPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultPaddingKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultPaddingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultPaddingKey>, &type metadata for DefaultPaddingKey, &protocol witness table for DefaultPaddingKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultPaddingKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultPaddingKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultPaddingKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultPaddingKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultPaddingKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultPaddingKey>, &type metadata for DefaultPaddingKey, &protocol witness table for DefaultPaddingKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultPaddingKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultPaddingKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultPaddingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultPaddingKey>, &type metadata for DefaultPaddingKey, &protocol witness table for DefaultPaddingKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultPaddingKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultPaddingKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey>, &type metadata for AllScrollableAxesEnvironmentKey, &protocol witness table for AllScrollableAxesEnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey>, &type metadata for NearestScrollableAxesEnvironmentKey, &protocol witness table for NearestScrollableAxesEnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey>>);
    }
  }
}

void type metadata accessor for BodyCountInput<_ViewModifier_Content<GlassEffectLocalModifier>>()
{
  if (!lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<GlassEffectLocalModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectLocalModifier>, lazy protocol witness table accessor for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier);
    v0 = type metadata accessor for BodyCountInput();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<GlassEffectLocalModifier>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.TextRendererAddsDrawingGroupKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.TextRendererAddsDrawingGroupKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextRendererAddsDrawingGroupKey>, &type metadata for EnvironmentValues.TextRendererAddsDrawingGroupKey, &protocol witness table for EnvironmentValues.TextRendererAddsDrawingGroupKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextRendererAddsDrawingGroupKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.TextRendererAddsDrawingGroupKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextRendererAddsDrawingGroupKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.TextRendererAddsDrawingGroupKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.TextRendererAddsDrawingGroupKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextRendererAddsDrawingGroupKey>, &type metadata for EnvironmentValues.TextRendererAddsDrawingGroupKey, &protocol witness table for EnvironmentValues.TextRendererAddsDrawingGroupKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.TextRendererAddsDrawingGroupKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<ScheduledAnimationModifier<Int>>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<ScheduledAnimationModifier<Int>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScheduledAnimationModifier);
    lazy protocol witness table accessor for type ScheduledAnimationModifier<Int> and conformance ScheduledAnimationModifier<A>();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<ScheduledAnimationModifier<Int>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ScheduledAnimationModifier<Int> and conformance ScheduledAnimationModifier<A>()
{
  result = lazy protocol witness table cache variable for type ScheduledAnimationModifier<Int> and conformance ScheduledAnimationModifier<A>;
  if (!lazy protocol witness table cache variable for type ScheduledAnimationModifier<Int> and conformance ScheduledAnimationModifier<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScheduledAnimationModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScheduledAnimationModifier<Int> and conformance ScheduledAnimationModifier<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<BodyInput<_ViewModifier_Content<ScheduledAnimationModifier<Int>>>>()
{
  if (!lazy cache variable for type metadata for TypedElement<BodyInput<_ViewModifier_Content<ScheduledAnimationModifier<Int>>>>)
  {
    type metadata accessor for GlassEffectBackdropObserver?(255, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<ScheduledAnimationModifier<Int>>>, type metadata accessor for _ViewModifier_Content<ScheduledAnimationModifier<Int>>, type metadata accessor for BodyInput);
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<BodyInput<_ViewModifier_Content<ScheduledAnimationModifier<Int>>>>);
    }
  }
}

void type metadata accessor for BodyInput<_ViewModifier_Content<KickModifier>>()
{
  if (!lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<KickModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier);
    v0 = type metadata accessor for BodyInput();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<KickModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type KickModifier and conformance KickModifier()
{
  result = lazy protocol witness table cache variable for type KickModifier and conformance KickModifier;
  if (!lazy protocol witness table cache variable for type KickModifier and conformance KickModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KickModifier and conformance KickModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KickModifier and conformance KickModifier;
  if (!lazy protocol witness table cache variable for type KickModifier and conformance KickModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KickModifier and conformance KickModifier);
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<TranslationKickModifier<Int>>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<TranslationKickModifier<Int>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TranslationKickModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for TranslationKickModifier);
    lazy protocol witness table accessor for type TranslationKickModifier<Int> and conformance TranslationKickModifier<A>();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<TranslationKickModifier<Int>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TranslationKickModifier<Int> and conformance TranslationKickModifier<A>()
{
  result = lazy protocol witness table cache variable for type TranslationKickModifier<Int> and conformance TranslationKickModifier<A>;
  if (!lazy protocol witness table cache variable for type TranslationKickModifier<Int> and conformance TranslationKickModifier<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TranslationKickModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for TranslationKickModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranslationKickModifier<Int> and conformance TranslationKickModifier<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<BodyInput<_ViewModifier_Content<TranslationKickModifier<Int>>>>()
{
  if (!lazy cache variable for type metadata for TypedElement<BodyInput<_ViewModifier_Content<TranslationKickModifier<Int>>>>)
  {
    type metadata accessor for GlassEffectBackdropObserver?(255, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<TranslationKickModifier<Int>>>, type metadata accessor for _ViewModifier_Content<TranslationKickModifier<Int>>, type metadata accessor for BodyInput);
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<BodyInput<_ViewModifier_Content<TranslationKickModifier<Int>>>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<ScalePulseModifier<Int>>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<ScalePulseModifier<Int>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for ScalePulseModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScalePulseModifier);
    lazy protocol witness table accessor for type ScalePulseModifier<Int> and conformance ScalePulseModifier<A>();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<ScalePulseModifier<Int>>);
    }
  }
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ScalePulseModifier<Int> and conformance ScalePulseModifier<A>()
{
  result = lazy protocol witness table cache variable for type ScalePulseModifier<Int> and conformance ScalePulseModifier<A>;
  if (!lazy protocol witness table cache variable for type ScalePulseModifier<Int> and conformance ScalePulseModifier<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for ScalePulseModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScalePulseModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScalePulseModifier<Int> and conformance ScalePulseModifier<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<BodyInput<_ViewModifier_Content<ScalePulseModifier<Int>>>>()
{
  if (!lazy cache variable for type metadata for TypedElement<BodyInput<_ViewModifier_Content<ScalePulseModifier<Int>>>>)
  {
    type metadata accessor for GlassEffectBackdropObserver?(255, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<ScalePulseModifier<Int>>>, type metadata accessor for _ViewModifier_Content<ScalePulseModifier<Int>>, type metadata accessor for BodyInput);
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<BodyInput<_ViewModifier_Content<ScalePulseModifier<Int>>>>);
    }
  }
}

void type metadata accessor for BodyInput<_ViewModifier_Content<GlassTransitionStateModifier>>()
{
  if (!lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<GlassTransitionStateModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<GlassTransitionStateModifier>, lazy protocol witness table accessor for type GlassTransitionStateModifier and conformance GlassTransitionStateModifier);
    v0 = type metadata accessor for BodyInput();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<GlassTransitionStateModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type GlassTransitionStateModifier and conformance GlassTransitionStateModifier()
{
  result = lazy protocol witness table cache variable for type GlassTransitionStateModifier and conformance GlassTransitionStateModifier;
  if (!lazy protocol witness table cache variable for type GlassTransitionStateModifier and conformance GlassTransitionStateModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassTransitionStateModifier and conformance GlassTransitionStateModifier);
  }

  return result;
}

void type metadata accessor for BodyInput<_ViewModifier_Content<GlassEffectShapeModifier>>()
{
  if (!lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<GlassEffectShapeModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectShapeModifier>, lazy protocol witness table accessor for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier);
    v0 = type metadata accessor for BodyInput();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<GlassEffectShapeModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier()
{
  result = lazy protocol witness table cache variable for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier;
  if (!lazy protocol witness table cache variable for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier;
  if (!lazy protocol witness table cache variable for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier);
  }

  return result;
}

void type metadata accessor for TypedElement<BodyCountInput<_ViewModifier_Content<ScalePulseModifier<Int>>>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for GlassEffectBackdropObserver?(255, a3, a4, type metadata accessor for BodyCountInput);
    v5 = type metadata accessor for TypedElement();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for BodyCountInput<_ViewModifier_Content<KickModifier>>()
{
  if (!lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<KickModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier);
    v0 = type metadata accessor for BodyCountInput();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<KickModifier>>);
    }
  }
}

void type metadata accessor for GlassEffectBackdropObserver?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for BodyCountInput<_ViewModifier_Content<GlassTransitionStateModifier>>()
{
  if (!lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<GlassTransitionStateModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<GlassTransitionStateModifier>, lazy protocol witness table accessor for type GlassTransitionStateModifier and conformance GlassTransitionStateModifier);
    v0 = type metadata accessor for BodyCountInput();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<GlassTransitionStateModifier>>);
    }
  }
}

void type metadata accessor for BodyInput<_ViewModifier_Content<FlexInteractionModifier>>()
{
  if (!lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<FlexInteractionModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<FlexInteractionModifier>, lazy protocol witness table accessor for type FlexInteractionModifier and conformance FlexInteractionModifier);
    v0 = type metadata accessor for BodyInput();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<FlexInteractionModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type FlexInteractionModifier and conformance FlexInteractionModifier()
{
  result = lazy protocol witness table cache variable for type FlexInteractionModifier and conformance FlexInteractionModifier;
  if (!lazy protocol witness table cache variable for type FlexInteractionModifier and conformance FlexInteractionModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlexInteractionModifier and conformance FlexInteractionModifier);
  }

  return result;
}

void type metadata accessor for BodyCountInput<_ViewModifier_Content<GlassEffectShapeModifier>>()
{
  if (!lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<GlassEffectShapeModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectShapeModifier>, lazy protocol witness table accessor for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier);
    v0 = type metadata accessor for BodyCountInput();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<GlassEffectShapeModifier>>);
    }
  }
}

void type metadata accessor for BodyCountInput<_ViewModifier_Content<FlexInteractionModifier>>()
{
  if (!lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<FlexInteractionModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<FlexInteractionModifier>, lazy protocol witness table accessor for type FlexInteractionModifier and conformance FlexInteractionModifier);
    v0 = type metadata accessor for BodyCountInput();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<FlexInteractionModifier>>);
    }
  }
}

uint64_t AnyStyleContextType.init<A>(_:)@<X0>(uint64_t *a1@<X8>)
{
  result = type metadata accessor for StyleContextTypeBox();
  *a1 = result;
  a1[1] = &protocol witness table for StyleContextTypeBox<A>;
  return result;
}

CGPoint __swiftcall CGPoint.offset(by:)(CGSize by)
{
  v3 = by.width + v1;
  v4 = by.height + v2;
  result.y = v4;
  result.x = v3;
  return result;
}

double CGPoint.flushingNaNs.getter(int8x16_t a1, double a2)
{
  *&a1.i64[1] = a2;
  v2 = vdupq_n_s64(0x7FF0000000000000uLL);
  a1.i64[0] = vbslq_s8(vceqq_s64(vandq_s8(a1, v2), v2), vandq_s8(a1, vceqzq_s64(vandq_s8(a1, vdupq_n_s64(0xFFFFFFFFFFFFFuLL)))), a1).u64[0];
  return *a1.i64;
}

double CGPoint.flushingNegatives.getter(double result)
{
  if (result <= 0.0)
  {
    return 0.0;
  }

  return result;
}

Swift::Void __swiftcall CGPoint.clamp(size:)(CGSize size)
{
  if (size.width < 0.0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v2 = *v1;
  if (*v1 < 0.0)
  {
    v2 = 0.0;
  }

  if (v2 <= size.width)
  {
    size.width = v2;
  }

  *v1 = size.width;
  if (size.height < 0.0)
  {
    goto LABEL_13;
  }

  height = v1[1];
  if (height < 0.0)
  {
    height = 0.0;
  }

  if (height > size.height)
  {
    height = size.height;
  }

  v1[1] = height;
}

CGPoint __swiftcall CGPoint.clamped(size:)(CGPoint size)
{
  if (size.x < 0.0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (size.y < 0.0)
  {
LABEL_14:
    __break(1u);
    return size;
  }

  if (v1 < 0.0)
  {
    v1 = 0.0;
  }

  if (v1 <= size.x)
  {
    size.x = v1;
  }

  if (v2 < 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  if (v3 <= size.y)
  {
    size.y = v3;
  }

  return size;
}

Swift::Void __swiftcall CGPoint.clamp(rect:)(__C::CGRect rect)
{
  if (rect.origin.x > rect.size.width)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  if (*v1 >= rect.origin.x)
  {
    rect.origin.x = *v1;
  }

  if (rect.origin.x > rect.size.width)
  {
    rect.origin.x = rect.size.width;
  }

  *v1 = rect.origin.x;
  if (rect.origin.y > rect.size.height)
  {
    goto LABEL_13;
  }

  y = v1[1];
  if (y < rect.origin.y)
  {
    y = rect.origin.y;
  }

  if (y > rect.size.height)
  {
    y = rect.size.height;
  }

  v1[1] = y;
}

CGPoint __swiftcall CGPoint.clamped(rect:)(__C::CGRect rect)
{
  if (rect.origin.x > rect.size.width)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (rect.origin.y > rect.size.height)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (rect.origin.x <= v1)
  {
    rect.origin.x = v1;
  }

  if (rect.origin.x > rect.size.width)
  {
    rect.origin.x = rect.size.width;
  }

  if (rect.origin.y <= v2)
  {
    rect.origin.y = v2;
  }

  if (rect.origin.y > rect.size.height)
  {
    rect.origin.y = rect.size.height;
  }

LABEL_14:
  result.y = rect.origin.y;
  result.x = rect.origin.x;
  return result;
}

double CGPoint.subscript.getter(char a1, double a2, double a3)
{
  if (a1)
  {
    return a3;
  }

  return result;
}

double (*CGPoint.subscript.modify(uint64_t a1, char a2))(uint64_t a1)
{
  *(a1 + 8) = v2;
  *(a1 + 16) = a2;
  v3 = v2 + 1;
  if ((a2 & 1) == 0)
  {
    v3 = v2;
  }

  *a1 = *v3;
  return CGPoint.subscript.modify;
}

double CGPoint.subscript.modify(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 8 * (*(a1 + 16) & 1)) = *a1;
  return result;
}

double CGPoint.init(_:in:by:)(char a1, double a2, double a3)
{
  if (a1)
  {
    return a3;
  }

  return a2;
}

uint64_t (*CGPoint.animatableData.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return CGPoint.animatableData.modify;
}

__n128 protocol witness for Animatable.animatableData.setter in conformance CGPoint(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 (*protocol witness for Animatable.animatableData.modify in conformance CGPoint(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance CGPoint;
}

__n128 protocol witness for Animatable.animatableData.modify in conformance CGPoint(__n128 *a1)
{
  result = *a1;
  *a1[1].n128_u64[0] = *a1;
  return result;
}

double *CGPoint.encode(to:)(double *result, double a2, double a3)
{
  v4 = result;
  if (a2 == 0.0)
  {
    goto LABEL_12;
  }

  v5 = a2;
  v6 = fabs(a2);
  if (v6 >= 65536.0)
  {
    v7 = 9;
  }

  else
  {
    v7 = 13;
  }

  ProtobufEncoder.encodeVarint(_:)(v7);
  if (v6 >= 65536.0)
  {
    v9 = *(v4 + 1);
    result = (v9 + 8);
    if (!__OFADD__(v9, 8))
    {
      if (*(v4 + 2) < result)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(result);
        *result = v5;
      }

      else
      {
        *(v4 + 1) = result;
        *(*v4 + v9) = v5;
      }

      goto LABEL_12;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = *(v4 + 1);
  result = (v8 + 4);
  if (__OFADD__(v8, 4))
  {
    __break(1u);
    goto LABEL_25;
  }

  *&v5 = v5;
  if (*(v4 + 2) < result)
  {
    goto LABEL_28;
  }

  *(v4 + 1) = result;
  *(*v4 + v8) = LODWORD(v5);
LABEL_12:
  while (a3 != 0.0)
  {
    v5 = fabs(a3);
    if (v5 >= 65536.0)
    {
      v10 = 17;
    }

    else
    {
      v10 = 21;
    }

    ProtobufEncoder.encodeVarint(_:)(v10);
    if (v5 >= 65536.0)
    {
      v13 = *(v4 + 1);
      result = (v13 + 8);
      if (!__OFADD__(v13, 8))
      {
        if (*(v4 + 2) < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = a3;
        }

        else
        {
          *(v4 + 1) = result;
          *(*v4 + v13) = a3;
        }

        return result;
      }
    }

    else
    {
      v11 = *(v4 + 1);
      result = (v11 + 4);
      if (!__OFADD__(v11, 4))
      {
        v12 = a3;
        if (*(v4 + 2) < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v12;
        }

        else
        {
          *(v4 + 1) = result;
          *(*v4 + v11) = v12;
        }

        return result;
      }

LABEL_26:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = LODWORD(v5);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError()
{
  result = lazy protocol witness table cache variable for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError;
  if (!lazy protocol witness table cache variable for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError;
  if (!lazy protocol witness table cache variable for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError);
  }

  return result;
}

uint64_t _DisplayList_Identity.description.getter()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v0);

  return 35;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _DisplayList_Identity.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _DisplayList_Identity.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance _DisplayList_Identity.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _DisplayList_Identity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _DisplayList_Identity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _DisplayList_Identity.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>, lazy protocol witness table accessor for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys, &unk_1F0048590, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

Swift::Int _DisplayList_Identity.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _DisplayList_Identity()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  return Hasher._finalize()();
}

uint64_t protocol witness for Encodable.encode(to:) in conformance _DisplayList_Identity(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>, lazy protocol witness table accessor for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys, &unk_1F0048590, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _DisplayList_Identity()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v0);

  return 35;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance DisplayList.Features(_WORD *a1, unsigned __int16 *a2)
{
  v3 = *v2;
  v4 = *a2;
  if ((v4 & v3) != v4)
  {
    *v2 = v4 | v3;
  }

  *a1 = v4;
  return (v4 & v3) != v4;
}

unsigned __int16 *protocol witness for SetAlgebra.remove(_:) in conformance DisplayList.Features@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *result;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v3 & ~v4;
  }

  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

unsigned __int16 *protocol witness for SetAlgebra.update(with:) in conformance DisplayList.Features@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *result;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

_WORD *protocol witness for RawRepresentable.init(rawValue:) in conformance DisplayList.Features@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

void DisplayList.init()(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
}

Swift::Void __swiftcall DisplayList.reserveCapacity(_:)(Swift::Int a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 3) >> 1)
  {
    if (*(v3 + 2) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 2);
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v5, 0, v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item);
  }

  *v1 = v3;
}

void DisplayList.transform(_:)(void (*a1)(void), uint64_t a2)
{
  *(v2 + 8) = 0;
  *(v2 + 12) = 0;
  v3 = *v2;
  v4 = *(*v2 + 16);
  if (v4)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_39;
    }

    while (*(v3 + 2))
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v38 = a1;
      v10 = 1;
      v37 = v4;
      while (1)
      {
        v11 = v9;
        v9 = v10;
        v12 = &v3[80 * v11 + 32];
        a1(v12);
        if (v11 >= *(v3 + 2))
        {
          break;
        }

        v13 = *(v12 + 48);
        v40[2] = *(v12 + 32);
        v41[0] = v13;
        *(v41 + 12) = *(v12 + 60);
        v14 = *(v12 + 16);
        v40[0] = *v12;
        v40[1] = v14;
        DisplayList.Item.features.getter(&v39);
        v15 = *(v3 + 2);
        if (v11 >= v15)
        {
          goto LABEL_38;
        }

        v7 |= v39;
        v16 = *(v12 + 40);
        v17 = *(v12 + 64);
        v18 = v17 >> 30;
        if (v17 >> 30 > 1)
        {
          if (v18 != 2)
          {
            goto LABEL_5;
          }

          v20 = *(v16 + 16);
          if (v20)
          {
            if (v20 > 7)
            {
              v21 = v20 & 0x7FFFFFFFFFFFFFF8;
              v26 = (v16 + 188);
              v27 = 0uLL;
              v28 = v20 & 0x7FFFFFFFFFFFFFF8;
              v29 = 0uLL;
              do
              {
                v30.i32[0] = *(v26 - 30);
                v30.i32[1] = *(v26 - 20);
                v30.i32[2] = *(v26 - 10);
                v30.i32[3] = *v26;
                v31.i32[0] = v26[10];
                v31.i32[1] = v26[20];
                v31.i32[2] = v26[30];
                v31.i32[3] = v26[40];
                v27 = vorrq_s8(v30, v27);
                v29 = vorrq_s8(v31, v29);
                v26 += 80;
                v28 -= 8;
              }

              while (v28);
              v32 = vorrq_s8(v29, v27);
              *v32.i8 = vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
              v19 = v32.i32[0] | v32.i32[1];
              if (v20 == v21)
              {
                goto LABEL_33;
              }
            }

            else
            {
              v19 = 0;
              v21 = 0;
            }

            v33 = v20 - v21;
            v34 = (v16 + 40 * v21 + 68);
            do
            {
              v35 = *v34;
              v34 += 10;
              v19 |= v35;
              --v33;
            }

            while (v33);
          }

          else
          {
            v19 = 0;
          }
        }

        else if (v18)
        {
          v22 = a2;
          v23 = *(v12 + 48);
          if (BYTE4(v23) == 2)
          {
            outlined copy of DisplayList.Effect(*(v12 + 40), *(v12 + 48), 2);
            v25 = v16;
          }

          else
          {
            v24 = *(v12 + 56);
            if (BYTE4(v23) == 7)
            {
              v25 = *(v16 + 28);
              outlined copy of DisplayList.Item.Value(v16, v23, v24, v17);
              outlined consume of DisplayList.Effect(v16, v23, 7);
            }

            else if (BYTE4(v23) == 18)
            {
              (*(*v16 + 120))(v40);
              outlined copy of DisplayList.Item.Value(v16, v23, v24, v17);
              outlined consume of DisplayList.Effect(v16, v23, 18);

              v25 = v40[0];
            }

            else
            {
              outlined copy of DisplayList.Effect(v16, v23, SBYTE4(v23));

              outlined consume of DisplayList.Effect(v16, v23, SBYTE4(v23));

              v25 = 0;
            }
          }

          v19 = v25 | HIDWORD(v17);
          a2 = v22;
          v4 = v37;
          a1 = v38;
        }

        else
        {
          if (v16 >> 60 != 6 && v16 >> 60 != 11)
          {
LABEL_5:
            if (v9 == v4)
            {
              goto LABEL_35;
            }

            goto LABEL_6;
          }

          v19 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
        }

LABEL_33:
        v8 |= v19;
        if (v9 == v4)
        {
LABEL_35:
          *v36 = v3;
          *(v36 + 12) = v8;
          *(v36 + 8) = v7;
          return;
        }

        v15 = *(v3 + 2);
LABEL_6:
        v10 = v9 + 1;
        if (v9 >= v15)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    }

LABEL_40:
    __break(1u);
  }
}

void DisplayList.version.getter(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (!v3)
  {
    *a1 = 0;
    return;
  }

  if (v3 == 1)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v6 = 0;
    v5 = v3 & 0x7FFFFFFFFFFFFFFELL;
    v7 = (v2 + 144);
    v8 = v3 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v9 = *(v7 - 10);
      v11 = *v7;
      v7 += 20;
      v10 = v11;
      if (v9 > v4)
      {
        v4 = v9;
      }

      if (v10 > v6)
      {
        v6 = v10;
      }

      v8 -= 2;
    }

    while (v8);
    if (v4 <= v6)
    {
      v4 = v6;
    }

    if (v3 == v5)
    {
      goto LABEL_18;
    }
  }

  v12 = v3 - v5;
  v13 = (v2 + 80 * v5 + 64);
  do
  {
    v15 = *v13;
    v13 += 10;
    v14 = v15;
    if (v15 > v4)
    {
      v4 = v14;
    }

    --v12;
  }

  while (v12);
LABEL_18:
  *a1 = v4;
}

SwiftUI::Time __swiftcall DisplayList.Item.nextUpdate(after:)(SwiftUI::Time after)
{
  v4 = v1;
  v5 = v2;
  type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v55 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result.seconds = MEMORY[0x1EEE9AC00](v13);
  v17 = &v55 - v16;
  seconds = *v4;
  v19 = v3[5];
  v20 = v3[6];
  v21 = v3[7];
  v22 = v3[8];
  v23 = v22 >> 30;
  if (v22 >> 30 <= 1)
  {
    if (v23)
    {
      *&v61 = v3[7];
      WORD4(v61) = v22;
      HIDWORD(v61) = HIDWORD(v22);
      v60 = seconds;
      v41 = v19;
      outlined copy of DisplayList.Effect(v19, v20, SBYTE4(v20));

      DisplayList.nextUpdate(after:)(v42);

      v43 = fmin(v65[0].seconds, INFINITY);
      switch(BYTE4(v20))
      {
        case 7u:
          v47 = *(v41 + 24);
          v48 = *(v41 + 28);
          *&v61 = *(v41 + 16);
          WORD4(v61) = v47;
          HIDWORD(v61) = v48;
          v60 = seconds;
          DisplayList.nextUpdate(after:)(v65[0]);
          outlined consume of DisplayList.Effect(v41, v20, 7);
          *&result.seconds = v65[0];
          break;
        case 0xBu:
          outlined consume of DisplayList.Effect(v41, v20, 11);
          goto LABEL_46;
        case 0x12u:
          v65[0] = *&seconds;
          (*(*v41 + 96))(&v61, v65);
          outlined consume of DisplayList.Effect(v41, v20, 18);
          result.seconds = *&v61;
          break;
        default:
          outlined consume of DisplayList.Effect(v41, v20, SBYTE4(v20));
          seconds = v43;
          goto LABEL_46;
      }

      if (result.seconds >= v43)
      {
        seconds = v43;
      }

      else
      {
        seconds = result.seconds;
      }

      goto LABEL_46;
    }

    v24 = v19 >> 60;
    if (v19 >> 60 == 6 || v24 == 11)
    {
      v44 = v19 & 0xFFFFFFFFFFFFFFFLL;
      v45 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
      v46 = *(v44 + 24);
      *&v61 = *(v44 + 16);
      WORD4(v61) = v46;
      HIDWORD(v61) = v45;
      v60 = seconds;
      DisplayList.nextUpdate(after:)(result);
      *&result.seconds = v65[0];
      goto LABEL_45;
    }

    if (v24 == 10)
    {
      v59 = v14;
      v25 = v19;
      outlined copy of DisplayList.Content.Value(v19);
      static Date.now.getter();
      v26 = ResolvedStyledText.schedule.getter(&v61);
      v27 = *(&v62 + 1);
      if (*(&v62 + 1))
      {
        v58 = v63;
        __swift_project_boxed_opaque_existential_1(&v61, *(&v62 + 1));
        LOBYTE(v65[0].seconds) = 0;
        TimelineSchedule.nextEntry(after:mode:limit:)(v17, v65, 60, 0, v27, v58, v8);
        v28 = v59;
        (*(v10 + 56))(v8, 0, 1, v59);
        __swift_destroy_boxed_opaque_existential_1(&v61);
        if ((*(v10 + 48))(v8, 1, v28) != 1)
        {
          v50 = v8;
          v51 = v59;
          (*(v10 + 32))(v12, v50, v59);
          Date.timeIntervalSince(_:)();
          v53 = v52;
          v54 = *(v10 + 8);
          v54(v12, v51);
          v54(v17, v51);
          outlined consume of DisplayList.Item.Value(v25, v20, v21, v22);
          result.seconds = seconds + v53;
          goto LABEL_45;
        }

        (*(v10 + 8))(v17, v59);
      }

      else
      {
        v49 = v59;
        (*(v10 + 8))(v17, v59, v26);
        outlined destroy of TimelineSchedule?(&v61);
        (*(v10 + 56))(v8, 1, 1, v49);
      }

      outlined destroy of Any?(v8, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], type metadata accessor for DisplayList.ArchiveIDs?);
      outlined consume of DisplayList.Item.Value(v25, v20, v21, v22);
      result.seconds = INFINITY;
LABEL_45:
      seconds = fmin(result.seconds, INFINITY);
      goto LABEL_46;
    }

    goto LABEL_29;
  }

  if (v23 != 2 || (v29 = *(v19 + 16)) == 0)
  {
LABEL_29:
    seconds = INFINITY;
    goto LABEL_46;
  }

  v56 = v3[8];
  v57 = v19;
  v58 = v20;
  v59 = v5;
  v30 = v19 + 32;

  v31 = 0;
  v32 = INFINITY;
  do
  {
    v34 = v30 + 40 * v31;
    v35 = *(v34 + 32);
    v33 = seconds;
    if ((v35 & 4) == 0)
    {
      if ((v35 & 8) != 0 && (v36 = *(v34 + 24), (v37 = *(v36 + 16)) != 0))
      {

        v38 = 0;
        v33 = INFINITY;
        for (i = 32; ; i += 80)
        {
          v62 = *(v36 + i + 16);
          v63 = *(v36 + i + 32);
          v64[0] = *(v36 + i + 48);
          *(v64 + 12) = *(v36 + i + 60);
          v61 = *(v36 + i);
          v60 = seconds;
          DisplayList.Item.nextUpdate(after:)(v61);
          *&result.seconds = v65[0];
          if (v65[0].seconds < v33)
          {
            v33 = v65[0].seconds;
          }

          if (v33 == seconds || v37 - 1 == v38)
          {
            break;
          }

          if (++v38 >= *(v36 + 16))
          {
            __break(1u);
            return result;
          }
        }
      }

      else
      {
        v33 = INFINITY;
      }
    }

    ++v31;
    if (v33 < v32)
    {
      v32 = v33;
    }
  }

  while (v31 != v29);
  outlined consume of DisplayList.Item.Value(v57, v58, v21, v56);
  seconds = v32;
  v5 = v59;
LABEL_46:
  *v5 = seconds;
  return result;
}