void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014SymbolVariantsV033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014SymbolVariantsV033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolVariantsKey>, &type metadata for SymbolVariantsKey, &protocol witness table for SymbolVariantsKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

uint64_t specialized Image.Location.aliasedName(_:)(uint64_t result, uint64_t a2)
{
  if (*v2 != 1)
  {
    if (*v2)
    {
      return result;
    }

    if (one-time initialization token for systemAssetManager != -1)
    {
      v7 = result;
      v8 = a2;
      swift_once();
      a2 = v8;
      result = v7;
    }

    v3 = off_1ED530E18;
    if (!*(off_1ED530E18 + 2))
    {
      return result;
    }

LABEL_10:
    v4 = result;
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(result, a2);
    result = v4;
    if (v6)
    {
      return *(v3[7] + 16 * v5);
    }

    return result;
  }

  if (one-time initialization token for privateSystemAssetManager != -1)
  {
    v9 = result;
    v10 = a2;
    swift_once();
    a2 = v10;
    result = v9;
  }

  v3 = off_1ED52C9D0;
  if (*(off_1ED52C9D0 + 2))
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t SymbolVariants.contains(_:)(unsigned __int8 *a1)
{
  v2 = a1[1];
  v3 = v1[1];
  v5 = v3 != 3 && v3 == v2;
  v6 = v2 == 3 || v5;
  if ((*a1 & ~*v1) != 0)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t ViewGraphHost.Idiom.cuiDeviceClass.getter()
{
  v1 = *v0;
  if (v1 > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_18DE125A8[v1];
  }
}

uint64_t NamedImage.VectorKey.init(name:location:in:textStyle:idiom:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v51 = a6;
  v52 = a5;
  _s7SwiftUI4TextV5StyleVSgMaTm_0(0, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v49 - v13;
  v49 = type metadata accessor for Text.Style(0);
  v15 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *a3;
  v18 = *a4;
  v19 = *(a4 + 8);
  v55 = *a4;
  v56 = v19;

  EnvironmentValues.colorScheme.getter(&v53);
  v20 = v53;
  if (v19)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019ColorSchemeContrastI033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt1g5(v18, &v55);

    v21 = v55;
    *a7 = v20;
    *(a7 + 1) = v21;
    *(a7 + 8) = a1;
    *(a7 + 16) = a2;

    v22 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v18);

    *(a7 + 24) = v22;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v18, &v55);

    v23 = v55;
    v24 = v52;
  }

  else
  {
    v25 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019ColorSchemeContrastS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(v18);
    if (v25)
    {
      v26 = *(v25 + 72);
    }

    else
    {
      v26 = 0;
    }

    *a7 = v20;
    *(a7 + 1) = v26;
    *(a7 + 8) = a1;
    *(a7 + 16) = a2;
    v27 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v18);
    if (v27)
    {
      v28 = v27[9];
    }

    else
    {
      v28 = 1.0;
    }

    v24 = v52;
    *(a7 + 24) = v28;
    v29 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v18);
    if (v29)
    {
      v23 = *(v29 + 72);
    }

    else
    {
      v23 = 0;
    }
  }

  *(a7 + 32) = v23;
  v30 = type metadata accessor for NamedImage.VectorKey(0);
  v31 = v30[8];
  if (v19)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v18, a7 + v31);
  }

  else
  {
    v32 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v18);
    if (v32)
    {
      v33 = *(*v32 + 248);
      v34 = v32;
      v35 = type metadata accessor for Locale();
      v36 = v34 + v33;
      v24 = v52;
      (*(*(v35 - 8) + 16))(a7 + v31, v36, v35);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Locale();
      v38 = __swift_project_value_buffer(v37, static LocaleKey.defaultValue);
      (*(*(v37 - 8) + 16))(a7 + v31, v38, v37);
    }
  }

  outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(v24, v14, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720], _s7SwiftUI4TextV5StyleVSgMaTm_0);
  if ((*(v15 + 48))(v14, 1, v49) == 1)
  {
    outlined destroy of Text.Style?(v14, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style);
    if (v19)
    {

      v39 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV019EffectiveSymbolFontJ033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v18);
    }

    else
    {
      v55 = v18;
      v56 = 0;

      v39 = specialized static EnvironmentValues.EffectiveSymbolFontKey.value(in:)(&v55);
    }

    v53 = v18;
    v54 = v19;
    Font.resolveTraits(in:)(&v53, v39, &v55);

    v41 = v55;
    v40 = v56;
    if (!v19)
    {
LABEL_27:
      v43 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016LegibilityWeightS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v18);
      if (!v43)
      {
        goto LABEL_33;
      }

      v42 = *(v43 + 72);
      if (v42 == 2)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }
  }

  else
  {
    outlined init with take of NamedImage.BitmapKey(v14, v17, type metadata accessor for Text.Style);
    v53 = v18;
    v54 = v19;
    Text.Style.fontTraits(in:)(&v53, &v55);
    outlined destroy of NamedImage.BitmapKey(v17, type metadata accessor for Text.Style);
    v41 = v55;
    v40 = v56;
    if (!v19)
    {
      goto LABEL_27;
    }
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016LegibilityWeightI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v18, &v55);

  LOBYTE(v42) = v55;
  if (v55 == 2)
  {
    goto LABEL_33;
  }

LABEL_31:
  if (v42)
  {
    CTFontGetAccessibilityBoldWeightOfWeight();
    v40 = v44;
  }

LABEL_33:
  *(a7 + v30[9]) = v40;
  if (v19)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010ImageScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v18, &v55);

    result = outlined destroy of Text.Style?(v24, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style);
    v46 = v55;
  }

  else
  {
    v47 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010ImageScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v18);
    if (v47)
    {
      v46 = *(v47 + 72);
    }

    else
    {
      v46 = 1;
    }

    outlined destroy of Text.Style?(v24, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style);
  }

  *(a7 + v30[10]) = v46;
  *(a7 + v30[11]) = v41;
  v48 = v51;
  *(a7 + v30[12]) = v50;
  *(a7 + v30[13]) = v48;
  return result;
}

uint64_t outlined destroy of Text.Style?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s7SwiftUI4TextV5StyleVSgMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t FontBox.resolveTraits(in:)(_OWORD *a1)
{
  v2 = *v1;
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return (*(*(v2 + 152) + 40))(v5, *(v2 + 144));
}

double NamedImage.Cache.subscript.getter@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for NamedImage.VectorKey(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock((v3 + 24));
  v11 = *(v3 + 32);
  if (*(v11 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v13 & 1) != 0))
  {
    outlined init with copy of NamedImage.VectorInfo(*(v11 + 56) + 88 * v12, v19);
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
  }

  os_unfair_lock_unlock(v4 + 6);
  if (*&v19[0])
  {
    outlined init with take of NamedImage.VectorInfo(v19, v21);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for CUICatalog);
      v16 = a2;
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        goto LABEL_12;
      }
    }

    outlined destroy of NamedImage.VectorInfo(v21);
  }

  else
  {
    _sypSgWOhTm_9(v19, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720]);
  }

  NamedImage.VectorKey.loadVectorInfo(from:idiom:)(v19);
  if (*&v19[0])
  {
    outlined init with take of NamedImage.VectorInfo(v19, v21);
    os_unfair_lock_lock(v4 + 6);
    outlined init with copy of NamedImage.Key(a1, v10, type metadata accessor for NamedImage.VectorKey);
    outlined init with copy of NamedImage.VectorInfo(v21, v19);
    specialized Dictionary.subscript.setter(v19, v10);
    os_unfair_lock_unlock(v4 + 6);
LABEL_12:
    outlined init with take of NamedImage.VectorInfo(v21, a3);
    return result;
  }

  _sypSgWOhTm_9(v19, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720]);
  *(a3 + 80) = 0;
  result = 0.0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

uint64_t getEnumTagSinglePayload for NamedImage.VectorInfo(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t outlined destroy of NamedImage.BitmapKey(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI10NamedImageO9BitmapKeyVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void destroy for NamedImage.VectorKey(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 32);
  v5 = type metadata accessor for Locale();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = *(a1 + *(a2 + 48));
  if (v6 >= 2)
  {
  }
}

uint64_t outlined init with copy of NamedImage.Key(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined copy of AccessibilityImageLabel?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    return outlined copy of AccessibilityImageLabel(a1, a2, a3);
  }

  return a1;
}

uint64_t specialized Paint._apply(to:)(uint64_t result)
{
  v6 = *(result + 24);
  if (v6 <= 2)
  {
    v59 = v5;
    v60 = v4;
    v61 = v1;
    v62 = v2;
    v63 = v3;
    v7 = result;
    if (!v6)
    {
      result = outlined consume of _ShapeStyle_Shape.Result(*(result + 32), *(result + 40));
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      return result;
    }

    if (v6 == 1)
    {
      v8 = *(result + 8);
      if (v8 == *(result + 16))
      {
        return result;
      }

      v9 = *result;
      v10 = *(result + 56);
      *&v48 = *(v7 + 48);
      *(&v48 + 1) = v10;

      LinearGradient.resolvePaint(in:)(&v48, &v57);

      if (*(v7 + 104))
      {
        v48 = v57;
        v49 = v58[0];
        *v50 = v58[1];
        *&v50[9] = *(&v58[1] + 9);
        type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<LinearGradient._Paint>, lazy protocol witness table accessor for type LinearGradient._Paint and conformance LinearGradient._Paint, &type metadata for LinearGradient._Paint, type metadata accessor for _AnyResolvedPaint);
        v11 = swift_allocObject();
        v12 = v58[0];
        *(v11 + 16) = v57;
        *(v11 + 32) = v12;
        *(v11 + 48) = v58[1];
        *(v11 + 57) = *(&v58[1] + 9);
        outlined init with copy of LinearGradient._Paint(&v48, v46);
      }

      else
      {
        v17 = v57;
        v18 = BYTE8(v57);
        v19 = HIDWORD(v57);
        v20 = v58[0];
        v21 = BYTE8(v58[2]);
        LOBYTE(v48) = v58[0];
        type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<LinearGradient.AbsolutePaint>, lazy protocol witness table accessor for type LinearGradient.AbsolutePaint and conformance LinearGradient.AbsolutePaint, &type metadata for LinearGradient.AbsolutePaint, type metadata accessor for _AnyResolvedPaint);
        v11 = swift_allocObject();
        *(v11 + 16) = v17;
        *(v11 + 24) = v18;
        *(v11 + 28) = v19;
        *(v11 + 32) = v20;
        v22 = *(v7 + 88);
        v23 = *(v7 + 72);
        v24 = vmulq_f64(v22, *(&v58[1] + 8));
        v25 = vaddq_f64(v23, vmulq_f64(v22, *(v58 + 8)));
        *(v11 + 56) = vaddq_f64(v23, v24);
        *(v11 + 40) = v25;
        *(v11 + 72) = v21;
      }

      DWORD2(v52) = 1065353216;
      *&v53 = 0;
      BYTE8(v53) = -1;
      v54 = MEMORY[0x1E69E7CC0];
      *&v48 = v11;
      BYTE5(v52) = 1;
      v26 = *(v7 + 80);
      v55[4] = *(v7 + 64);
      v56[0] = v26;
      *(v56 + 12) = *(v7 + 92);
      v27 = *(v7 + 16);
      v55[0] = *v7;
      v55[1] = v27;
      v28 = *(v7 + 48);
      v55[2] = *(v7 + 32);
      v55[3] = v28;
      v29 = v28;
      if (*(&v28 + 1))
      {

        outlined init with copy of _ShapeStyle_Shape(v55, v46);

        v30 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(v29);
        v32 = v31;
      }

      else
      {

        outlined init with copy of _ShapeStyle_Shape(v55, v46);
        v33 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(v29);
        if (v33)
        {
          v30 = v33[9];
          v32 = v33[10];
        }

        else
        {
          v32 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
          v30 = &type metadata for CoreUIDefaultSystemColorDefinition;
        }
      }

      v46[0] = v29;
      v34 = v32[2];

      v35 = v34(v8, v46, v30, v32);

      outlined destroy of _ShapeStyle_Shape(v55);
      _ShapeStyle_Pack.Style.applyOpacity(_:)(v35);
      v46[4] = v51;
      v46[5] = v52;
      v46[6] = v53;
      v47 = v54;
      v46[0] = v48;
      v46[1] = v49;
      v46[2] = *v50;
      v46[3] = *&v50[16];
      v44[4] = v51;
      v44[5] = v52;
      v44[6] = v53;
      v45 = v54;
      v44[0] = v48;
      v44[1] = v49;
      v44[2] = *v50;
      v44[3] = *&v50[16];
      v43 = v9;
      if (*(v7 + 40) == 1)
      {
        v36 = *(v7 + 32);
        outlined init with copy of _ShapeStyle_Pack.Style(v46, v40);
        outlined copy of _ShapeStyle_Shape.Result(v36, 1u);
        outlined consume of _ShapeStyle_Shape.Result(v36, 1u);
        *(v7 + 32) = 0;
        *(v7 + 40) = 5;
      }

      else
      {
        outlined init with copy of _ShapeStyle_Pack.Style(v46, v40);
        v36 = MEMORY[0x1E69E7CC0];
      }

      v42 = v36;
      _ShapeStyle_Pack.subscript.setter(v44, &v43, v8);

      v40[4] = v51;
      v40[5] = v52;
      v40[6] = v53;
      v41 = v54;
      v40[0] = v48;
      v40[1] = v49;
      v40[2] = *v50;
      v40[3] = *&v50[16];
      outlined destroy of _ShapeStyle_Pack.Style(v40);
      v38[0] = v57;
      v38[1] = v58[0];
      v39[0] = v58[1];
      *(v39 + 9) = *(&v58[1] + 9);
      outlined destroy of LinearGradient._Paint(v38);
      v37 = v42;
      result = outlined consume of _ShapeStyle_Shape.Result(*(v7 + 32), *(v7 + 40));
      *(v7 + 32) = v37;
      v16 = 1;
    }

    else
    {
      if (!*(*v1 + 16))
      {
        return result;
      }

      v13 = *(*v1 + 32);
      v14 = *(result + 32);
      v15 = *(result + 40);

      result = outlined consume of _ShapeStyle_Shape.Result(v14, v15);
      *(v7 + 32) = v13;
      v16 = 3;
    }

    *(v7 + 40) = v16;
  }

  return result;
}

{
  v6 = *(result + 24);
  if (v6 <= 2)
  {
    v64 = v5;
    v65 = v4;
    v66 = v1;
    v67 = v2;
    v68 = v3;
    v7 = result;
    if (v6)
    {
      if (v6 == 1)
      {
        v8 = *(result + 8);
        if (v8 != *(result + 16))
        {
          v9 = *result;
          v10 = *(result + 56);
          *&v55 = *(v7 + 48);
          *(&v55 + 1) = v10;

          EllipticalGradient.resolvePaint(in:)(&v61, &v55);

          if (*(v7 + 104))
          {
            v55 = v61;
            v56 = v62;
            *v57 = v63[0];
            *&v57[9] = *(v63 + 9);
            type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<EllipticalGradient._Paint>, lazy protocol witness table accessor for type EllipticalGradient._Paint and conformance EllipticalGradient._Paint, &type metadata for EllipticalGradient._Paint, type metadata accessor for _AnyResolvedPaint);
            v11 = swift_allocObject();
            v12 = v62;
            v11[1] = v61;
            v11[2] = v12;
            v11[3] = v63[0];
            *(v11 + 57) = *(v63 + 9);
            v13 = &v55;
            v14 = &v41;
          }

          else
          {
            v41 = v61;
            v42 = v62;
            *v43 = v63[0];
            *&v43[9] = *(v63 + 9);
            v55 = v61;
            v56 = v62;
            *v57 = v63[0];
            *&v57[9] = *(v63 + 9);
            type metadata accessor for _AnyResolvedPaint<AnchoredResolvedPaint<EllipticalGradient._Paint>>();
            v11 = swift_allocObject();
            v18 = v56;
            v11[1] = v55;
            v11[2] = v18;
            v19 = *&v57[16];
            v11[3] = *v57;
            v11[4] = v19;
            v20 = *(v7 + 88);
            v11[5] = *(v7 + 72);
            v11[6] = v20;
            v13 = &v41;
            v14 = v39;
          }

          outlined init with copy of EllipticalGradient._Paint(v13, v14);
          v21 = *(v7 + 48);
          v22 = *(v7 + 80);
          v51 = *(v7 + 64);
          v52[0] = v22;
          *(v52 + 12) = *(v7 + 92);
          v23 = *(v7 + 16);
          v48[0] = *v7;
          v48[1] = v23;
          v24 = *(v7 + 48);
          v26 = *v7;
          v25 = *(v7 + 16);
          v49 = *(v7 + 32);
          v50 = v24;
          v27 = *(v7 + 80);
          v58 = v51;
          *v59 = v27;
          *&v59[12] = *(v7 + 92);
          v55 = v26;
          v56 = v25;
          DWORD2(v45) = 1065353216;
          *&v46 = 0;
          BYTE8(v46) = -1;
          v47 = MEMORY[0x1E69E7CC0];
          *&v41 = v11;
          BYTE5(v45) = 1;
          *v57 = v49;
          *&v57[16] = v21;

          outlined init with copy of _ShapeStyle_Shape(v48, v39);
          v28 = _ShapeStyle_Shape.opacity(at:)(v8);
          v53[4] = v58;
          v54[0] = *v59;
          *(v54 + 12) = *&v59[12];
          v53[0] = v55;
          v53[1] = v56;
          v53[2] = *v57;
          v53[3] = *&v57[16];
          outlined destroy of _ShapeStyle_Shape(v53);
          _ShapeStyle_Pack.Style.applyOpacity(_:)(v28);
          v58 = v44;
          *v59 = v45;
          *&v59[16] = v46;
          v60 = v47;
          v55 = v41;
          v56 = v42;
          *v57 = *v43;
          *&v57[16] = *&v43[16];
          v39[4] = v44;
          v39[5] = v45;
          v39[6] = v46;
          v40 = v47;
          v39[0] = v41;
          v39[1] = v42;
          v39[2] = *v43;
          v39[3] = *&v43[16];
          v38 = v9;
          if (*(v7 + 40) == 1)
          {
            v29 = *(v7 + 32);
            outlined init with copy of _ShapeStyle_Pack.Style(&v55, v35);
            outlined copy of _ShapeStyle_Shape.Result(v29, 1u);
            outlined consume of _ShapeStyle_Shape.Result(v29, 1u);
            *(v7 + 32) = 0;
            *(v7 + 40) = 5;
          }

          else
          {
            outlined init with copy of _ShapeStyle_Pack.Style(&v55, v35);
            v29 = MEMORY[0x1E69E7CC0];
          }

          v37 = v29;
          _ShapeStyle_Pack.subscript.setter(v39, &v38, v8);

          v35[4] = v44;
          v35[5] = v45;
          v35[6] = v46;
          v36 = v47;
          v35[0] = v41;
          v35[1] = v42;
          v35[2] = *v43;
          v35[3] = *&v43[16];
          outlined destroy of _ShapeStyle_Pack.Style(v35);
          v33[0] = v61;
          v33[1] = v62;
          v34[0] = v63[0];
          *(v34 + 9) = *(v63 + 9);
          outlined destroy of EllipticalGradient._Paint(v33);
          v30 = v37;
          v31 = *(v7 + 32);
          v32 = *(v7 + 40);

          outlined consume of _ShapeStyle_Shape.Result(v31, v32);
          *(v7 + 32) = v30;
          *(v7 + 40) = 1;
        }
      }

      else if (*(*v1 + 16))
      {
        v15 = *(*v1 + 32);
        v16 = *(result + 32);
        v17 = *(result + 40);

        result = outlined consume of _ShapeStyle_Shape.Result(v16, v17);
        *(v7 + 32) = v15;
        *(v7 + 40) = 3;
      }
    }

    else
    {
      result = outlined consume of _ShapeStyle_Shape.Result(*(result + 32), *(result + 40));
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
    }
  }

  return result;
}

{
  if (*(result + 24) <= 1u)
  {
    v2 = result;
    if (*(result + 24))
    {
      v3 = *(result + 8);
      if (v3 != *(result + 16))
      {
        v25 = *result;
        v5 = *(result + 48);
        v4 = *(result + 56);
        v6 = v1[1];
        v34 = *v1;
        v35 = v6;
        LODWORD(v36) = *(v1 + 8);
        *&v32[0] = v5;
        *(&v32[0] + 1) = v4;

        v7 = v1;
        v8 = Shader.makeRBShader(in:)(v32);
        outlined consume of EnvironmentValues?(*&v32[0]);
        v9 = *(v7 + 8);
        if (*(v2 + 104))
        {
          type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<Shader.ResolvedShader>, lazy protocol witness table accessor for type Shader.ResolvedShader and conformance Shader.ResolvedShader, &type metadata for Shader.ResolvedShader, type metadata accessor for _AnyResolvedPaint);
          v10 = swift_allocObject();
          *(v10 + 24) = 0;
          *(v10 + 32) = 0;
          *(v10 + 16) = v8;
          *(v10 + 40) = v9;
        }

        else
        {
          type metadata accessor for _AnyResolvedPaint<AnchoredResolvedPaint<Shader.ResolvedShader>>();
          v10 = swift_allocObject();
          *(v10 + 24) = 0;
          *(v10 + 32) = 0;
          *(v10 + 16) = v8;
          *(v10 + 40) = v9;
          v11 = *(v2 + 88);
          *(v10 + 48) = *(v2 + 72);
          *(v10 + 64) = v11;
        }

        v12 = v8;
        DWORD2(v39) = 1065353216;
        *&v40 = 0;
        BYTE8(v40) = -1;
        v41 = MEMORY[0x1E69E7CC0];
        *&v34 = v10;
        BYTE5(v39) = 1;
        v13 = *(v2 + 80);
        v42[4] = *(v2 + 64);
        v43[0] = v13;
        *(v43 + 12) = *(v2 + 92);
        v14 = *(v2 + 16);
        v42[0] = *v2;
        v42[1] = v14;
        v15 = *(v2 + 48);
        v42[2] = *(v2 + 32);
        v42[3] = v15;
        v16 = v15;
        if (*(&v15 + 1))
        {

          outlined init with copy of _ShapeStyle_Shape(v42, v32);

          v17 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(v16);
          v19 = v18;
        }

        else
        {

          outlined init with copy of _ShapeStyle_Shape(v42, v32);
          v20 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(v16);
          if (v20)
          {
            v17 = v20[9];
            v19 = v20[10];
          }

          else
          {
            v19 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
            v17 = &type metadata for CoreUIDefaultSystemColorDefinition;
          }
        }

        v32[0] = v16;
        v21 = v19[2];

        v22 = v21(v3, v32, v17, v19);

        outlined destroy of _ShapeStyle_Shape(v42);
        _ShapeStyle_Pack.Style.applyOpacity(_:)(v22);
        v32[4] = v38;
        v32[5] = v39;
        v32[6] = v40;
        v33 = v41;
        v32[0] = v34;
        v32[1] = v35;
        v32[2] = v36;
        v32[3] = v37;
        v30[4] = v38;
        v30[5] = v39;
        v30[6] = v40;
        v31 = v41;
        v30[0] = v34;
        v30[1] = v35;
        v30[2] = v36;
        v30[3] = v37;
        v29 = v25;
        if (*(v2 + 40) == 1)
        {
          v23 = *(v2 + 32);
          outlined init with copy of _ShapeStyle_Pack.Style(v32, v26);
          outlined copy of _ShapeStyle_Shape.Result(v23, 1u);
          outlined consume of _ShapeStyle_Shape.Result(v23, 1u);
          *(v2 + 32) = 0;
          *(v2 + 40) = 5;
        }

        else
        {
          outlined init with copy of _ShapeStyle_Pack.Style(v32, v26);
          v23 = MEMORY[0x1E69E7CC0];
        }

        v28 = v23;
        _ShapeStyle_Pack.subscript.setter(v30, &v29, v3);

        v26[4] = v38;
        v26[5] = v39;
        v26[6] = v40;
        v27 = v41;
        v26[0] = v34;
        v26[1] = v35;
        v26[2] = v36;
        v26[3] = v37;
        outlined destroy of _ShapeStyle_Pack.Style(v26);

        v24 = v28;
        result = outlined consume of _ShapeStyle_Shape.Result(*(v2 + 32), *(v2 + 40));
        *(v2 + 32) = v24;
        *(v2 + 40) = 1;
      }
    }

    else
    {
      result = outlined consume of _ShapeStyle_Shape.Result(*(result + 32), *(result + 40));
      *(v2 + 32) = 0;
      *(v2 + 40) = 0;
    }
  }

  return result;
}

{
  if (*(result + 24) <= 2u)
  {
    v2 = result;
    if (*(result + 24))
    {
      if (*(result + 24) == 1)
      {
        v3 = *(result + 8);
        if (v3 != *(result + 16))
        {
          v4 = *result;
          v5 = *(result + 56);
          *&v49 = *(v2 + 48);
          *(&v49 + 1) = v5;

          _AnyEllipticalGradient.resolvePaint(in:)(&v55, &v49);

          if (*(v2 + 104))
          {
            v49 = v55;
            v50 = v56;
            *v51 = v57[0];
            *&v51[9] = *(v57 + 9);
            type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<EllipticalGradient._Paint>, lazy protocol witness table accessor for type EllipticalGradient._Paint and conformance EllipticalGradient._Paint, &type metadata for EllipticalGradient._Paint, type metadata accessor for _AnyResolvedPaint);
            v6 = swift_allocObject();
            v7 = v56;
            v6[1] = v55;
            v6[2] = v7;
            v6[3] = v57[0];
            *(v6 + 57) = *(v57 + 9);
            v8 = &v49;
            v9 = &v35;
          }

          else
          {
            v35 = v55;
            v36 = v56;
            *v37 = v57[0];
            *&v37[9] = *(v57 + 9);
            v49 = v55;
            v50 = v56;
            *v51 = v57[0];
            *&v51[9] = *(v57 + 9);
            type metadata accessor for _AnyResolvedPaint<AnchoredResolvedPaint<EllipticalGradient._Paint>>();
            v6 = swift_allocObject();
            v12 = v50;
            v6[1] = v49;
            v6[2] = v12;
            v13 = *&v51[16];
            v6[3] = *v51;
            v6[4] = v13;
            v14 = *(v2 + 88);
            v6[5] = *(v2 + 72);
            v6[6] = v14;
            v8 = &v35;
            v9 = v33;
          }

          outlined init with copy of EllipticalGradient._Paint(v8, v9);
          v15 = *(v2 + 48);
          v16 = *(v2 + 80);
          v45 = *(v2 + 64);
          v46[0] = v16;
          *(v46 + 12) = *(v2 + 92);
          v17 = *(v2 + 16);
          v42[0] = *v2;
          v42[1] = v17;
          v18 = *(v2 + 48);
          v20 = *v2;
          v19 = *(v2 + 16);
          v43 = *(v2 + 32);
          v44 = v18;
          v21 = *(v2 + 80);
          v52 = v45;
          *v53 = v21;
          *&v53[12] = *(v2 + 92);
          v49 = v20;
          v50 = v19;
          DWORD2(v39) = 1065353216;
          *&v40 = 0;
          BYTE8(v40) = -1;
          v41 = MEMORY[0x1E69E7CC0];
          *&v35 = v6;
          BYTE5(v39) = 1;
          *v51 = v43;
          *&v51[16] = v15;

          outlined init with copy of _ShapeStyle_Shape(v42, v33);
          v22 = _ShapeStyle_Shape.opacity(at:)(v3);
          v47[4] = v52;
          v48[0] = *v53;
          *(v48 + 12) = *&v53[12];
          v47[0] = v49;
          v47[1] = v50;
          v47[2] = *v51;
          v47[3] = *&v51[16];
          outlined destroy of _ShapeStyle_Shape(v47);
          _ShapeStyle_Pack.Style.applyOpacity(_:)(v22);
          v52 = v38;
          *v53 = v39;
          *&v53[16] = v40;
          v54 = v41;
          v49 = v35;
          v50 = v36;
          *v51 = *v37;
          *&v51[16] = *&v37[16];
          v33[4] = v38;
          v33[5] = v39;
          v33[6] = v40;
          v34 = v41;
          v33[0] = v35;
          v33[1] = v36;
          v33[2] = *v37;
          v33[3] = *&v37[16];
          v32 = v4;
          if (*(v2 + 40) == 1)
          {
            v23 = *(v2 + 32);
            outlined init with copy of _ShapeStyle_Pack.Style(&v49, v29);
            outlined copy of _ShapeStyle_Shape.Result(v23, 1u);
            outlined consume of _ShapeStyle_Shape.Result(v23, 1u);
            *(v2 + 32) = 0;
            *(v2 + 40) = 5;
          }

          else
          {
            outlined init with copy of _ShapeStyle_Pack.Style(&v49, v29);
            v23 = MEMORY[0x1E69E7CC0];
          }

          v31 = v23;
          _ShapeStyle_Pack.subscript.setter(v33, &v32, v3);

          v29[4] = v38;
          v29[5] = v39;
          v29[6] = v40;
          v30 = v41;
          v29[0] = v35;
          v29[1] = v36;
          v29[2] = *v37;
          v29[3] = *&v37[16];
          outlined destroy of _ShapeStyle_Pack.Style(v29);
          v27[0] = v55;
          v27[1] = v56;
          v28[0] = v57[0];
          *(v28 + 9) = *(v57 + 9);
          outlined destroy of EllipticalGradient._Paint(v27);
          v24 = v31;
          v25 = *(v2 + 32);
          v26 = *(v2 + 40);

          outlined consume of _ShapeStyle_Shape.Result(v25, v26);
          *(v2 + 32) = v24;
          *(v2 + 40) = 1;
        }
      }

      else
      {
        v10 = *v1;
        v49 = *(result + 48);
        result = (*(*v10 + 120))(&v49);
        if (result)
        {
          v11 = result;
          result = outlined consume of _ShapeStyle_Shape.Result(*(v2 + 32), *(v2 + 40));
          *(v2 + 32) = v11;
          *(v2 + 40) = 3;
        }
      }
    }

    else
    {
      result = outlined consume of _ShapeStyle_Shape.Result(*(result + 32), *(result + 40));
      *(v2 + 32) = 0;
      *(v2 + 40) = 0;
    }
  }

  return result;
}

{
  if (*(result + 24) <= 2u)
  {
    v2 = result;
    if (*(result + 24))
    {
      if (*(result + 24) == 1)
      {
        v3 = *(result + 8);
        if (v3 != *(result + 16))
        {
          v4 = *result;
          v5 = *(result + 56);
          *&v49 = *(v2 + 48);
          *(&v49 + 1) = v5;

          _AnyLinearGradient.resolvePaint(in:)(&v49, &v55);

          if (*(v2 + 104))
          {
            v49 = v55;
            v50 = v56;
            *v51 = v57[0];
            *&v51[9] = *(v57 + 9);
            type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<AngularGradient._Paint>, lazy protocol witness table accessor for type AngularGradient._Paint and conformance AngularGradient._Paint, &type metadata for AngularGradient._Paint, type metadata accessor for _AnyResolvedPaint);
            v6 = swift_allocObject();
            v7 = v56;
            v6[1] = v55;
            v6[2] = v7;
            v6[3] = v57[0];
            *(v6 + 57) = *(v57 + 9);
            v8 = &v49;
            v9 = &v35;
          }

          else
          {
            v35 = v55;
            v36 = v56;
            *v37 = v57[0];
            *&v37[9] = *(v57 + 9);
            v49 = v55;
            v50 = v56;
            *v51 = v57[0];
            *&v51[9] = *(v57 + 9);
            type metadata accessor for _AnyResolvedPaint<AnchoredResolvedPaint<AngularGradient._Paint>>();
            v6 = swift_allocObject();
            v12 = v50;
            v6[1] = v49;
            v6[2] = v12;
            v13 = *&v51[16];
            v6[3] = *v51;
            v6[4] = v13;
            v14 = *(v2 + 88);
            v6[5] = *(v2 + 72);
            v6[6] = v14;
            v8 = &v35;
            v9 = v33;
          }

          outlined init with copy of AngularGradient._Paint(v8, v9);
          v15 = *(v2 + 48);
          v16 = *(v2 + 80);
          v45 = *(v2 + 64);
          v46[0] = v16;
          *(v46 + 12) = *(v2 + 92);
          v17 = *(v2 + 16);
          v42[0] = *v2;
          v42[1] = v17;
          v18 = *(v2 + 48);
          v20 = *v2;
          v19 = *(v2 + 16);
          v43 = *(v2 + 32);
          v44 = v18;
          v21 = *(v2 + 80);
          v52 = v45;
          *v53 = v21;
          *&v53[12] = *(v2 + 92);
          v49 = v20;
          v50 = v19;
          DWORD2(v39) = 1065353216;
          *&v40 = 0;
          BYTE8(v40) = -1;
          v41 = MEMORY[0x1E69E7CC0];
          *&v35 = v6;
          BYTE5(v39) = 1;
          *v51 = v43;
          *&v51[16] = v15;

          outlined init with copy of _ShapeStyle_Shape(v42, v33);
          v22 = _ShapeStyle_Shape.opacity(at:)(v3);
          v47[4] = v52;
          v48[0] = *v53;
          *(v48 + 12) = *&v53[12];
          v47[0] = v49;
          v47[1] = v50;
          v47[2] = *v51;
          v47[3] = *&v51[16];
          outlined destroy of _ShapeStyle_Shape(v47);
          _ShapeStyle_Pack.Style.applyOpacity(_:)(v22);
          v52 = v38;
          *v53 = v39;
          *&v53[16] = v40;
          v54 = v41;
          v49 = v35;
          v50 = v36;
          *v51 = *v37;
          *&v51[16] = *&v37[16];
          v33[4] = v38;
          v33[5] = v39;
          v33[6] = v40;
          v34 = v41;
          v33[0] = v35;
          v33[1] = v36;
          v33[2] = *v37;
          v33[3] = *&v37[16];
          v32 = v4;
          if (*(v2 + 40) == 1)
          {
            v23 = *(v2 + 32);
            outlined init with copy of _ShapeStyle_Pack.Style(&v49, v29);
            outlined copy of _ShapeStyle_Shape.Result(v23, 1u);
            outlined consume of _ShapeStyle_Shape.Result(v23, 1u);
            *(v2 + 32) = 0;
            *(v2 + 40) = 5;
          }

          else
          {
            outlined init with copy of _ShapeStyle_Pack.Style(&v49, v29);
            v23 = MEMORY[0x1E69E7CC0];
          }

          v31 = v23;
          _ShapeStyle_Pack.subscript.setter(v33, &v32, v3);

          v29[4] = v38;
          v29[5] = v39;
          v29[6] = v40;
          v30 = v41;
          v29[0] = v35;
          v29[1] = v36;
          v29[2] = *v37;
          v29[3] = *&v37[16];
          outlined destroy of _ShapeStyle_Pack.Style(v29);
          v27[0] = v55;
          v27[1] = v56;
          v28[0] = v57[0];
          *(v28 + 9) = *(v57 + 9);
          outlined destroy of LinearGradient._Paint(v27);
          v24 = v31;
          v25 = *(v2 + 32);
          v26 = *(v2 + 40);

          outlined consume of _ShapeStyle_Shape.Result(v25, v26);
          *(v2 + 32) = v24;
          *(v2 + 40) = 1;
        }
      }

      else
      {
        v10 = *v1;
        v49 = *(result + 48);
        result = (*(*v10 + 120))(&v49);
        if (result)
        {
          v11 = result;
          result = outlined consume of _ShapeStyle_Shape.Result(*(v2 + 32), *(v2 + 40));
          *(v2 + 32) = v11;
          *(v2 + 40) = 3;
        }
      }
    }

    else
    {
      result = outlined consume of _ShapeStyle_Shape.Result(*(result + 32), *(result + 40));
      *(v2 + 32) = 0;
      *(v2 + 40) = 0;
    }
  }

  return result;
}

{
  if (*(result + 24) <= 2u)
  {
    v2 = result;
    if (*(result + 24))
    {
      if (*(result + 24) == 1)
      {
        v3 = *(result + 8);
        if (v3 != *(result + 16))
        {
          v4 = *result;
          v5 = *(result + 56);
          *&v49 = *(v2 + 48);
          *(&v49 + 1) = v5;

          _AnyRadialGradient.resolvePaint(in:)(&v55, &v49);

          if (*(v2 + 104))
          {
            v49 = v55;
            v50 = v56;
            *v51 = v57[0];
            *&v51[9] = *(v57 + 9);
            type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<RadialGradient._Paint>, lazy protocol witness table accessor for type RadialGradient._Paint and conformance RadialGradient._Paint, &type metadata for RadialGradient._Paint, type metadata accessor for _AnyResolvedPaint);
            v6 = swift_allocObject();
            v7 = v56;
            v6[1] = v55;
            v6[2] = v7;
            v6[3] = v57[0];
            *(v6 + 57) = *(v57 + 9);
            v8 = &v49;
            v9 = &v35;
          }

          else
          {
            v35 = v55;
            v36 = v56;
            *v37 = v57[0];
            *&v37[9] = *(v57 + 9);
            v49 = v55;
            v50 = v56;
            *v51 = v57[0];
            *&v51[9] = *(v57 + 9);
            type metadata accessor for _AnyResolvedPaint<AnchoredResolvedPaint<RadialGradient._Paint>>();
            v6 = swift_allocObject();
            v12 = v50;
            v6[1] = v49;
            v6[2] = v12;
            v13 = *&v51[16];
            v6[3] = *v51;
            v6[4] = v13;
            v14 = *(v2 + 88);
            v6[5] = *(v2 + 72);
            v6[6] = v14;
            v8 = &v35;
            v9 = v33;
          }

          outlined init with copy of RadialGradient._Paint(v8, v9);
          v15 = *(v2 + 48);
          v16 = *(v2 + 80);
          v45 = *(v2 + 64);
          v46[0] = v16;
          *(v46 + 12) = *(v2 + 92);
          v17 = *(v2 + 16);
          v42[0] = *v2;
          v42[1] = v17;
          v18 = *(v2 + 48);
          v20 = *v2;
          v19 = *(v2 + 16);
          v43 = *(v2 + 32);
          v44 = v18;
          v21 = *(v2 + 80);
          v52 = v45;
          *v53 = v21;
          *&v53[12] = *(v2 + 92);
          v49 = v20;
          v50 = v19;
          DWORD2(v39) = 1065353216;
          *&v40 = 0;
          BYTE8(v40) = -1;
          v41 = MEMORY[0x1E69E7CC0];
          *&v35 = v6;
          BYTE5(v39) = 1;
          *v51 = v43;
          *&v51[16] = v15;

          outlined init with copy of _ShapeStyle_Shape(v42, v33);
          v22 = _ShapeStyle_Shape.opacity(at:)(v3);
          v47[4] = v52;
          v48[0] = *v53;
          *(v48 + 12) = *&v53[12];
          v47[0] = v49;
          v47[1] = v50;
          v47[2] = *v51;
          v47[3] = *&v51[16];
          outlined destroy of _ShapeStyle_Shape(v47);
          _ShapeStyle_Pack.Style.applyOpacity(_:)(v22);
          v52 = v38;
          *v53 = v39;
          *&v53[16] = v40;
          v54 = v41;
          v49 = v35;
          v50 = v36;
          *v51 = *v37;
          *&v51[16] = *&v37[16];
          v33[4] = v38;
          v33[5] = v39;
          v33[6] = v40;
          v34 = v41;
          v33[0] = v35;
          v33[1] = v36;
          v33[2] = *v37;
          v33[3] = *&v37[16];
          v32 = v4;
          if (*(v2 + 40) == 1)
          {
            v23 = *(v2 + 32);
            outlined init with copy of _ShapeStyle_Pack.Style(&v49, v29);
            outlined copy of _ShapeStyle_Shape.Result(v23, 1u);
            outlined consume of _ShapeStyle_Shape.Result(v23, 1u);
            *(v2 + 32) = 0;
            *(v2 + 40) = 5;
          }

          else
          {
            outlined init with copy of _ShapeStyle_Pack.Style(&v49, v29);
            v23 = MEMORY[0x1E69E7CC0];
          }

          v31 = v23;
          _ShapeStyle_Pack.subscript.setter(v33, &v32, v3);

          v29[4] = v38;
          v29[5] = v39;
          v29[6] = v40;
          v30 = v41;
          v29[0] = v35;
          v29[1] = v36;
          v29[2] = *v37;
          v29[3] = *&v37[16];
          outlined destroy of _ShapeStyle_Pack.Style(v29);
          v27[0] = v55;
          v27[1] = v56;
          v28[0] = v57[0];
          *(v28 + 9) = *(v57 + 9);
          outlined destroy of LinearGradient._Paint(v27);
          v24 = v31;
          v25 = *(v2 + 32);
          v26 = *(v2 + 40);

          outlined consume of _ShapeStyle_Shape.Result(v25, v26);
          *(v2 + 32) = v24;
          *(v2 + 40) = 1;
        }
      }

      else
      {
        v10 = *v1;
        v49 = *(result + 48);
        result = (*(*v10 + 120))(&v49);
        if (result)
        {
          v11 = result;
          result = outlined consume of _ShapeStyle_Shape.Result(*(v2 + 32), *(v2 + 40));
          *(v2 + 32) = v11;
          *(v2 + 40) = 3;
        }
      }
    }

    else
    {
      result = outlined consume of _ShapeStyle_Shape.Result(*(result + 32), *(result + 40));
      *(v2 + 32) = 0;
      *(v2 + 40) = 0;
    }
  }

  return result;
}

{
  if (*(result + 24) <= 2u)
  {
    v2 = result;
    if (*(result + 24))
    {
      if (*(result + 24) == 1)
      {
        v3 = *(result + 8);
        if (v3 != *(result + 16))
        {
          v4 = *result;
          v5 = *(result + 56);
          *&v55 = *(v2 + 48);
          *(&v55 + 1) = v5;

          _AnyLinearGradient.resolvePaint(in:)(&v55, &v61);

          if (*(v2 + 104))
          {
            v55 = v61;
            v56 = *v62;
            *v57 = *&v62[16];
            *&v57[9] = *&v62[25];
            type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<LinearGradient._Paint>, lazy protocol witness table accessor for type LinearGradient._Paint and conformance LinearGradient._Paint, &type metadata for LinearGradient._Paint, type metadata accessor for _AnyResolvedPaint);
            v6 = swift_allocObject();
            v7 = *v62;
            *(v6 + 16) = v61;
            *(v6 + 32) = v7;
            *(v6 + 48) = *&v62[16];
            *(v6 + 57) = *&v62[25];
            outlined init with copy of LinearGradient._Paint(&v55, &v40);
          }

          else
          {
            v10 = v61;
            v11 = BYTE8(v61);
            v12 = HIDWORD(v61);
            v13 = v62[0];
            v14 = v4;
            v15 = v62[40];
            LOBYTE(v55) = v62[0];
            type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<LinearGradient.AbsolutePaint>, lazy protocol witness table accessor for type LinearGradient.AbsolutePaint and conformance LinearGradient.AbsolutePaint, &type metadata for LinearGradient.AbsolutePaint, type metadata accessor for _AnyResolvedPaint);
            v6 = swift_allocObject();
            *(v6 + 16) = v10;
            *(v6 + 24) = v11;
            *(v6 + 28) = v12;
            *(v6 + 32) = v13;
            v16 = *(v2 + 88);
            v17 = *(v2 + 72);
            v18 = vmulq_f64(v16, *&v62[24]);
            v19 = vaddq_f64(v17, vmulq_f64(v16, *&v62[8]));
            *(v6 + 56) = vaddq_f64(v17, v18);
            *(v6 + 40) = v19;
            *(v6 + 72) = v15;
            LOBYTE(v4) = v14;
          }

          v20 = *(v2 + 48);
          v21 = *(v2 + 80);
          v51 = *(v2 + 64);
          v52[0] = v21;
          *(v52 + 12) = *(v2 + 92);
          v22 = *(v2 + 16);
          v48[0] = *v2;
          v48[1] = v22;
          v23 = *(v2 + 48);
          v25 = *v2;
          v24 = *(v2 + 16);
          v49 = *(v2 + 32);
          v50 = v23;
          v26 = *(v2 + 80);
          v58 = v51;
          *v59 = v26;
          *&v59[12] = *(v2 + 92);
          v55 = v25;
          v56 = v24;
          DWORD2(v45) = 1065353216;
          *&v46 = 0;
          BYTE8(v46) = -1;
          v47 = MEMORY[0x1E69E7CC0];
          *&v40 = v6;
          BYTE5(v45) = 1;
          *v57 = v49;
          *&v57[16] = v20;

          outlined init with copy of _ShapeStyle_Shape(v48, v38);
          v27 = _ShapeStyle_Shape.opacity(at:)(v3);
          v53[4] = v58;
          v54[0] = *v59;
          *(v54 + 12) = *&v59[12];
          v53[0] = v55;
          v53[1] = v56;
          v53[2] = *v57;
          v53[3] = *&v57[16];
          outlined destroy of _ShapeStyle_Shape(v53);
          _ShapeStyle_Pack.Style.applyOpacity(_:)(v27);
          v58 = v44;
          *v59 = v45;
          *&v59[16] = v46;
          v60 = v47;
          v55 = v40;
          v56 = v41;
          *v57 = v42;
          *&v57[16] = v43;
          v38[4] = v44;
          v38[5] = v45;
          v38[6] = v46;
          v39 = v47;
          v38[0] = v40;
          v38[1] = v41;
          v38[2] = v42;
          v38[3] = v43;
          v37 = v4;
          if (*(v2 + 40) == 1)
          {
            v28 = *(v2 + 32);
            outlined init with copy of _ShapeStyle_Pack.Style(&v55, v34);
            outlined copy of _ShapeStyle_Shape.Result(v28, 1u);
            outlined consume of _ShapeStyle_Shape.Result(v28, 1u);
            *(v2 + 32) = 0;
            *(v2 + 40) = 5;
          }

          else
          {
            outlined init with copy of _ShapeStyle_Pack.Style(&v55, v34);
            v28 = MEMORY[0x1E69E7CC0];
          }

          v36 = v28;
          _ShapeStyle_Pack.subscript.setter(v38, &v37, v3);

          v34[4] = v44;
          v34[5] = v45;
          v34[6] = v46;
          v35 = v47;
          v34[0] = v40;
          v34[1] = v41;
          v34[2] = v42;
          v34[3] = v43;
          outlined destroy of _ShapeStyle_Pack.Style(v34);
          v32[0] = v61;
          v32[1] = *v62;
          v33[0] = *&v62[16];
          *(v33 + 9) = *&v62[25];
          outlined destroy of LinearGradient._Paint(v32);
          v29 = v36;
          v30 = *(v2 + 32);
          v31 = *(v2 + 40);

          outlined consume of _ShapeStyle_Shape.Result(v30, v31);
          *(v2 + 32) = v29;
          *(v2 + 40) = 1;
        }
      }

      else
      {
        v8 = *v1;
        v55 = *(result + 48);
        result = (*(*v8 + 120))(&v55);
        if (result)
        {
          v9 = result;
          result = outlined consume of _ShapeStyle_Shape.Result(*(v2 + 32), *(v2 + 40));
          *(v2 + 32) = v9;
          *(v2 + 40) = 3;
        }
      }
    }

    else
    {
      result = outlined consume of _ShapeStyle_Shape.Result(*(result + 32), *(result + 40));
      *(v2 + 32) = 0;
      *(v2 + 40) = 0;
    }
  }

  return result;
}

{
  v6 = *(result + 24);
  if (v6 <= 2)
  {
    v64 = v5;
    v65 = v4;
    v66 = v1;
    v67 = v2;
    v68 = v3;
    v7 = result;
    if (v6)
    {
      if (v6 == 1)
      {
        v8 = *(result + 8);
        if (v8 != *(result + 16))
        {
          v9 = *result;
          v10 = *(result + 56);
          *&v55 = *(v7 + 48);
          *(&v55 + 1) = v10;

          AngularGradient.resolvePaint(in:)(&v61, &v55);

          if (*(v7 + 104))
          {
            v55 = v61;
            v56 = v62;
            *v57 = v63[0];
            *&v57[9] = *(v63 + 9);
            type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<AngularGradient._Paint>, lazy protocol witness table accessor for type AngularGradient._Paint and conformance AngularGradient._Paint, &type metadata for AngularGradient._Paint, type metadata accessor for _AnyResolvedPaint);
            v11 = swift_allocObject();
            v12 = v62;
            v11[1] = v61;
            v11[2] = v12;
            v11[3] = v63[0];
            *(v11 + 57) = *(v63 + 9);
            v13 = &v55;
            v14 = &v41;
          }

          else
          {
            v41 = v61;
            v42 = v62;
            *v43 = v63[0];
            *&v43[9] = *(v63 + 9);
            v55 = v61;
            v56 = v62;
            *v57 = v63[0];
            *&v57[9] = *(v63 + 9);
            type metadata accessor for _AnyResolvedPaint<AnchoredResolvedPaint<AngularGradient._Paint>>();
            v11 = swift_allocObject();
            v18 = v56;
            v11[1] = v55;
            v11[2] = v18;
            v19 = *&v57[16];
            v11[3] = *v57;
            v11[4] = v19;
            v20 = *(v7 + 88);
            v11[5] = *(v7 + 72);
            v11[6] = v20;
            v13 = &v41;
            v14 = v39;
          }

          outlined init with copy of AngularGradient._Paint(v13, v14);
          v21 = *(v7 + 48);
          v22 = *(v7 + 80);
          v51 = *(v7 + 64);
          v52[0] = v22;
          *(v52 + 12) = *(v7 + 92);
          v23 = *(v7 + 16);
          v48[0] = *v7;
          v48[1] = v23;
          v24 = *(v7 + 48);
          v26 = *v7;
          v25 = *(v7 + 16);
          v49 = *(v7 + 32);
          v50 = v24;
          v27 = *(v7 + 80);
          v58 = v51;
          *v59 = v27;
          *&v59[12] = *(v7 + 92);
          v55 = v26;
          v56 = v25;
          DWORD2(v45) = 1065353216;
          *&v46 = 0;
          BYTE8(v46) = -1;
          v47 = MEMORY[0x1E69E7CC0];
          *&v41 = v11;
          BYTE5(v45) = 1;
          *v57 = v49;
          *&v57[16] = v21;

          outlined init with copy of _ShapeStyle_Shape(v48, v39);
          v28 = _ShapeStyle_Shape.opacity(at:)(v8);
          v53[4] = v58;
          v54[0] = *v59;
          *(v54 + 12) = *&v59[12];
          v53[0] = v55;
          v53[1] = v56;
          v53[2] = *v57;
          v53[3] = *&v57[16];
          outlined destroy of _ShapeStyle_Shape(v53);
          _ShapeStyle_Pack.Style.applyOpacity(_:)(v28);
          v58 = v44;
          *v59 = v45;
          *&v59[16] = v46;
          v60 = v47;
          v55 = v41;
          v56 = v42;
          *v57 = *v43;
          *&v57[16] = *&v43[16];
          v39[4] = v44;
          v39[5] = v45;
          v39[6] = v46;
          v40 = v47;
          v39[0] = v41;
          v39[1] = v42;
          v39[2] = *v43;
          v39[3] = *&v43[16];
          v38 = v9;
          if (*(v7 + 40) == 1)
          {
            v29 = *(v7 + 32);
            outlined init with copy of _ShapeStyle_Pack.Style(&v55, v35);
            outlined copy of _ShapeStyle_Shape.Result(v29, 1u);
            outlined consume of _ShapeStyle_Shape.Result(v29, 1u);
            *(v7 + 32) = 0;
            *(v7 + 40) = 5;
          }

          else
          {
            outlined init with copy of _ShapeStyle_Pack.Style(&v55, v35);
            v29 = MEMORY[0x1E69E7CC0];
          }

          v37 = v29;
          _ShapeStyle_Pack.subscript.setter(v39, &v38, v8);

          v35[4] = v44;
          v35[5] = v45;
          v35[6] = v46;
          v36 = v47;
          v35[0] = v41;
          v35[1] = v42;
          v35[2] = *v43;
          v35[3] = *&v43[16];
          outlined destroy of _ShapeStyle_Pack.Style(v35);
          v33[0] = v61;
          v33[1] = v62;
          v34[0] = v63[0];
          *(v34 + 9) = *(v63 + 9);
          outlined destroy of LinearGradient._Paint(v33);
          v30 = v37;
          v31 = *(v7 + 32);
          v32 = *(v7 + 40);

          outlined consume of _ShapeStyle_Shape.Result(v31, v32);
          *(v7 + 32) = v30;
          *(v7 + 40) = 1;
        }
      }

      else if (*(*v1 + 16))
      {
        v15 = *(*v1 + 32);
        v16 = *(result + 32);
        v17 = *(result + 40);

        result = outlined consume of _ShapeStyle_Shape.Result(v16, v17);
        *(v7 + 32) = v15;
        *(v7 + 40) = 3;
      }
    }

    else
    {
      result = outlined consume of _ShapeStyle_Shape.Result(*(result + 32), *(result + 40));
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
    }
  }

  return result;
}

{
  v6 = *(result + 24);
  if (v6 <= 2)
  {
    v64 = v5;
    v65 = v4;
    v66 = v1;
    v67 = v2;
    v68 = v3;
    v7 = result;
    if (v6)
    {
      if (v6 == 1)
      {
        v8 = *(result + 8);
        if (v8 != *(result + 16))
        {
          v9 = *result;
          v10 = *(result + 56);
          *&v55 = *(v7 + 48);
          *(&v55 + 1) = v10;

          RadialGradient.resolvePaint(in:)(&v61, &v55);

          if (*(v7 + 104))
          {
            v55 = v61;
            v56 = v62;
            *v57 = v63[0];
            *&v57[9] = *(v63 + 9);
            type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<RadialGradient._Paint>, lazy protocol witness table accessor for type RadialGradient._Paint and conformance RadialGradient._Paint, &type metadata for RadialGradient._Paint, type metadata accessor for _AnyResolvedPaint);
            v11 = swift_allocObject();
            v12 = v62;
            v11[1] = v61;
            v11[2] = v12;
            v11[3] = v63[0];
            *(v11 + 57) = *(v63 + 9);
            v13 = &v55;
            v14 = &v41;
          }

          else
          {
            v41 = v61;
            v42 = v62;
            *v43 = v63[0];
            *&v43[9] = *(v63 + 9);
            v55 = v61;
            v56 = v62;
            *v57 = v63[0];
            *&v57[9] = *(v63 + 9);
            type metadata accessor for _AnyResolvedPaint<AnchoredResolvedPaint<RadialGradient._Paint>>();
            v11 = swift_allocObject();
            v18 = v56;
            v11[1] = v55;
            v11[2] = v18;
            v19 = *&v57[16];
            v11[3] = *v57;
            v11[4] = v19;
            v20 = *(v7 + 88);
            v11[5] = *(v7 + 72);
            v11[6] = v20;
            v13 = &v41;
            v14 = v39;
          }

          outlined init with copy of RadialGradient._Paint(v13, v14);
          v21 = *(v7 + 48);
          v22 = *(v7 + 80);
          v51 = *(v7 + 64);
          v52[0] = v22;
          *(v52 + 12) = *(v7 + 92);
          v23 = *(v7 + 16);
          v48[0] = *v7;
          v48[1] = v23;
          v24 = *(v7 + 48);
          v26 = *v7;
          v25 = *(v7 + 16);
          v49 = *(v7 + 32);
          v50 = v24;
          v27 = *(v7 + 80);
          v58 = v51;
          *v59 = v27;
          *&v59[12] = *(v7 + 92);
          v55 = v26;
          v56 = v25;
          DWORD2(v45) = 1065353216;
          *&v46 = 0;
          BYTE8(v46) = -1;
          v47 = MEMORY[0x1E69E7CC0];
          *&v41 = v11;
          BYTE5(v45) = 1;
          *v57 = v49;
          *&v57[16] = v21;

          outlined init with copy of _ShapeStyle_Shape(v48, v39);
          v28 = _ShapeStyle_Shape.opacity(at:)(v8);
          v53[4] = v58;
          v54[0] = *v59;
          *(v54 + 12) = *&v59[12];
          v53[0] = v55;
          v53[1] = v56;
          v53[2] = *v57;
          v53[3] = *&v57[16];
          outlined destroy of _ShapeStyle_Shape(v53);
          _ShapeStyle_Pack.Style.applyOpacity(_:)(v28);
          v58 = v44;
          *v59 = v45;
          *&v59[16] = v46;
          v60 = v47;
          v55 = v41;
          v56 = v42;
          *v57 = *v43;
          *&v57[16] = *&v43[16];
          v39[4] = v44;
          v39[5] = v45;
          v39[6] = v46;
          v40 = v47;
          v39[0] = v41;
          v39[1] = v42;
          v39[2] = *v43;
          v39[3] = *&v43[16];
          v38 = v9;
          if (*(v7 + 40) == 1)
          {
            v29 = *(v7 + 32);
            outlined init with copy of _ShapeStyle_Pack.Style(&v55, v35);
            outlined copy of _ShapeStyle_Shape.Result(v29, 1u);
            outlined consume of _ShapeStyle_Shape.Result(v29, 1u);
            *(v7 + 32) = 0;
            *(v7 + 40) = 5;
          }

          else
          {
            outlined init with copy of _ShapeStyle_Pack.Style(&v55, v35);
            v29 = MEMORY[0x1E69E7CC0];
          }

          v37 = v29;
          _ShapeStyle_Pack.subscript.setter(v39, &v38, v8);

          v35[4] = v44;
          v35[5] = v45;
          v35[6] = v46;
          v36 = v47;
          v35[0] = v41;
          v35[1] = v42;
          v35[2] = *v43;
          v35[3] = *&v43[16];
          outlined destroy of _ShapeStyle_Pack.Style(v35);
          v33[0] = v61;
          v33[1] = v62;
          v34[0] = v63[0];
          *(v34 + 9) = *(v63 + 9);
          outlined destroy of LinearGradient._Paint(v33);
          v30 = v37;
          v31 = *(v7 + 32);
          v32 = *(v7 + 40);

          outlined consume of _ShapeStyle_Shape.Result(v31, v32);
          *(v7 + 32) = v30;
          *(v7 + 40) = 1;
        }
      }

      else if (*(*v1 + 16))
      {
        v15 = *(*v1 + 32);
        v16 = *(result + 32);
        v17 = *(result + 40);

        result = outlined consume of _ShapeStyle_Shape.Result(v16, v17);
        *(v7 + 32) = v15;
        *(v7 + 40) = 3;
      }
    }

    else
    {
      result = outlined consume of _ShapeStyle_Shape.Result(*(result + 32), *(result + 40));
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
    }
  }

  return result;
}

{
  v2 = v1[1];
  v63 = *v1;
  v64 = v2;
  v65[0] = v1[2];
  *(v65 + 10) = *(v1 + 42);
  if (*(result + 24) <= 2u)
  {
    v3 = result;
    if (*(result + 24))
    {
      if (*(result + 24) == 1)
      {
        v4 = *(result + 8);
        if (v4 != *(result + 16))
        {
          v5 = *result;
          v6 = *(result + 56);
          *&v51 = *(v3 + 48);
          *(&v51 + 1) = v6;

          MeshGradient.resolvePaint(in:)(&v51, &v58);

          if (*(v3 + 104))
          {
            v53 = v60;
            v54 = v61;
            *&v55 = v62;
            v51 = v58;
            v52 = v59;
            type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<MeshGradient._Paint>, lazy protocol witness table accessor for type MeshGradient._Paint and conformance MeshGradient._Paint, &type metadata for MeshGradient._Paint, type metadata accessor for _AnyResolvedPaint);
            v7 = swift_allocObject();
            v8 = v61;
            *(v7 + 48) = v60;
            *(v7 + 64) = v8;
            *(v7 + 80) = v62;
            v9 = v59;
            *(v7 + 16) = v58;
            *(v7 + 32) = v9;
          }

          else
          {
            v53 = v60;
            v54 = v61;
            *&v55 = v62;
            v51 = v58;
            v52 = v59;
            type metadata accessor for _AnyResolvedPaint<AnchoredResolvedPaint<MeshGradient._Paint>>();
            v7 = swift_allocObject();
            v13 = v61;
            *(v7 + 48) = v60;
            *(v7 + 64) = v13;
            *(v7 + 80) = v62;
            v14 = v59;
            *(v7 + 16) = v58;
            *(v7 + 32) = v14;
            v15 = *(v3 + 72);
            *(v7 + 104) = *(v3 + 88);
            *(v7 + 88) = v15;
          }

          outlined init with copy of MeshGradient._Paint(&v51, &v36);
          v16 = *(v3 + 48);
          v17 = *(v3 + 80);
          v47 = *(v3 + 64);
          v48[0] = v17;
          *(v48 + 12) = *(v3 + 92);
          v18 = *(v3 + 16);
          v44[0] = *v3;
          v44[1] = v18;
          v19 = *(v3 + 48);
          v21 = *v3;
          v20 = *(v3 + 16);
          v45 = *(v3 + 32);
          v46 = v19;
          v22 = *(v3 + 80);
          v55 = v47;
          *v56 = v22;
          *&v56[12] = *(v3 + 92);
          v51 = v21;
          v52 = v20;
          DWORD2(v41) = 1065353216;
          *&v42 = 0;
          BYTE8(v42) = -1;
          v43 = MEMORY[0x1E69E7CC0];
          *&v36 = v7;
          BYTE5(v41) = 1;
          v53 = v45;
          v54 = v16;

          outlined init with copy of _ShapeStyle_Shape(v44, v34);
          v23 = _ShapeStyle_Shape.opacity(at:)(v4);
          v49[4] = v55;
          v50[0] = *v56;
          *(v50 + 12) = *&v56[12];
          v49[0] = v51;
          v49[1] = v52;
          v49[2] = v53;
          v49[3] = v54;
          outlined destroy of _ShapeStyle_Shape(v49);
          _ShapeStyle_Pack.Style.applyOpacity(_:)(v23);
          v55 = v40;
          *v56 = v41;
          *&v56[16] = v42;
          v57 = v43;
          v51 = v36;
          v52 = v37;
          v53 = v38;
          v54 = v39;
          v34[4] = v40;
          v34[5] = v41;
          v34[6] = v42;
          v35 = v43;
          v34[0] = v36;
          v34[1] = v37;
          v34[2] = v38;
          v34[3] = v39;
          v33 = v5;
          if (*(v3 + 40) == 1)
          {
            v24 = *(v3 + 32);
            outlined init with copy of _ShapeStyle_Pack.Style(&v51, v30);
            outlined copy of _ShapeStyle_Shape.Result(v24, 1u);
            outlined consume of _ShapeStyle_Shape.Result(v24, 1u);
            *(v3 + 32) = 0;
            *(v3 + 40) = 5;
          }

          else
          {
            outlined init with copy of _ShapeStyle_Pack.Style(&v51, v30);
            v24 = MEMORY[0x1E69E7CC0];
          }

          v32 = v24;
          _ShapeStyle_Pack.subscript.setter(v34, &v33, v4);

          v30[4] = v40;
          v30[5] = v41;
          v30[6] = v42;
          v31 = v43;
          v30[0] = v36;
          v30[1] = v37;
          v30[2] = v38;
          v30[3] = v39;
          outlined destroy of _ShapeStyle_Pack.Style(v30);
          v28[2] = v60;
          v28[3] = v61;
          v29 = v62;
          v28[0] = v58;
          v28[1] = v59;
          outlined destroy of MeshGradient._Paint(v28);
          v25 = v32;
          v26 = *(v3 + 32);
          v27 = *(v3 + 40);

          outlined consume of _ShapeStyle_Shape.Result(v26, v27);
          *(v3 + 32) = v25;
          *(v3 + 40) = 1;
        }
      }

      else
      {
        v10 = *(v1 + 6);
        v11 = *(result + 32);
        v12 = *(result + 40);

        result = outlined consume of _ShapeStyle_Shape.Result(v11, v12);
        *(v3 + 32) = v10;
        *(v3 + 40) = 3;
      }
    }

    else
    {
      result = outlined consume of _ShapeStyle_Shape.Result(*(result + 32), *(result + 40));
      *(v3 + 32) = 0;
      *(v3 + 40) = 0;
    }
  }

  return result;
}

{
  if (*(result + 24) <= 1u)
  {
    v1 = result;
    if (*(result + 24))
    {
      v2 = *(result + 8);
      if (v2 != *(result + 16))
      {
        v3 = *result;
        v4 = *(result + 56);
        *&v48 = *(v1 + 48);
        *(&v48 + 1) = v4;

        ImagePaint.resolvePaint(in:)(&v48, &v57);

        if (*(v1 + 104))
        {
          *&v53[16] = v63;
          v54 = v64;
          v55 = v65;
          v56 = v66;
          v50 = v59;
          v51 = v60;
          v52 = v61;
          *v53 = v62;
          v48 = v57;
          v49 = v58;
          type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<ImagePaint._Paint>, lazy protocol witness table accessor for type ImagePaint._Paint and conformance ImagePaint._Paint, &type metadata for ImagePaint._Paint, type metadata accessor for _AnyResolvedPaint);
          v5 = swift_allocObject();
          v6 = v64;
          *(v5 + 112) = v63;
          *(v5 + 128) = v6;
          *(v5 + 144) = v65;
          *(v5 + 160) = v66;
          v7 = v60;
          *(v5 + 48) = v59;
          *(v5 + 64) = v7;
          v8 = v62;
          *(v5 + 80) = v61;
          *(v5 + 96) = v8;
          v9 = v58;
          *(v5 + 16) = v57;
          *(v5 + 32) = v9;
        }

        else
        {
          *&v53[16] = v63;
          v54 = v64;
          v55 = v65;
          v56 = v66;
          v50 = v59;
          v51 = v60;
          v52 = v61;
          *v53 = v62;
          v48 = v57;
          v49 = v58;
          type metadata accessor for _AnyResolvedPaint<AnchoredResolvedPaint<ImagePaint._Paint>>();
          v5 = swift_allocObject();
          v10 = v64;
          *(v5 + 112) = v63;
          *(v5 + 128) = v10;
          *(v5 + 144) = v65;
          *(v5 + 160) = v66;
          v11 = v60;
          *(v5 + 48) = v59;
          *(v5 + 64) = v11;
          v12 = v62;
          *(v5 + 80) = v61;
          *(v5 + 96) = v12;
          v13 = v58;
          *(v5 + 16) = v57;
          *(v5 + 32) = v13;
          v14 = *(v1 + 72);
          *(v5 + 184) = *(v1 + 88);
          *(v5 + 168) = v14;
        }

        outlined init with copy of ImagePaint._Paint(&v48, v46);
        v15 = *(v1 + 48);
        v16 = *(v1 + 80);
        v42 = *(v1 + 64);
        v43[0] = v16;
        *(v43 + 12) = *(v1 + 92);
        v17 = *(v1 + 16);
        v39[0] = *v1;
        v39[1] = v17;
        v18 = *(v1 + 48);
        v20 = *v1;
        v19 = *(v1 + 16);
        v40 = *(v1 + 32);
        v41 = v18;
        v21 = *(v1 + 80);
        v52 = v42;
        *v53 = v21;
        *&v53[12] = *(v1 + 92);
        v48 = v20;
        v49 = v19;
        DWORD2(v36) = 1065353216;
        *&v37 = 0;
        BYTE8(v37) = -1;
        v38 = MEMORY[0x1E69E7CC0];
        *&v31 = v5;
        BYTE5(v36) = 1;
        v50 = v40;
        v51 = v15;

        outlined init with copy of _ShapeStyle_Shape(v39, v46);
        v22 = _ShapeStyle_Shape.opacity(at:)(v2);
        v44[4] = v52;
        v45[0] = *v53;
        *(v45 + 12) = *&v53[12];
        v44[0] = v48;
        v44[1] = v49;
        v44[2] = v50;
        v44[3] = v51;
        outlined destroy of _ShapeStyle_Shape(v44);
        _ShapeStyle_Pack.Style.applyOpacity(_:)(v22);
        v46[4] = v35;
        v46[5] = v36;
        v46[6] = v37;
        v47 = v38;
        v46[0] = v31;
        v46[1] = v32;
        v46[2] = v33;
        v46[3] = v34;
        v29[4] = v35;
        v29[5] = v36;
        v29[6] = v37;
        v30 = v38;
        v29[0] = v31;
        v29[1] = v32;
        v29[2] = v33;
        v29[3] = v34;
        v28 = v3;
        if (*(v1 + 40) == 1)
        {
          v23 = *(v1 + 32);
          outlined init with copy of _ShapeStyle_Pack.Style(v46, &v48);
          outlined copy of _ShapeStyle_Shape.Result(v23, 1u);
          outlined consume of _ShapeStyle_Shape.Result(v23, 1u);
          *(v1 + 32) = 0;
          *(v1 + 40) = 5;
        }

        else
        {
          outlined init with copy of _ShapeStyle_Pack.Style(v46, &v48);
          v23 = MEMORY[0x1E69E7CC0];
        }

        v27 = v23;
        _ShapeStyle_Pack.subscript.setter(v29, &v28, v2);

        v25[4] = v35;
        v25[5] = v36;
        v25[6] = v37;
        v26 = v38;
        v25[0] = v31;
        v25[1] = v32;
        v25[2] = v33;
        v25[3] = v34;
        outlined destroy of _ShapeStyle_Pack.Style(v25);
        *&v53[16] = v63;
        v54 = v64;
        v55 = v65;
        v56 = v66;
        v50 = v59;
        v51 = v60;
        v52 = v61;
        *v53 = v62;
        v48 = v57;
        v49 = v58;
        outlined destroy of ImagePaint._Paint(&v48);
        v24 = v27;
        result = outlined consume of _ShapeStyle_Shape.Result(*(v1 + 32), *(v1 + 40));
        *(v1 + 32) = v24;
        *(v1 + 40) = 1;
      }
    }

    else
    {
      result = outlined consume of _ShapeStyle_Shape.Result(*(result + 32), *(result + 40));
      *(v1 + 32) = 0;
      *(v1 + 40) = 0;
    }
  }

  return result;
}

__n128 LinearGradient.resolvePaint(in:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = *v3;
  *&v15 = *a1;
  *(&v15 + 1) = v6;
  Gradient.resolve(in:)(&v15, v7, &v16);
  v8 = 0;
  v9 = v16;
  v10 = v17;
  v11 = HIDWORD(v17);
  v12 = v18;
  if ((v18 & 1) == 0 && *(&v17 + 1) > 1.0)
  {
    v16 = v5;
    v17 = v6;
    v14 = 3;
    EnvironmentValues.effectiveAllowedDynamicRange(explicitRange:)(&v14, &v15);
    v8 = v15;
  }

  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 12) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = *(v3 + 8);
  result = *(v3 + 24);
  *(a2 + 40) = result;
  *(a2 + 56) = v8;
  return result;
}

__int128 *Gradient.resolve(in:)@<X0>(__int128 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 0.0;
    v19 = *result;
    v5 = (a2 + 40);
    v6 = MEMORY[0x1E69E7CC0];
    v7 = 1;
    do
    {
      v8 = *(v5 - 1);
      v9 = *v5;
      v20 = v19;
      v10 = *(*v8 + 120);

      v10(&v21, &v20);
      v11 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      if (v13 >= v12 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v6);
      }

      *(v6 + 2) = v13 + 1;
      v14 = &v6[48 * v13];
      *(v14 + 2) = v21;
      *(v14 + 6) = v9;
      if (v7)
      {
        v15 = v11;
      }

      else
      {
        v15 = v4;
      }

      v16 = v4;
      if (v4 <= v11)
      {
        v16 = v11;
      }

      *(v14 + 7) = 0;
      *(v14 + 8) = 0;
      v14[72] = 1;
      if (v7)
      {
        v4 = v15;
      }

      else
      {
        v4 = v16;
      }

      v7 = 0;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0.0;
    v6 = MEMORY[0x1E69E7CC0];
    v7 = 1;
  }

  if (one-time initialization token for default != -1)
  {
    result = swift_once();
  }

  v17 = static ResolvedGradient.ColorSpace.default;
  *a3 = v6;
  *(a3 + 8) = v17;
  *(a3 + 12) = v4;
  *(a3 + 16) = v7;
  return result;
}

void type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t initializeWithCopy for _ShapeStyle_Shape(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 9) = *(a2 + 9);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  outlined copy of _ShapeStyle_Shape.Result(v4, v5);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 107) = *(a2 + 107);

  return a1;
}

Swift::Void __swiftcall _ShapeStyle_Pack.Style.applyOpacity(_:)(Swift::Float a1)
{
  *(v1 + 88) = *(v1 + 88) * a1;
  v3 = *(v1 + 112);
  v4 = *(v3 + 2);
  if (v4)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    }

    if (v4 > *(v3 + 2))
    {
      __break(1u);
    }

    else
    {
      v5 = 0;
      v6 = v4 - 1;
      if (v4 == 1)
      {
        goto LABEL_6;
      }

      v9 = !is_mul_ok(v6, 0x50uLL);
      if (&v3[80 * v6 + 88] < v3 + 88)
      {
        goto LABEL_6;
      }

      if (v9)
      {
        goto LABEL_6;
      }

      v5 = v4 & 0x7FFFFFFFFFFFFFFELL;
      v10 = (v3 + 168);
      v11 = v4 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v12 = *v10 * a1;
        *(v10 - 20) = *(v10 - 20) * a1;
        *v10 = v12;
        v10 += 40;
        v11 -= 2;
      }

      while (v11);
      if (v4 != v5)
      {
LABEL_6:
        v7 = v4 - v5;
        v8 = &v3[80 * v5 + 88];
        do
        {
          *v8 = *v8 * a1;
          v8 += 20;
          --v7;
        }

        while (v7);
      }

      *(v1 + 112) = v3;
    }
  }
}

uint64_t initializeWithCopy for LinearGradient._Paint(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

void _ShapeStyle_Pack.Fill.AnimatableData.PaintInitVisitor.visitPaint<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v108 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v109 = &v108 - v8;
  MEMORY[0x1EEE9AC00](v9);
  *&v110.f64[0] = &v108 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v108 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v108 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v108 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v108 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v25 = *(v5 + 16);
  v111.f64[0] = v27;
  v25(&v108 - v26, v24);
  if (swift_dynamicCast())
  {
    v111 = v124;
    v28 = *v2;
    if (one-time initialization token for legacyInterpolation != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (static Color.Resolved.legacyInterpolation)
    {
      v29 = v111;
    }

    else
    {
      LOBYTE(v119) = 2;
      ResolvedGradient.ColorSpace.convertIn(_:)(&v124, *v111.f64, HIDWORD(v111.f64[0]), *&v111.f64[1], *(&v111.f64[1] + 1));
      v29 = v124;
    }

    v32.i64[0] = 0x4300000043000000;
    v32.i64[1] = 0x4300000043000000;
    v33 = vmulq_f32(v29, v32);
    v34 = *(v28 + 16);
    v124 = *v28;
    v125 = v34;
    v35 = *(v28 + 32);
    v36 = *(v28 + 48);
    v37 = *(v28 + 64);
    v129 = *(v28 + 80);
    v127 = v36;
    v128 = v37;
    v126 = v35;
    *v28 = v33;
    *(v28 + 16) = 0;
LABEL_17:
    *(v28 + 80) = 0;
    goto LABEL_18;
  }

  (v25)(v22, *&v111.f64[0], a2);
  if (swift_dynamicCast())
  {
    v111 = v124;
    v30 = v125;
    v28 = *v2;
    if (one-time initialization token for legacyInterpolation != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (static Color.Resolved.legacyInterpolation)
    {
      v31 = v111;
    }

    else
    {
      LOBYTE(v119) = 2;
      ResolvedGradient.ColorSpace.convertIn(_:)(&v124, *v111.f64, HIDWORD(v111.f64[0]), *&v111.f64[1], *(&v111.f64[1] + 1));
      v31 = v124;
    }

    v49.i64[0] = 0x4300000043000000;
    v49.i64[1] = 0x4300000043000000;
    v50 = vmulq_f32(v31, v49);
    v51 = *(v28 + 16);
    v124 = *v28;
    v125 = v51;
    v52 = *(v28 + 32);
    v53 = *(v28 + 48);
    v54 = *(v28 + 64);
    v129 = *(v28 + 80);
    v127 = v53;
    v128 = v54;
    v126 = v52;
    *v28 = v50;
    *(v28 + 16) = v30;
    goto LABEL_17;
  }

  (v25)(v19, *&v111.f64[0], a2);
  if (swift_dynamicCast())
  {
    v38 = *v2;
    v124.i64[0] = v130;
    v124.i8[8] = BYTE8(v130);
    v124.i32[3] = HIDWORD(v130);
    LOBYTE(v125) = v131[0];
    v39 = vdupq_n_s64(0x4060000000000000uLL);
    v110 = vmulq_f64(*&v131[24], v39);
    v111 = vmulq_f64(*&v131[8], v39);
    ResolvedGradient.animatableData.getter(&v119);

    v40 = v119;
    v41 = BYTE8(v119);
    v42 = HIDWORD(v119);
    v43 = v120;
    LOBYTE(v114) = v120;
    v44 = *(v38 + 16);
    v124 = *v38;
    v125 = v44;
    v45 = *(v38 + 32);
    v46 = *(v38 + 48);
    v47 = *(v38 + 64);
    v129 = *(v38 + 80);
    v127 = v46;
    v128 = v47;
    v126 = v45;
    v48 = v110;
    *v38 = v111;
    *(v38 + 16) = v48;
    *(v38 + 32) = v40;
    *(v38 + 40) = v41;
    *(v38 + 44) = v42;
    *(v38 + 48) = v43;
    *(v38 + 80) = 2;
LABEL_18:
    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v124);
    return;
  }

  (v25)(v16, *&v111.f64[0], a2);
  if (swift_dynamicCast())
  {
    v55 = *&v131[24];
    v56 = *&v131[32];
    v57 = *v2;
    v58 = *&v131[8] * 128.0;
    v59 = *&v131[16] * 128.0;
    v124.i64[0] = v130;
    v124.i8[8] = BYTE8(v130);
    v124.i32[3] = HIDWORD(v130);
    LOBYTE(v125) = v131[0];
    ResolvedGradient.animatableData.getter(&v119);

    v60 = v119;
    v61 = BYTE8(v119);
    v62 = HIDWORD(v119);
    v63 = v120;
    LOBYTE(v119) = v120;
    v64 = *(v57 + 16);
    v124 = *v57;
    v125 = v64;
    v65 = *(v57 + 32);
    v66 = *(v57 + 48);
    v67 = *(v57 + 64);
    v129 = *(v57 + 80);
    v127 = v66;
    v128 = v67;
    v126 = v65;
    *v57 = v58;
    *(v57 + 8) = v59;
    *(v57 + 16) = v60;
    *(v57 + 24) = v61;
    *(v57 + 28) = v62;
    *(v57 + 32) = v63;
    *(v57 + 40) = v55;
    *(v57 + 48) = v56;
    *(v57 + 80) = 3;
    goto LABEL_18;
  }

  (v25)(v13, *&v111.f64[0], a2);
  if (swift_dynamicCast())
  {
    v68 = *&v131[24];
    v69 = *&v131[32];
    v70 = *v2;
    v71 = *&v131[8] * 128.0;
    v72 = *&v131[16] * 128.0;
    v124.i64[0] = v130;
    v124.i8[8] = BYTE8(v130);
    v124.i32[3] = HIDWORD(v130);
    LOBYTE(v125) = v131[0];
    ResolvedGradient.animatableData.getter(&v119);

    v73 = v119;
    v74 = BYTE8(v119);
    v75 = HIDWORD(v119);
    v76 = v120;
    LOBYTE(v119) = v120;
    v77 = *(v70 + 16);
    v124 = *v70;
    v125 = v77;
    v78 = *(v70 + 32);
    v79 = *(v70 + 48);
    v80 = *(v70 + 64);
    v129 = *(v70 + 80);
    v127 = v79;
    v128 = v80;
    v126 = v78;
    *v70 = v71;
    *(v70 + 8) = v72;
    *(v70 + 16) = v73;
    *(v70 + 24) = v74;
    *(v70 + 28) = v75;
    *(v70 + 32) = v76;
    *(v70 + 40) = v68;
    *(v70 + 48) = v69;
    *(v70 + 80) = 4;
    goto LABEL_18;
  }

  (v25)(*&v110.f64[0], *&v111.f64[0], a2);
  if (swift_dynamicCast())
  {
    v81 = *&v131[24];
    v82 = *&v131[32];
    v83 = *v2;
    v84 = *&v131[8] * 128.0;
    v85 = *&v131[16] * 128.0;
    v124.i64[0] = v130;
    v124.i8[8] = BYTE8(v130);
    v124.i32[3] = HIDWORD(v130);
    LOBYTE(v125) = v131[0];
    ResolvedGradient.animatableData.getter(&v119);

    v86 = v119;
    v87 = BYTE8(v119);
    v88 = HIDWORD(v119);
    v89 = v120;
    LOBYTE(v119) = v120;
    v90 = *(v83 + 16);
    v124 = *v83;
    v125 = v90;
    v91 = *(v83 + 32);
    v92 = *(v83 + 48);
    v93 = *(v83 + 64);
    v129 = *(v83 + 80);
    v127 = v92;
    v128 = v93;
    v126 = v91;
    *v83 = v84;
    *(v83 + 8) = v85;
    *(v83 + 16) = v86;
    *(v83 + 24) = v87;
    *(v83 + 28) = v88;
    *(v83 + 32) = v89;
    *(v83 + 40) = v81 * 128.0;
    *(v83 + 48) = v82 * 128.0;
    *(v83 + 80) = 5;
    goto LABEL_18;
  }

  (v25)(v109, *&v111.f64[0], a2);
  if (swift_dynamicCast())
  {
    v121 = *&v131[16];
    v122 = *&v131[32];
    v123 = v132;
    v119 = v130;
    v120 = *v131;
    v94 = *v2;
    v116 = *&v131[16];
    v117 = *&v131[32];
    v118 = v132;
    v114 = v130;
    v115 = *v131;
    MeshGradient._Paint.animatableData.getter(v112);
    outlined destroy of MeshGradient._Paint(&v119);
    v95 = v113;
    v96 = *v94;
    v125 = *(v94 + 16);
    v97 = *(v94 + 32);
    v98 = *(v94 + 48);
    v99 = *(v94 + 64);
    v129 = *(v94 + 80);
    v127 = v98;
    v128 = v99;
    v126 = v97;
    v124 = v96;
    v100 = v112[1];
    *v94 = v112[0];
    *(v94 + 16) = v100;
    *(v94 + 32) = v95;
    *(v94 + 80) = 6;
    goto LABEL_18;
  }

  (v25)(v108, *&v111.f64[0], a2);
  if (swift_dynamicCast())
  {
    v101 = v130;
    v102 = *v3;
    v103 = v130;
    ShaderVectorData.init(rbShader:)(v101, &v119);
    v104 = *(v102 + 16);
    v124 = *v102;
    v125 = v104;
    v106 = *(v102 + 48);
    v105 = *(v102 + 64);
    v107 = *(v102 + 32);
    v129 = *(v102 + 80);
    v127 = v106;
    v128 = v105;
    v126 = v107;
    *v102 = v119;
    *(v102 + 80) = 7;
    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v124);
  }
}

uint64_t initializeWithCopy for _ShapeStyle_Pack.Fill(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v13 = *(a2 + 64);
  v14 = *(a2 + 72);
  v15 = *(a2 + 84);
  v16 = *(a2 + 80);
  v11 = *(a2 + 85);
  outlined copy of _ShapeStyle_Pack.Fill(*a2, v4, v5, v6, v7, v8, v9, v10, v13, v14, v16 | (v15 << 32), v11);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v13;
  *(a1 + 72) = v14;
  *(a1 + 84) = v15;
  *(a1 + 80) = v16;
  *(a1 + 85) = v11;
  return a1;
}

uint64_t ResolvedGradient.animatableData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 3);
  v6 = *(v1 + 16);
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v7 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v7)
    {
      goto LABEL_7;
    }

LABEL_9:
    v13 = v3;
    v14 = v4;
    v15 = v5;
    v16 = v6;

    v21.stops._rawValue = &v13;
    result = ResolvedGradientVector.init(_:)(v21);
    v12 = v17;
    v9 = v18;
    v10 = v19;
    v11 = v20;
    goto LABEL_10;
  }

  result = dyld_program_sdk_at_least();
  if (result)
  {
    goto LABEL_9;
  }

LABEL_7:
  v9 = 0;
  v10 = 0;
  v11 = 1;
  v12 = MEMORY[0x1E69E7CC0];
LABEL_10:
  *a1 = v12;
  *(a1 + 8) = v9;
  *(a1 + 12) = v10;
  *(a1 + 16) = v11;
  return result;
}

SwiftUI::ResolvedGradientVector __swiftcall ResolvedGradientVector.init(_:)(SwiftUI::ResolvedGradient a1)
{
  v2 = v1;
  v3 = *a1.stops._rawValue;
  v4 = *(a1.stops._rawValue + 8);
  v5 = *(a1.stops._rawValue + 3);
  v6 = *(a1.stops._rawValue + 16);
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*a1.stops._rawValue + 16), 0, MEMORY[0x1E69E7CC0]);
  v8 = *(v3 + 16);
  if (v8)
  {
    v28 = v6;
    v29 = v2;

    v9 = v3 + 36;
    do
    {
      v10 = *(v9 - 4);
      v11 = *v9;
      v12 = *(v9 + 4);
      v13 = *(v9 + 8);
      v14 = *(v9 + 12);
      v15 = *(v9 + 20);
      v16 = *(v9 + 28);
      v17 = *(v9 + 36);
      v31 = v4;
      ResolvedGradient.ColorSpace.convertIn(_:)(&v30, v10, v11, v12, v13);
      v18 = v30;
      v31 = v17;
      v20 = *(v7 + 2);
      v19 = *(v7 + 3);
      if (v20 >= v19 >> 1)
      {
        v27 = v30;
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v7);
        v18 = v27;
        v7 = v22;
      }

      *(v7 + 2) = v20 + 1;
      v21 = &v7[48 * v20];
      *(v21 + 2) = v18;
      *(v21 + 6) = v14;
      *(v21 + 7) = v15;
      *(v21 + 8) = v16;
      v21[72] = v17;
      v9 += 48;
      --v8;
    }

    while (v8);

    v2 = v29;
    v6 = v28;
  }

  *v2 = v7;
  *(v2 + 8) = v4;
  *(v2 + 12) = v5;
  *(v2 + 16) = v6;
  result.stops._rawValue = v23;
  result.headroom.value = v26;
  result.colorSpace = v24;
  *result.gap9 = *(&v24 + 1);
  result.gap9[2] = HIBYTE(v24);
  result.headroom.is_nil = v25;
  return result;
}

uint64_t outlined consume of _ShapeStyle_Pack.Fill.AnimatableData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  if (a11 > 4u)
  {
    if (a11 != 5)
    {
      if (a11 == 6)
      {
      }

      else if (a11 != 7)
      {
        return result;
      }
    }

    goto LABEL_13;
  }

  if (a11 == 2 || (a11 != 3 ? (v11 = a11 == 4) : (v11 = 1), v11))
  {
LABEL_13:
  }

  return result;
}

uint64_t _AspectRatioLayout.spaceOffered(to:in:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v7 = *result;
  v8 = *(result + 8);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  if (one-time initialization token for unspecified != -1)
  {
    v17 = a3;
    result = swift_once();
    a3 = v17;
  }

  v13 = byte_1ED52ECF8;
  v14 = byte_1ED52ED08;
  if (v10)
  {
    if (!byte_1ED52ECF8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (*&static _ProposedSize.unspecified != v9)
    {
      v13 = 1;
    }

    if (v13)
    {
      goto LABEL_11;
    }
  }

  if ((v12 & 1) == 0)
  {
    if (*&qword_1ED52ED00 != v11)
    {
      v14 = 1;
    }

    if (v14)
    {
      goto LABEL_11;
    }

LABEL_20:
    *a5 = v9;
    *(a5 + 8) = v10;
    *(a5 + 16) = v11;
    goto LABEL_21;
  }

  if (byte_1ED52ED08)
  {
    goto LABEL_20;
  }

LABEL_11:
  if (a4)
  {
    v22 = v7;
    v23 = v8;
    v18 = *&a3;
    v19 = 1;
    v20 = *&a3;
    v21 = 1;
    LayoutProxy.size(in:)(&v18);
  }

  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  if ((a4 & 0x100) != 0)
  {
    result = CGSize.scaledToFill(_:)();
  }

  else
  {
    result = CGSize.scaledToFit(_:)();
  }

  v12 = 0;
  *a5 = v15;
  *(a5 + 8) = 0;
  *(a5 + 16) = v16;
LABEL_21:
  *(a5 + 24) = v12;
  return result;
}

uint64_t protocol witness for UnaryLayout.sizeThatFits(in:context:child:) in conformance _AspectRatioLayout(uint64_t a1, uint64_t a2, int *a3)
{
  if (*(v3 + 9))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return _AspectRatioLayout.sizeThatFits(in:context:child:)(a1, a2, a3, *v3, v4 | *(v3 + 8));
}

uint64_t _AspectRatioLayout.sizeThatFits(in:context:child:)(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, __int16 a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = a3[1];
  v10 = a3[2];
  v21 = *a3;
  v22 = v9;
  v23 = v10;
  v16[0] = v21;
  v16[1] = v9;
  v16[2] = v10;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  _AspectRatioLayout.spaceOffered(to:in:)(v16, &v12, a4, a5 & 0x101, &v17);
  v12 = v17;
  v13 = v18;
  v14 = v19;
  v15 = v20;
  return LayoutProxy.size(in:)(&v12);
}

double _AspectRatioLayout.placement(of:in:)@<D0>(uint64_t *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 2);
  v9 = *a2;
  v35 = *(a2 + 1);
  v36 = a2[3];
  v10 = *(a2 + 2);
  v11 = *(a2 + 3);
  v39 = *(a2 + 2);
  v12 = *(a2 + 48);
  v41 = *a1;
  v42 = v8;
  v34 = v9;
  v37 = v10;
  v38 = v11;
  v40 = v12;
  PlacementContext.proposedSize.getter(&v30);
  v26 = v30;
  v27 = v31;
  v28 = v32;
  v29 = v33;
  _AspectRatioLayout.spaceOffered(to:in:)(&v41, &v26, a3, a4 & 0x101, &v43);
  v13 = v43;
  v14 = v44;
  v15 = v45;
  v16 = v46;
  if (v12)
  {
    InputValue = AGGraphGetInputValue();
    v18 = *InputValue;
    v19 = InputValue[1];
  }

  else
  {
    v18 = v10;
    v19 = v11;
  }

  result = v18 * 0.5;
  *a5 = v13;
  *(a5 + 8) = v14;
  *(a5 + 16) = v15;
  *(a5 + 24) = v16;
  __asm { FMOV            V2.2D, #0.5 }

  *(a5 + 32) = _Q2;
  *(a5 + 48) = result;
  *(a5 + 56) = v19 * 0.5;
  return result;
}

double protocol witness for UnaryLayout.placement(of:in:) in conformance _AspectRatioLayout@<D0>(uint64_t *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(v3 + 9))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return _AspectRatioLayout.placement(of:in:)(a1, a2, *v3, v4 | *(v3 + 8), a3);
}

__n128 protocol witness for ImageProvider.resolve(in:) in conformance Image.ResizableProvider@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  (*(**v1 + 80))();
  v4 = *(v1 + 8);
  *(a1 + 88) = *(v1 + 24);
  *(a1 + 72) = v4;
  *(a1 + 104) = v3;
  Image.Resolved.image.didset();
  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020DefaultRenderingModeS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultRenderingModeKey>, &type metadata for DefaultRenderingModeKey, &protocol witness table for DefaultRenderingModeKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA020DefaultRenderingModeV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA020DefaultRenderingModeV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA020DefaultRenderingModeV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultRenderingModeKey>, &type metadata for DefaultRenderingModeKey, &protocol witness table for DefaultRenderingModeKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultRenderingModeKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultRenderingModeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultRenderingModeKey>, &type metadata for DefaultRenderingModeKey, &protocol witness table for DefaultRenderingModeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultRenderingModeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultRenderingModeKey>>);
    }
  }
}

void Image.Resolved.image.didset()
{
  v1 = *(v0 + 186);
  v2 = *(v0 + 8);
  if (v2 == 255)
  {
    v10 = 0;
    goto LABEL_7;
  }

  if (v2 != 2)
  {
    v10 = *(v0 + 64) ^ 1;
LABEL_7:

    v8 = 0;
    *(v0 + 176) = 0;
    *(v0 + 184) = v10;
    if ((v1 & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v9 = v8 & 0xFD;
    goto LABEL_9;
  }

  v3 = *(*v0 + 32);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 16);
  outlined copy of Image.Location(v3);
  v6 = v4;
  outlined copy of Image.Location(v3);
  v11 = v3;
  _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)([v5 styleMask], &v11, &v12);

  outlined consume of Image.Location(v3);
  v7 = v12;
  LOWORD(v6) = v13;
  v8 = v14;

  *(v0 + 176) = v7;
  *(v0 + 184) = v6;
  if ((v1 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = v8 | 2;
LABEL_9:
  *(v0 + 186) = v9;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA020DefaultRenderingModeI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (a1)
  {
    if (v6 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultRenderingModeKey>, &type metadata for DefaultRenderingModeKey, &protocol witness table for DefaultRenderingModeKey, type metadata accessor for EnvironmentPropertyKey);
      v8 = v7;
      v9 = *(v5 + 32);
      if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v20);
        outlined init with take of AnyTrackedValue(v20, v21);
        v12 = v22;
        v13 = v23;
        __swift_project_boxed_opaque_existential_1(v21, v22);
        (v13[1])(&type metadata for Image.TemplateRenderingMode, v12, v13);
        __swift_destroy_boxed_opaque_existential_1(v21);
      }

      else
      {
        v16 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020DefaultRenderingModeS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
        if (v16)
        {
          v17 = *(v16 + 72);
        }

        else
        {
          v17 = 1;
        }

        *a2 = v17;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultRenderingModeKey>>();
        v22 = v18;
        v23 = &protocol witness table for TrackedValue<A>;
        LOBYTE(v21[0]) = v17;
        specialized Dictionary.subscript.setter(v21, v8);
      }

      goto LABEL_14;
    }
  }

  else if (!v6)
  {
    goto LABEL_3;
  }

  v14 = 1;
  *(v5 + 56) = 1;
  v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020DefaultRenderingModeS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
  if (v15)
  {
    v14 = *(v15 + 72);
  }

  *a2 = v14;
LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

void type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<_AspectRatioLayout>>()
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<_AspectRatioLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<_AspectRatioLayout>, lazy protocol witness table accessor for type _AspectRatioLayout and conformance _AspectRatioLayout, &type metadata for _AspectRatioLayout, type metadata accessor for UnaryLayoutEngine);
    v0 = type metadata accessor for LayoutEngineBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<_AspectRatioLayout>>);
    }
  }
}

id *DynamicContainer._ItemInfo.deinit()
{

  v1 = *(*v0 + 26);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  v3 = *(*v0 + 27);
  v4 = swift_getAssociatedTypeWitness();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t destroy for DynamicLayoutComputer()
{
}

uint64_t Shape.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v2, a1, v5);
  return _ShapeView.init(shape:style:fillStyle:)(v7, v9, 256, a1, &type metadata for ForegroundStyle, a2);
}

uint64_t CGSize.scaledToFit(_:)()
{
  if (one-time initialization token for unspecified != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t _ShapeStyle_RenderedShape.renderUnstyledImage(_:layers:)(__int128 *a1)
{
  v2 = a1[5];
  v24 = a1[4];
  v25[0] = v2;
  *(v25 + 12) = *(a1 + 92);
  v3 = a1[1];
  v20 = *a1;
  v21 = v3;
  v4 = a1[3];
  v22 = a1[2];
  v23 = v4;
  v18[0] = 0;
  v18[1] = 0;
  v19 = 3;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(v18, v16, v1);
  v5 = swift_allocObject();
  v6 = v25[0];
  *(v5 + 80) = v24;
  *(v5 + 96) = v6;
  *(v5 + 108) = *(v25 + 12);
  v7 = v21;
  *(v5 + 16) = v20;
  *(v5 + 32) = v7;
  v8 = v23;
  *(v5 + 48) = v22;
  *(v5 + 64) = v8;
  v9 = v5 | 0x3000000000000000;
  v10 = *(v1 + 108);
  v11 = *(v1 + 200);
  v12 = *(v1 + 208);
  v13 = *(v1 + 216);
  v14 = *(v1 + 224);
  outlined init with copy of GraphicsImage(&v20, v16);
  outlined consume of DisplayList.Item.Value(v11, v12, v13, v14);
  *(v1 + 200) = v9;
  *(v1 + 208) = v10;
  *(v1 + 216) = 0;
  *(v1 + 224) = 0;
  return _ShapeStyle_RenderedLayers.endLayer(shape:)(v1);
}

uint64_t sub_18D129368()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    outlined consume of GraphicsImage.Contents(*(v0 + 16), v1);
  }

  return swift_deallocObject();
}

void _ShapeStyle_RenderedShape.render(paint:)(uint64_t a1)
{
  v2 = v1;
  v62 = *(v1 + 104);
  if (v62 >> 29)
  {
    __asm { FMOV            V0.4S, #1.0 }

    v99 = _Q0;
    v100 = 2143289344;
    _ShapeStyle_RenderedShape.render(color:)(&v99);
    v29 = *(v1 + 176);
    v30 = *(v1 + 208);
    v91 = *(v1 + 192);
    v92[0] = v30;
    *(v92 + 12) = *(v1 + 220);
    v31 = *(v1 + 176);
    v90[0] = *(v1 + 160);
    v90[1] = v31;
    v87 = v91;
    v88 = v30;
    v32 = v31;
    v89 = *(v1 + 224);
    v86 = v31;
    v93 = 0uLL;
    v33 = *(v1 + 208);
    v97 = *(v1 + 224);
    v95 = v91;
    v96 = v33;
    v94 = v29;
    v98 = 0;
    v83 = 0uLL;
    v84 = v29;
    v34 = *(&v91 + 1);
    v85 = v91;
    v35 = v33;
    v36 = v97;
    outlined init with copy of DisplayList.Item(v90, &v79);
    outlined init with copy of DisplayList.Item(&v93, &v79);
    v101.origin.x = 0.0;
    v101.origin.y = 0.0;
    v101.size = v32;
    IsNull = CGRectIsNull(v101);
    if (IsNull)
    {
      width = 0.0;
    }

    else
    {
      width = v32.width;
    }

    if (IsNull)
    {
      height = 0.0;
    }

    else
    {
      height = v32.height;
    }

    if (IsNull)
    {
      v40 = 6;
    }

    else
    {
      v40 = 0;
    }

    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    *(v41 + 32) = width;
    *(v41 + 40) = height;
    *(v41 + 48) = v40;
    *(v41 + 56) = a1;
    *(v41 + 64) = 256;
    v42 = v41 | 0x4000000000000000;
    v43 = *(v2 + 108);

    outlined consume of DisplayList.Item.Value(v34, v35, *(&v35 + 1), v36);
    v44 = swift_allocObject();
    v66[0] = 0uLL;
    *&v67[16] = v89;
    v66[2] = v87;
    *v67 = v88;
    v66[1] = v86;
    *&v67[24] = 0;
    v81 = v87;
    *v82 = v88;
    *&v82[12] = *&v67[12];
    v79 = 0uLL;
    v80 = v86;
    outlined init with copy of DisplayList.Item(v66, v73);
    DisplayList.init(_:)(&v79, v44 + 16);
    *(v44 + 32) = 0;
    *&v69 = v85;
    *(&v69 + 1) = v42;
    v71 = 0;
    v70 = v43;
    v72 = 0;
    v81 = v69;
    *v82 = v43;
    *&v82[12] = v43 >> 96;
    v68[0] = v83;
    v68[1] = v84;
    v79 = v83;
    v80 = v84;
    outlined init with copy of DisplayList.Item(v68, v73);
    DisplayList.init(_:)(&v79, &v63);
    v73[0] = 0;
    v73[1] = 0;
    v74 = v86;
    v75 = v87;
    v76 = v88;
    v77 = v89;
    v78 = 0;
    outlined destroy of DisplayList.Item(v73);
    v45 = v63;
    v46 = v64 | (v65 << 32) | 0x40000000;
    outlined consume of DisplayList.Item.Value(*(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224));
    *(v2 + 200) = v44;
    *(v2 + 208) = 0x700000000;
    *(v2 + 216) = v45;
    *(v2 + 224) = v46;
    v79 = v83;
    v80 = v84;
    *&v81 = v85;
    *(&v81 + 1) = v42;
    *&v82[16] = 0;
    *v82 = v43;
    *&v82[24] = 0;
    outlined destroy of DisplayList.Item(&v79);
  }

  else
  {
    v4 = *v1;
    v5 = *(v1 + 8);
    v6 = *(v1 + 16);
    v7 = *(v1 + 24);
    v8 = *(v1 + 32);
    v61 = *(v1 + 40);
    v52 = *(v1 + 48);
    v51 = *(v1 + 56);
    v55 = *(v1 + 72);
    v56 = *(v1 + 64);
    v11 = *(v1 + 80);
    v10 = *(v1 + 88);
    v12 = *(v2 + 96);
    v13 = swift_allocObject();
    v57 = v4;
    v58 = v5;
    *(v13 + 16) = v4;
    *(v13 + 24) = v5;
    v59 = v6;
    v60 = v7;
    *(v13 + 32) = v6;
    *(v13 + 40) = v7;
    *(v13 + 48) = v8;
    *(v13 + 56) = a1;
    *(v13 + 64) = BYTE1(v8) & 1;
    *(v13 + 65) = BYTE2(v8) & 1;
    v14 = *(v2 + 108);
    v50 = *(v2 + 200);
    v49 = *(v2 + 208);
    v48 = *(v2 + 216);
    v47 = *(v2 + 224);
    *(v2 + 200) = v13 | 0x4000000000000000;
    *(v2 + 208) = v14;
    *(v2 + 216) = 0;
    *(v2 + 224) = 0;
    outlined copy of _ShapeStyle_RenderedShape.Shape(v4, v5, v6, v7, v8, v61, v52, v51, v56, v55, v11, v10, v12, v62);
    v53 = v10;
    v54 = v11;
    outlined copy of _ShapeStyle_RenderedShape.Shape(v4, v5, v6, v7, v8, v61, v52, v51, v56, v55, v11, v10, v12, v62);

    outlined consume of DisplayList.Item.Value(v50, v49, v48, v47);
    v15 = *(v2 + 144);
    if (v15)
    {
      v16 = *(v2 + 152);
      v17 = *(v2 + 208);
      v18 = *(v2 + 216);
      v19 = *(v2 + 224);
      v20 = *(v2 + 192);
      v21 = *(v2 + 200);
      v93 = 0uLL;
      v94 = *(v2 + 176);
      *&v95 = v20;
      *(&v95 + 1) = v21;
      *&v96 = v17;
      *(&v96 + 1) = v18;
      v97 = v19;
      v98 = 0;
      swift_retain_n();
      outlined copy of DisplayList.Item.Value(v21, v17, v18, v19);
      DisplayList.init(_:)(&v93, v90);
      v22 = *&v90[0];
      v23 = WORD4(v90[0]) | (HIDWORD(v90[0]) << 32) | 0x40000000;
      outlined consume of DisplayList.Item.Value(*(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224));
      *(v2 + 200) = v15;
      *(v2 + 208) = v16 | 0x1200000000;
      *(v2 + 216) = v22;
      *(v2 + 224) = v23;
      LOBYTE(v93) = *(v2 + 236);
      DisplayList.Item.canonicalize(options:)(&v93);
      outlined consume of _ShapeStyle_RenderedShape.Shape(v57, v58, v59, v60, v8, v61, v52, v51, v56, v55, v54, v53, v12, v62);

      *(v2 + 144) = 0;
      *(v2 + 152) = 0;
    }

    else
    {
      outlined consume of _ShapeStyle_RenderedShape.Shape(v57, v5, v6, v7, v8, v61, v52, v51, v56, v55, v11, v10, v12, v62);
    }
  }
}

uint64_t sub_18D1298CC()
{

  return swift_deallocObject();
}

uint64_t _ShapeView.init(shape:style:fillStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v10 = type metadata accessor for _ShapeView();
  result = (*(*(a5 - 8) + 32))(a6 + *(v10 + 52), a2, a5);
  v12 = (a6 + *(v10 + 56));
  *v12 = a3 & 1;
  v12[1] = HIBYTE(a3) & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultRenderingModeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultRenderingModeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultRenderingModeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultRenderingModeKey>, &type metadata for DefaultRenderingModeKey, &protocol witness table for DefaultRenderingModeKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultRenderingModeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t DynamicViewList.Item.__deallocating_deinit()
{
  DynamicViewList.Item.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_18D12D2B0()
{

  return swift_deallocObject();
}

uint64_t sub_18D12D2E8()
{

  return swift_deallocObject();
}

uint64_t sub_18D12D320()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI5ImageVAAE8ResolvedVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 128) >> 1;
  v2 = -2 - v1;
  if (-2 - v1 < 0)
  {
    v2 = -1;
  }

  if (v1 > 0x80000000)
  {
    return (v2 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t specialized Image.Resolved.mustUpdate(data:position:environment:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  if (v4 != 2)
  {
    if (*(a1 + 16) == 1 && v4 == 0)
    {
      v25 = *(v1 + 104);
      v26 = v25 != 2 && (v25 & 1) == 0;
      _CGImagePrepareCALayerContents(v3, 0, v26);
    }

    return 0;
  }

  v5 = *(v3 + 2);
  v6 = *(v3 + 4);
  v68 = *(v3 + 10);
  v64 = v3[44];
  v65 = v3[24];
  LODWORD(v62) = *a1;
  HIDWORD(v62) = v3[45];
  v7 = *(v3 + 6);
  type metadata accessor for CGPoint(0);
  v8 = v5;
  outlined copy of Image.Location(v6);
  v9 = v7;
  v10 = v8;
  Value = AGGraphGetValue();
  v12 = *Value;
  v13 = *(Value + 8);
  v14 = AGGraphGetValue();
  v15 = *v14;
  v16 = *(v14 + 8);
  v66 = *AGGraphGetValue();
  v73.origin.x = v12;
  v73.origin.y = v13;
  v73.size.width = v15;
  v73.size.height = v16;
  v74 = CGRectStandardize(v73);
  width = v74.size.width;
  v21.f64[0] = *&v66 * 0.5 + v74.origin.y;
  x = v74.origin.x;
  v19 = *&v66 * 0.5 + v74.origin.x;
  v20 = vaddq_f64(vdupq_lane_s64(COERCE__INT64(*&v66 * 0.5), 0), vaddq_f64(*&v74.origin.y, *&v74.size.height));
  v21.f64[1] = v19;
  if (*&v66 == 1.0)
  {
    v22 = vrndmq_f64(v21);
    v23 = vrndaq_f64(vsubq_f64(vrndmq_f64(v20), v22));
  }

  else
  {
    v27 = vdupq_lane_s64(v66, 0);
    v22 = vmulq_n_f64(vrndmq_f64(vdivq_f64(v21, v27)), *&v66);
    v23 = vmulq_n_f64(vrndaq_f64(vdivq_f64(vsubq_f64(vmulq_n_f64(vrndmq_f64(vdivq_f64(v20, v27)), *&v66), v22), v27)), *&v66);
  }

  if (*(v1 + 104) == 2)
  {
    v28 = *(v1 + 2);
    v29 = v1[19];
    v30 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
    if (v29)
    {
      v31 = *(v29 + 6);
      v32 = *(v29 + 7);
    }

    if (v28 == 0.0)
    {
      v33 = 0.0;
    }

    else
    {
      v34 = *(v1 + 3);
      if (*(v1 + 40) <= 3u)
      {
        v35 = *(v1 + 4);
      }

      else
      {
        v35 = *(v1 + 3);
      }

      if (*(v1 + 40) > 3u)
      {
        v34 = *(v1 + 4);
      }

      v36 = 1.0 / v28;
      v30 = v36 * v34;
      v33 = v36 * v35;
    }

    v67 = v33;
  }

  else
  {
    v30 = v23.f64[1];
    v67 = v23.f64[0];
    v31 = 0.0;
    v32 = 0.0;
  }

  v37 = *(v1 + 186);
  [v10 setPosition_];
  [v10 setSize_];
  v38 = AGGraphGetValue();
  [v10 setPresentationPosition_];
  v39 = [v10 isAnimating];

  if (v39)
  {
    v40 = *AGGraphGetValue();
    [v10 setCurrentTime_];
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v41 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    v42 = *(v41 + 376);
    if (v40 < v42)
    {
      v42 = v40;
    }

    *(v41 + 376) = v42;
    [v10 maxVelocity];
    v44 = v43;
    swift_beginAccess();
    ViewGraph.NextUpdate.maxVelocity(_:)(v44);
    swift_endAccess();
  }

  v45 = [v10 version];
  if (v68 == v45)
  {

    outlined consume of Image.Location(v6);
    return 0;
  }

  v47 = v45;
  v48 = swift_allocObject();
  *(v48 + 16) = v10;
  *(v48 + 24) = v65;
  *(v48 + 32) = v6;
  *(v48 + 40) = v47;
  *(v48 + 44) = v64;
  *(v48 + 45) = v63;
  *(v48 + 48) = v9;
  v49 = *v1;
  *v1 = v48;
  v50 = *(v1 + 8);
  *(v1 + 8) = 2;
  v51 = v10;
  outlined copy of Image.Location(v6);
  v52 = v9;
  outlined consume of GraphicsImage.Contents?(v49, v50);
  v53 = *(v1 + 8);
  if (v53 == 255)
  {
    v61 = 0;
    goto LABEL_40;
  }

  if (v53 != 2)
  {
    v61 = *(v1 + 64) ^ 1;
LABEL_40:

    v59 = 0;
    v1[22] = 0;
    *(v1 + 92) = v61;
    if ((v37 & 2) != 0)
    {
      goto LABEL_37;
    }

LABEL_41:
    v60 = v59 & 0xFD;
    goto LABEL_42;
  }

  v54 = *(*v1 + 32);
  v55 = *(*v1 + 48);
  v56 = *(*v1 + 16);
  outlined copy of Image.Location(v54);
  v57 = v55;
  outlined copy of Image.Location(v54);
  v72 = v54;
  _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)([v56 styleMask], &v72, &v69);

  outlined consume of Image.Location(v54);
  v58 = v69;
  LOWORD(v57) = v70;
  v59 = v71;

  v1[22] = v58;
  *(v1 + 92) = v57;
  if ((v37 & 2) == 0)
  {
    goto LABEL_41;
  }

LABEL_37:
  v60 = v59 | 2;
LABEL_42:
  *(v1 + 186) = v60;

  outlined consume of Image.Location(v6);
  return 1;
}

uint64_t sub_18D12E728()
{
  v1 = *(v0 + 32);
  if (v1 >= 2)
  {
  }

  return swift_deallocObject();
}

id outlined copy of GraphicsImage.Contents?(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return outlined copy of GraphicsImage.Contents(result, a2);
  }

  return result;
}

uint64_t specialized ShapeStyleResolver.updateValue()()
{
  v1 = v0;
  v63 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  if (*v0 == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    Value = AGGraphGetValue();
    v3 = v6;
    v4 = *Value;
  }

  if (v1[1] == v2)
  {
    v7 = 0;
    v8 = 0;
    v43 = 0;
    v44 = 1;
  }

  else
  {
    v9 = AGGraphGetValue();
    v7 = v10;
    v43 = *v9;
    v44 = *(v9 + 8);
    v8 = *(v9 + 10);
    v11 = *v9;
  }

  v12 = v1[2];
  v14 = *AGGraphGetValue();
  v46 = MEMORY[0x1E69E7CC0];
  if ((v3 | v7))
  {
    v15 = 1;
    v47 = 1;
  }

  else
  {
    v16 = v13;
    OutputValue = AGGraphGetOutputValue();
    v47 = OutputValue == 0;
    if (OutputValue)
    {
      if ((v16 & 1) == 0)
      {
        v42 = (v1 + 4);
        v18 = *(v1 + 6);

        if (v18)
        {
LABEL_17:
          v40 = 0;
          v41 = v12;
          goto LABEL_24;
        }

        goto LABEL_20;
      }

      v19 = swift_retain_n();
      v15 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v19);

      v47 = v15 & 1;
    }

    else
    {

      v15 = 1;
    }
  }

  v42 = (v1 + 4);
  v18 = *(v1 + 6);
  if (!v18)
  {
    if (v15)
    {
      v18 = 0;
      goto LABEL_23;
    }

LABEL_20:
    if (v1[14] == *AGGraphGetValue() >> 1)
    {
    }

    *(v1 + 6) = 0;

    *(v1 + 4) = 0;
    *(v1 + 40) = 0;
    v18 = 0;
    v1[14] = *AGGraphGetValue() >> 1;
    v47 = 1;
    goto LABEL_23;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_23:
  v41 = v12;
  PropertyList.Tracker.reset()();
  v40 = 1;
LABEL_24:
  v20 = v8;
  if (v8)
  {
    v21 = v44;
  }

  else
  {
    v21 = v44 != 0;
  }

  v22 = *(v1 + 8);
  if (v14)
  {
    v23 = *(v14 + 64);
  }

  else
  {
    v23 = 0;
  }

  v24 = *(v22 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v24 + 16));
  *(v24 + 24) = v23;
  os_unfair_lock_unlock((v24 + 16));

  v25 = *(v1 + 6);
  v62[27] = 0;
  v57 = 0uLL;
  *&v58 = v21;
  BYTE8(v58) = 1;
  *&v59 = 0;
  BYTE8(v59) = 5;
  *&v60 = v14;
  *(&v60 + 1) = v22;
  v61 = 0u;
  memset(v62, 0, 24);
  v62[24] = 1;
  *&v62[25] = v25;
  if (v21)
  {
    if (v4)
    {
      v26 = *(*v4 + 80);

      v26(&v57);
    }

    else
    {
      specialized ForegroundStyle._apply(to:)(&v57);
    }

    v27 = v43;
    v28 = v20;
    if ((v20 & 1) == 0)
    {
      v48[0] = 0;
      v49 = v60;
      v29 = BYTE8(v59);
      if (BYTE8(v59) == 1)
      {
        v30 = v59;

        outlined copy of _ShapeStyle_Shape.Result(v30, 1u);
        outlined consume of _ShapeStyle_Shape.Result(v30, 1u);
        v31 = 0;
        v29 = 5;
      }

      else
      {

        v31 = v59;

        v30 = MEMORY[0x1E69E7CC0];
      }

      *&v56[0] = v30;
      _ShapeStyle_Pack.createOpacities(count:name:environment:)(v44, v48, &v49);

      v32 = *&v56[0];
      outlined consume of _ShapeStyle_Shape.Result(v31, v29);
      *&v59 = v32;
      BYTE8(v59) = 1;
    }
  }

  else
  {
    v27 = v43;
    v28 = v20;
    if (v40)
    {
      if (v18)
      {
        specialized AnimatorState.removeListeners()();
      }

      *(v1 + 6) = 0;

      *(v1 + 4) = 0;
      *(v1 + 40) = 0;
      v1[14] = *AGGraphGetValue() >> 1;
    }
  }

  if ((v28 & 2) != 0)
  {
    v57 = xmmword_18DD85500;
    *&v58 = 1;
    BYTE8(v58) = 1;
    v62[25] = 0;
    BackgroundStyle._apply(to:)(&v57);
  }

  if ((v28 & 4) != 0)
  {
    v49 = v60;
    v34 = v27;

    ResolvedMulticolorStyle.init(in:bundle:)(&v49, v27, v56);
    v49 = v56[0];
    v50 = v56[1];
    v54[5] = 6;
    *&v54[8] = 1065353216;
    *&v54[16] = 0;
    v54[24] = -1;
    v55 = MEMORY[0x1E69E7CC0];
    v45 = 2;
    v35 = BYTE8(v59);
    if (BYTE8(v59) == 1)
    {
      v36 = v59;
      outlined init with copy of ResolvedMulticolorStyle(v56, v48);
      outlined copy of _ShapeStyle_Shape.Result(v36, 1u);
      outlined consume of _ShapeStyle_Shape.Result(v36, 1u);
      v37 = 0;
      v35 = 5;
    }

    else
    {
      outlined init with copy of ResolvedMulticolorStyle(v56, v48);
      v36 = MEMORY[0x1E69E7CC0];
      v37 = v59;
    }

    *v48 = v36;
    _ShapeStyle_Pack.subscript.setter(&v49, &v45, 0);
    outlined destroy of ResolvedMulticolorStyle(v56);
    v38 = *v48;
    outlined consume of _ShapeStyle_Shape.Result(v37, v35);
    *&v59 = v38;
    BYTE8(v59) = 1;
    goto LABEL_52;
  }

  if (BYTE8(v59) == 1)
  {
LABEL_52:
    v33 = v59;

    goto LABEL_53;
  }

  v33 = MEMORY[0x1E69E7CC0];
LABEL_53:

  v46 = v33;
  if ((*(v1 + 14) & 1) == 0)
  {
    specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v46, 0, v41, v42);
  }

  if (v47 == 1)
  {
    *&v49 = v46;
    AGGraphSetOutputValue();
  }

  else
  {
  }

  *v54 = *v62;
  *&v54[12] = *&v62[12];
  v49 = v57;
  v50 = v58;
  v52 = v60;
  v53 = v61;
  v51 = v59;
  outlined destroy of _ShapeStyle_Shape(&v49);
}

{
  v1 = v0;
  v69 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D3F8];
  if (*v0 == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
    v4 = 0;
    v43 = 0u;
    v44 = 0u;
  }

  else
  {
    Value = AGGraphGetValue();
    v4 = *Value;
    v43 = *(Value + 24);
    v44 = *(Value + 8);
    v3 = v6 & 1;
  }

  if (v0[1] == v2)
  {
    v7 = 0;
    v46 = 0;
    v8 = 0;
    v9 = 1;
  }

  else
  {
    v10 = AGGraphGetValue();
    v7 = v11;
    v9 = *(v10 + 8);
    v8 = *(v10 + 10);
    v46 = *v10;
    v12 = *v10;
  }

  v45 = v1[2];
  v14 = *AGGraphGetValue();
  v49 = MEMORY[0x1E69E7CC0];
  if ((v3 | v7))
  {
    v15 = 1;
    v50 = 1;

    v16 = v14;
  }

  else
  {
    v17 = v13;
    OutputValue = AGGraphGetOutputValue();
    v50 = OutputValue == 0;
    if (OutputValue)
    {
      if ((v17 & 1) == 0)
      {
        v19 = (v1 + 4);
        v20 = *(v1 + 6);
        v16 = v14;

        if (v20)
        {
LABEL_17:
          v42 = v19;
          v41 = 0;
          goto LABEL_24;
        }

        goto LABEL_20;
      }

      v16 = v14;
      v21 = swift_retain_n();
      v15 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v21);

      v50 = v15 & 1;
    }

    else
    {

      v16 = v14;

      v15 = 1;
    }
  }

  v19 = (v1 + 4);
  v20 = *(v1 + 6);
  if (!v20)
  {
    if (v15)
    {
      v20 = 0;
      goto LABEL_23;
    }

LABEL_20:
    if (v1[14] == *AGGraphGetValue() >> 1)
    {
    }

    *(v1 + 6) = 0;

    *(v1 + 4) = 0;
    *(v1 + 40) = 0;
    v20 = 0;
    v1[14] = *AGGraphGetValue() >> 1;
    v50 = 1;
    goto LABEL_23;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_23:
  v42 = v19;
  PropertyList.Tracker.reset()();
  v41 = 1;
LABEL_24:
  v47 = v8;
  v40 = v9;
  if ((v8 & 1) == 0)
  {
    v9 = v9 != 0;
  }

  v22 = *(v1 + 8);
  if (v16)
  {
    v23 = *(v16 + 64);
  }

  else
  {
    v23 = 0;
  }

  v24 = v16;
  v25 = *(v22 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v25 + 16));
  *(v25 + 24) = v23;
  os_unfair_lock_unlock((v25 + 16));

  v26 = *(v1 + 6);
  v68[27] = 0;
  v63 = 0uLL;
  *&v64 = v9;
  BYTE8(v64) = 1;
  *&v65 = 0;
  BYTE8(v65) = 5;
  *&v66 = v24;
  *(&v66 + 1) = v22;
  v67 = 0u;
  memset(v68, 0, 24);
  v68[24] = 1;
  *&v68[25] = v26;
  if (v9)
  {
    v27 = v47;
    if (v4)
    {
      v51 = v4;
      v52 = v44;
      v53 = v43;

      specialized Paint._apply(to:)(&v63);

      v28 = v46;
      if (v47)
      {
        goto LABEL_42;
      }
    }

    else
    {
      specialized ForegroundStyle._apply(to:)(&v63);
      v28 = v46;
      if (v47)
      {
        goto LABEL_42;
      }
    }

    v54[0] = 0;
    v55 = v66;
    v29 = BYTE8(v65);
    if (BYTE8(v65) == 1)
    {
      v30 = v65;

      outlined copy of _ShapeStyle_Shape.Result(v30, 1u);
      outlined consume of _ShapeStyle_Shape.Result(v30, 1u);
      v31 = 0;
      v29 = 5;
    }

    else
    {

      v31 = v65;

      v30 = MEMORY[0x1E69E7CC0];
    }

    *&v62[0] = v30;
    _ShapeStyle_Pack.createOpacities(count:name:environment:)(v40, v54, &v55);

    v32 = *&v62[0];

    outlined consume of _ShapeStyle_Shape.Result(v31, v29);
    *&v65 = v32;
    BYTE8(v65) = 1;

    v27 = v47;
  }

  else
  {
    v28 = v46;
    v27 = v47;
    if (v41)
    {
      if (v20)
      {
        specialized AnimatorState.removeListeners()();
      }

      *(v1 + 6) = 0;

      *(v1 + 4) = 0;
      *(v1 + 40) = 0;
      v1[14] = *AGGraphGetValue() >> 1;
    }
  }

LABEL_42:
  if ((v27 & 2) != 0)
  {
    v63 = xmmword_18DD85500;
    *&v64 = 1;
    BYTE8(v64) = 1;
    v68[25] = 0;
    BackgroundStyle._apply(to:)(&v63);
  }

  if ((v27 & 4) != 0)
  {
    v55 = v66;
    v34 = v28;

    ResolvedMulticolorStyle.init(in:bundle:)(&v55, v28, v62);
    v55 = v62[0];
    v56 = v62[1];
    v60[5] = 6;
    *&v60[8] = 1065353216;
    *&v60[16] = 0;
    v60[24] = -1;
    v61 = MEMORY[0x1E69E7CC0];
    v48 = 2;
    v35 = BYTE8(v65);
    if (BYTE8(v65) == 1)
    {
      v36 = v65;
      outlined init with copy of ResolvedMulticolorStyle(v62, v54);
      outlined copy of _ShapeStyle_Shape.Result(v36, 1u);
      outlined consume of _ShapeStyle_Shape.Result(v36, 1u);
      v37 = 0;
      v35 = 5;
    }

    else
    {
      outlined init with copy of ResolvedMulticolorStyle(v62, v54);
      v36 = MEMORY[0x1E69E7CC0];
      v37 = v65;
    }

    *v54 = v36;
    _ShapeStyle_Pack.subscript.setter(&v55, &v48, 0);
    outlined destroy of ResolvedMulticolorStyle(v62);
    v38 = *v54;

    outlined consume of _ShapeStyle_Shape.Result(v37, v35);
    *&v65 = v38;
    BYTE8(v65) = 1;

    goto LABEL_51;
  }

  if (BYTE8(v65) == 1)
  {
LABEL_51:
    v33 = v65;

    goto LABEL_52;
  }

  v33 = MEMORY[0x1E69E7CC0];
LABEL_52:

  v49 = v33;
  if ((*(v1 + 14) & 1) == 0)
  {
    specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v49, 0, v45, v42);
  }

  if (v50 == 1)
  {
    *&v55 = v49;
    AGGraphSetOutputValue();
  }

  else
  {
  }

  v58 = v66;
  v59 = v67;
  *v60 = *v68;
  *&v60[12] = *&v68[12];
  v55 = v63;
  v56 = v64;
  v57 = v65;
  outlined destroy of _ShapeStyle_Shape(&v55);
}

{
  v1 = v0;
  v87 = *MEMORY[0x1E69E9840];
  v2 = *v0;
  v3 = *MEMORY[0x1E698D3F8];
  if (v2 == *MEMORY[0x1E698D3F8])
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v58 = 0;
    v59 = 0;
    v56 = 0;
    v57 = 0;
    v55 = 0;
    v7 = 0;
  }

  else
  {
    Value = AGGraphGetValue();
    v9 = *(Value + 42);
    v11 = Value[1];
    v10 = Value[2];
    v65 = *Value;
    v66 = v11;
    *v67 = v10;
    *&v67[10] = v9;
    v5 = *(&v65 + 1);
    v4 = v65;
    v6 = v11;
    v58 = v10;
    v59 = *(&v11 + 1);
    v56 = v9 >> 48;
    v57 = *&v67[8];
    v7 = v12 & 1;
    LOWORD(v55) = HIWORD(v9);
    outlined init with copy of MeshGradient(&v65, &v78);
    BYTE4(v55) = v7;
  }

  if (v1[1] == v3)
  {
    v13 = 0;
    v54 = 0;
    v60 = 0;
    v52 = 1;
  }

  else
  {
    v14 = AGGraphGetValue();
    v13 = v15;
    v52 = *(v14 + 8);
    v60 = *(v14 + 10);
    v54 = *v14;
    v16 = *v14;
  }

  v17 = v1[2];
  v19 = *AGGraphGetValue();
  v62 = MEMORY[0x1E69E7CC0];
  v53 = v6;
  if ((v7 | v13))
  {
    v20 = 1;
    v63 = 1;

    v21 = v19;
  }

  else
  {
    v22 = v18;
    v23 = v19;
    OutputValue = AGGraphGetOutputValue();
    v63 = OutputValue == 0;
    if (OutputValue)
    {
      if ((v22 & 1) == 0)
      {
        v51 = (v1 + 4);
        v25 = *(v1 + 6);
        v21 = v23;

        if (v25)
        {
          v50 = v17;
LABEL_17:
          v27 = v5;
          v49 = 0;
          goto LABEL_24;
        }

        goto LABEL_20;
      }

      v21 = v19;
      v26 = swift_retain_n();
      v20 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v26);

      v63 = v20 & 1;
    }

    else
    {

      v21 = v19;

      v20 = 1;
    }
  }

  v51 = (v1 + 4);
  v25 = *(v1 + 6);
  if (!v25)
  {
    if (v20)
    {
      v50 = v17;
      v25 = 0;
      goto LABEL_23;
    }

LABEL_20:
    if (v1[14] == *AGGraphGetValue() >> 1)
    {
      *&v65 = v4;
      *(&v65 + 1) = v5;
      *&v66 = v6;
      *(&v66 + 1) = v59;
      *v67 = v58;
      *&v67[8] = v57;
      *&v67[16] = v56;
      *&v67[24] = v55;
      v67[26] = BYTE4(v55);
      outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v65, type metadata accessor for (value: MeshGradient?, changed: Bool));
    }

    v50 = v17;
    *(v1 + 6) = 0;

    *(v1 + 4) = 0;
    *(v1 + 40) = 0;
    v25 = 0;
    v1[14] = *AGGraphGetValue() >> 1;
    v63 = 1;
    goto LABEL_23;
  }

  v50 = v17;
  if ((v20 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_23:
  v27 = v5;
  PropertyList.Tracker.reset()();
  v49 = 1;
LABEL_24:
  v28 = v4;
  if (v60)
  {
    v29 = v52;
  }

  else
  {
    v29 = v52 != 0;
  }

  v30 = *(v1 + 8);
  if (v21)
  {
    v31 = *(v21 + 64);
  }

  else
  {
    v31 = 0;
  }

  v32 = v21;
  v33 = *(v30 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v33 + 16));
  *(v33 + 24) = v31;
  os_unfair_lock_unlock((v33 + 16));

  v34 = *(v1 + 6);
  v83[27] = 0;
  v78 = 0uLL;
  *&v79 = v29;
  BYTE8(v79) = 1;
  *&v80 = 0;
  BYTE8(v80) = 5;
  *&v81 = v32;
  *(&v81 + 1) = v30;
  v82 = 0u;
  memset(v83, 0, 24);
  v83[24] = 1;
  *&v83[25] = v34;
  if (v29)
  {
    v35 = v28;
    *&v65 = v28;
    *(&v65 + 1) = v27;
    v36 = v27;
    v37 = v53;
    *&v66 = v53;
    *(&v66 + 1) = v59;
    *v67 = v58;
    *&v67[8] = v57;
    *&v67[16] = v56;
    *&v67[24] = v55;
    v67[26] = BYTE4(v55);
    if (v56)
    {
      v84 = v65;
      v85 = v66;
      v86[0] = *v67;
      *(v86 + 10) = *&v67[10];
      outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v65, &v71, type metadata accessor for (value: MeshGradient?, changed: Bool));
      specialized Paint._apply(to:)(&v78);
      outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v65, type metadata accessor for (value: MeshGradient?, changed: Bool));
      if (v60)
      {
        goto LABEL_43;
      }
    }

    else
    {
      specialized ForegroundStyle._apply(to:)(&v78);
      if (v60)
      {
        goto LABEL_43;
      }
    }

    v61 = 0;
    v71 = v81;
    v38 = BYTE8(v80);
    if (BYTE8(v80) == 1)
    {
      v39 = v80;

      outlined copy of _ShapeStyle_Shape.Result(v39, 1u);
      outlined consume of _ShapeStyle_Shape.Result(v39, 1u);
      v40 = 0;
      v38 = 5;
    }

    else
    {

      v40 = v80;

      v39 = MEMORY[0x1E69E7CC0];
    }

    v64[0] = v39;
    _ShapeStyle_Pack.createOpacities(count:name:environment:)(v52, &v61, &v71);

    v41 = v64[0];

    outlined consume of _ShapeStyle_Shape.Result(v40, v38);
    *&v80 = v41;
    BYTE8(v80) = 1;

    v37 = v53;
  }

  else
  {
    v35 = v28;
    v36 = v27;
    v37 = v53;
    if (v49)
    {
      if (v25)
      {
        specialized AnimatorState.removeListeners()();
      }

      *(v1 + 6) = 0;

      *(v1 + 4) = 0;
      *(v1 + 40) = 0;
      v1[14] = *AGGraphGetValue() >> 1;
    }
  }

LABEL_43:
  if ((v60 & 2) != 0)
  {
    v78 = xmmword_18DD85500;
    *&v79 = 1;
    BYTE8(v79) = 1;
    v83[25] = 0;
    BackgroundStyle._apply(to:)(&v78);
  }

  if ((v60 & 4) != 0)
  {
    v65 = v81;
    v43 = v54;

    ResolvedMulticolorStyle.init(in:bundle:)(&v65, v54, &v71);
    v65 = v71;
    v66 = v72;
    v69[5] = 6;
    *&v69[8] = 1065353216;
    *&v69[16] = 0;
    v69[24] = -1;
    v70 = MEMORY[0x1E69E7CC0];
    v61 = 2;
    v44 = BYTE8(v80);
    if (BYTE8(v80) == 1)
    {
      v45 = v80;
      outlined init with copy of ResolvedMulticolorStyle(&v71, v64);
      outlined copy of _ShapeStyle_Shape.Result(v45, 1u);
      outlined consume of _ShapeStyle_Shape.Result(v45, 1u);
      v46 = 0;
      v44 = 5;
    }

    else
    {
      outlined init with copy of ResolvedMulticolorStyle(&v71, v64);
      v45 = MEMORY[0x1E69E7CC0];
      v46 = v80;
    }

    v64[0] = v45;
    _ShapeStyle_Pack.subscript.setter(&v65, &v61, 0);
    outlined destroy of ResolvedMulticolorStyle(&v71);
    v47 = v64[0];

    outlined consume of _ShapeStyle_Shape.Result(v46, v44);
    *&v80 = v47;
    BYTE8(v80) = 1;

    goto LABEL_52;
  }

  if (BYTE8(v80) == 1)
  {
LABEL_52:
    v42 = v80;

    goto LABEL_53;
  }

  v42 = MEMORY[0x1E69E7CC0];
LABEL_53:

  v62 = v42;
  if ((*(v1 + 14) & 1) == 0)
  {
    specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v62, 0, v50, v51);
  }

  if (v63 == 1)
  {
    *&v65 = v62;
    AGGraphSetOutputValue();

    *&v71 = v35;
    *(&v71 + 1) = v36;
    *&v72 = v37;
    *(&v72 + 1) = v59;
    v73 = v58;
    v74 = v57;
    v75 = v56;
    v76 = v55;
    v77 = BYTE4(v55);
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v71, type metadata accessor for (value: MeshGradient?, changed: Bool));
  }

  else
  {
    *&v71 = v35;
    *(&v71 + 1) = v36;
    *&v72 = v37;
    *(&v72 + 1) = v59;
    v73 = v58;
    v74 = v57;
    v75 = v56;
    v76 = v55;
    v77 = BYTE4(v55);
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v71, type metadata accessor for (value: MeshGradient?, changed: Bool));
  }

  *v69 = *v83;
  *&v69[12] = *&v83[12];
  v65 = v78;
  v66 = v79;
  *&v67[16] = v81;
  v68 = v82;
  *v67 = v80;
  outlined destroy of _ShapeStyle_Shape(&v65);
}

uint64_t outlined init with copy of _ShapeStyle_Pack.Style?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t outlined copy of _ShapeStyle_LayerID(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t outlined destroy of _ShapeStyle_Pack.Style?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _ShapeStyle_Pack.createOpacities(count:name:environment:)(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a3 + 8);
  v47 = *a3;
  v6 = *v3;
  *v58 = *v3;
  v45 = v4;
  v57[0] = v4;
  v7 = _ShapeStyle_Pack.indices(of:)(v57);
  v9 = v8;

  if (__OFSUB__(v9, v7))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v9 - v7 == 1 && a1 >= 2)
  {
    if (v5)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(v47);
      v46 = v11;

      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      goto LABEL_9;
    }

    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(v47);
    if (result)
    {
      v46 = *(result + 80);
      if ((v7 & 0x8000000000000000) == 0)
      {
LABEL_9:
        if (v7 >= v6[2])
        {
LABEL_39:
          __break(1u);
          return result;
        }

        v42 = v3;
        v12 = &v6[16 * v7];
        v13 = v12[2];
        v14 = v12[3];
        v15 = v12[5];
        *&v58[32] = v12[4];
        *&v58[48] = v15;
        *v58 = v13;
        *&v58[16] = v14;
        v16 = v12[6];
        v17 = v12[7];
        v18 = v12[9];
        *v59 = v12[8];
        *&v59[16] = v18;
        *&v58[64] = v16;
        *&v58[80] = v17;
        v44 = v46[2];
        v19 = *v59;
        v20 = *(&v18 + 1);
        outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v58, v57, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
        v21 = 1;
        v43 = v5;
        while (1)
        {
          *v57 = v47;
          *&v57[8] = v5;
          v22 = v44(v21, v57);
          v53 = *&v58[40];
          v54 = *&v58[56];
          v55 = *&v58[72];
          v56 = *&v58[88];
          v51 = *&v58[8];
          v52 = *&v58[24];
          v49 = *&v59[4];
          v50 = *&v59[20];
          v23 = *(v20 + 16);
          if (v23)
          {
            outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v58, v57, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
            result = swift_isUniquelyReferenced_nonNull_native();
            v24 = v20;
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
              v24 = result;
            }

            if (v23 > *(v24 + 16))
            {
              goto LABEL_37;
            }

            v25 = 0;
            v26 = v23 - 1;
            if (v23 == 1)
            {
              goto LABEL_16;
            }

            v38 = !is_mul_ok(v26, 0x50uLL);
            if (v24 + 88 + 80 * v26 < v24 + 88)
            {
              goto LABEL_16;
            }

            if (v38)
            {
              goto LABEL_16;
            }

            v25 = v23 & 0x7FFFFFFFFFFFFFFELL;
            v39 = (v24 + 168);
            v40 = v23 & 0x7FFFFFFFFFFFFFFELL;
            do
            {
              v41 = v22 * *v39;
              *(v39 - 20) = v22 * *(v39 - 20);
              *v39 = v41;
              v39 += 40;
              v40 -= 2;
            }

            while (v40);
            if (v23 != v25)
            {
LABEL_16:
              v27 = v23 - v25;
              v28 = 80 * v25 + 88;
              do
              {
                *(v24 + v28) = v22 * *(v24 + v28);
                v28 += 80;
                --v27;
              }

              while (v27);
            }
          }

          else
          {
            v24 = *&v59[24];
            result = outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v58, v57, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
          }

          v29 = v7;
          v30 = v21 + v7;
          v31 = v6[2];
          if (v31 < v30)
          {
            goto LABEL_36;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v31 >= v6[3] >> 1)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v31 + 1, 1, v6);
          }

          v33 = &v6[16 * v30];
          type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)();
          swift_arrayDestroy();
          memmove(v33 + 20, v33 + 4, (v6[2] - v30) << 7);
          ++v6[2];
          *&v57[38] = v53;
          *&v57[54] = v54;
          *&v57[70] = v55;
          *&v57[86] = v56;
          *&v57[6] = v51;
          *&v57[22] = v52;
          *(v33 + 32) = v45;
          *(v33 + 33) = v21;
          v34 = *&v57[16];
          *(v33 + 34) = *v57;
          *(v33 + 50) = v34;
          v35 = *&v57[32];
          v36 = *&v57[48];
          v37 = *&v57[64];
          *(v33 + 7) = *&v57[78];
          *(v33 + 98) = v37;
          *(v33 + 82) = v36;
          *(v33 + 66) = v35;
          *(v33 + 32) = v19 * v22;
          *(v33 + 37) = v50;
          *(v33 + 132) = v49;
          v33[19] = v24;
          if (v21 + 1 == a1)
          {
            break;
          }

          ++v21;
          v5 = v43;
          v7 = v29;
        }

        result = outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v58, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
        *v42 = v6;
        return result;
      }
    }

    else
    {
      v46 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  return result;
}

unint64_t _ShapeStyle_Pack.indices(of:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (v4)
  {
    result = 0;
    v6 = (v3 + 32);
    while (1)
    {
      v7 = *v6;
      v6 += 128;
      if (v7 == v2)
      {
        break;
      }

      if (v4 == ++result)
      {
        return *(*v1 + 16);
      }
    }
  }

  else
  {
    result = 0;
  }

  if (result < v4)
  {
    v8 = (v3 + (result << 7) + 32);
    v9 = result;
    while (1)
    {
      v10 = *v8;
      v8 += 128;
      if (v10 != v2)
      {
        break;
      }

      if (v4 == ++v9)
      {
        v9 = *(*v1 + 16);
        break;
      }
    }

    if (v9 < result)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t ContentTransition.State.rasterizationOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  if (one-time initialization token for defaultFlags != -1)
  {
    v4 = a1;
    result = swift_once();
    a1 = v4;
  }

  v3 = static RasterizationOptions.Flags.defaultFlags & 0xFFFFFF7F | v2 & 1;
  *a1 = -1;
  *(a1 + 4) = 768;
  *(a1 + 8) = v3;
  *(a1 + 12) = 3;
  return result;
}

void _ShapeStyle_InterpolatorGroup.update(contentSeed:transition:animation:listener:contentsScale:rasterizationOptions:supportsVFD:)(unsigned __int16 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, int *a5, char a6, float a7)
{
  v8 = v7;
  v13 = *(v8 + 32);
  if (v13 != a7)
  {
    *(v8 + 32) = a7;
  }

  v14 = *a1;
  v93 = *a2;
  v92 = *(a2 + 13);
  v89 = *(a5 + 4);
  v90 = *a5;
  v87 = a5[2];
  v88 = *(a5 + 5);
  v86 = *(a5 + 12);
  swift_beginAccess();
  v99 = *(*(v8 + 24) + 16);
  if (!v99)
  {
LABEL_65:
    *(v8 + 36) = v90;
    *(v8 + 40) = v89;
    *(v8 + 41) = v88;
    *(v8 + 44) = v87;
    *(v8 + 48) = v86;
    return;
  }

  v15 = 0;
  v16 = a6 & 1;
  if (v92)
  {
    v17 = 0;
  }

  else
  {
    v17 = (v93 & 0xC100000000) == 0x4100000000;
  }

  v18 = !v17;
  if (v17)
  {
    v19 = v93;
  }

  else
  {
    v19 = 0;
  }

  v96 = v19;
  v97 = v18;
  v95 = a4;
  v98 = a3;
  v94 = v14;
  v91 = a6 & 1;
  while (1)
  {
    swift_beginAccess();
    v20 = *(v8 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + 24) = v20;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      *(v8 + 24) = v20;
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_68;
      }
    }

    if (v15 >= *(v20 + 2))
    {
      goto LABEL_69;
    }

    v22 = 232 * v15;
    v23 = &v20[232 * v15];
    if (*(v23 + 128) != v14 && a3 != 0)
    {
      v25 = *(v23 + 29);
      v26 = *(v25 + 2);
      if (!v26)
      {
        goto LABEL_27;
      }

      if (!v25[112 * v26 + 24])
      {

        v28 = swift_isUniquelyReferenced_nonNull_native();
        *(v23 + 29) = v25;
        if (v28)
        {
          v29 = *(v25 + 2);
          if (!v29)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
          *(v23 + 29) = v25;
          v29 = *(v25 + 2);
          if (!v29)
          {
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }
        }

        v30 = &v25[112 * v29];
        v31 = *(v30 - 10);
        v32 = *(v30 - 36);
        v33 = *(v30 - 17);
        v34 = *(v30 - 6);
        v35 = *(v30 - 5);
        v36 = *(v30 - 8);
        v38 = *(v30 - 1);
        v39 = *v30;
        v40 = v30[24];
        LOBYTE(v104) = *(v30 - 28);
        v37 = v104;
        v41 = *(v30 - 4);
        v42 = *(v30 + 8);
        v43 = *(v30 - 24);
        *(v25 + 2) = v29 - 1;
        *(v23 + 29) = v25;
        *&v107 = v31;
        WORD4(v107) = v32;
        HIDWORD(v107) = v33;
        v108 = v41;
        *v109 = v34;
        *&v109[8] = v35;
        *&v109[16] = v36;
        v109[20] = v37;
        *&v109[24] = v43;
        *&v109[40] = v38;
        *v110 = v39;
        *&v110[8] = v42;
        v110[24] = v40;
        if (v39)
        {
          v44 = *(*v39 + 96);

          v44(v45);
          outlined destroy of DisplayList.InterpolatorLayer.Removed(&v107);
        }

        else
        {
          outlined destroy of DisplayList.InterpolatorLayer.Removed(&v107);
        }

        v27 = v98;
        goto LABEL_35;
      }

      if (v26 > 7)
      {

        DisplayList.InterpolatorLayer.remove(prefix:)(0);
        v27 = a3;
      }

      else
      {
LABEL_27:

        v27 = a3;
      }

LABEL_35:
      v46 = *(v23 + 11);
      v47 = *(v23 + 12);
      v48 = *(v23 + 13);
      *&v106[13] = *(v23 + 221);
      v105 = v47;
      *v106 = v48;
      v104 = v46;
      outlined init with copy of DisplayList.InterpolatorLayer.Contents(&v104, &v107);
      v49 = ContentTransition.rbTransition.getter();
      v50 = [objc_allocWithZone(MEMORY[0x1E69C7098]) init];
      (*(*v27 + 96))(&v107);
      v100 = v107;
      v101 = v108;
      v102 = *v109;
      v103 = v109[8];
      Animation.Function.apply(to:)(v50, *&v107, *&v108, v51, v52, v53);
      outlined consume of Animation.Function(v100, *(&v100 + 1), v101, *(&v101 + 1), v102, v103);
      v107 = v104;
      v108 = v105;
      *v109 = *v106;
      *&v109[13] = *&v106[13];
      v54 = *(v23 + 29);

      v55 = swift_isUniquelyReferenced_nonNull_native();
      *(v23 + 29) = v54;
      if ((v55 & 1) == 0)
      {
        v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54);
        *(v23 + 29) = v54;
      }

      v57 = *(v54 + 2);
      v56 = *(v54 + 3);
      if (v57 >= v56 >> 1)
      {
        v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v54);
        *(v23 + 29) = v54;
      }

      *(v54 + 2) = v57 + 1;
      v58 = &v54[112 * v57];
      v59 = v107;
      v60 = *v109;
      v61 = *&v109[16];
      *(v58 + 3) = v108;
      *(v58 + 4) = v60;
      *(v58 + 2) = v59;
      *(v58 + 10) = v61;
      *(v58 + 11) = 0;
      *(v58 + 12) = v49;
      *(v58 + 13) = v50;
      *(v58 + 14) = v95;
      *(v58 + 120) = xmmword_18DDABD20;
      v58[136] = 0;
      if (v95)
      {
        (*(*v95 + 88))();
      }

      a3 = v98;

      v23[259] = 1;
      v14 = v94;
      v16 = v91;
    }

    *(v23 + 128) = v14;
    v23[258] = v16;
    *(v23 + 56) = v96;
    v23[228] = v97;
    *(v8 + 24) = v20;
    swift_endAccess();
    if (v15 >= *(v20 + 2))
    {
      goto LABEL_70;
    }

    if ((v23[260] & 1) == 0 || *(*(v23 + 29) + 16))
    {
      break;
    }

    swift_beginAccess();
    v72 = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + 24) = v20;
    if ((v72 & 1) == 0)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      *(v8 + 24) = v20;
    }

    v73 = *(v20 + 2);
    if (v15 >= v73)
    {
      goto LABEL_72;
    }

    v74 = v73 - 1;
    v75 = *&v20[v22 + 32];
    v76 = *&v20[v22 + 64];
    v108 = *&v20[v22 + 48];
    *v109 = v76;
    v107 = v75;
    v77 = *&v20[v22 + 80];
    v78 = *&v20[v22 + 96];
    v79 = *&v20[v22 + 128];
    *v110 = *&v20[v22 + 112];
    *&v110[16] = v79;
    *&v109[16] = v77;
    *&v109[32] = v78;
    v80 = *&v20[v22 + 144];
    v81 = *&v20[v22 + 160];
    v82 = *&v20[v22 + 192];
    v113 = *&v20[v22 + 176];
    v114 = v82;
    v111 = v80;
    v112 = v81;
    v83 = *&v20[v22 + 208];
    v84 = *&v20[v22 + 224];
    v85 = *&v20[v22 + 240];
    *(v117 + 13) = *&v20[v22 + 253];
    v116 = v84;
    v117[0] = v85;
    v115 = v83;
    memmove(&v20[v22 + 32], &v20[v22 + 264], 232 * (v73 - 1 - v15));
    *(v20 + 2) = v74;
    *(v8 + 24) = v20;
    swift_endAccess();
    outlined destroy of _ShapeStyle_InterpolatorGroup.Layer(&v107);
    --v99;
LABEL_16:
    if (v15 >= v99)
    {
      goto LABEL_65;
    }
  }

  if (v13 == a7)
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  v62 = swift_isUniquelyReferenced_nonNull_native();
  *(v8 + 24) = v20;
  if ((v62 & 1) == 0)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
    *(v8 + 24) = v20;
  }

  if (v15 >= *(v20 + 2))
  {
    goto LABEL_71;
  }

  v63 = &v20[v22];
  *&v20[v22 + 208] = 0;
  swift_unknownObjectRelease();
  v64 = *&v20[v22 + 232];
  v65 = *(v64 + 2);
  if (!v65)
  {
LABEL_14:
    v63[259] = 1;
    *(v8 + 24) = v20;
    swift_endAccess();
    a3 = v98;
    v14 = v94;
LABEL_15:
    ++v15;
    goto LABEL_16;
  }

  v66 = swift_isUniquelyReferenced_nonNull_native();
  *(v63 + 29) = v64;
  if ((v66 & 1) == 0)
  {
    v64 = specialized _ArrayBuffer._consumeAndCreateNew()(v64);
  }

  v67 = 0;
  v68 = 0;
  *(v63 + 29) = v64;
  while (1)
  {
    *(v63 + 29) = v64;
    if (v68 >= *(v64 + 2))
    {
      break;
    }

    *&v64[v67 + 64] = 0;
    swift_unknownObjectRelease();
    v69 = *(v63 + 29);
    if (v68 >= *(v69 + 16))
    {
      goto LABEL_67;
    }

    ++v68;
    v70 = v69 + v67;
    v71 = *(v70 + 88);
    *(v70 + 88) = 0;

    v64 = *(v63 + 29);
    v67 += 112;
    if (v65 == v68)
    {
      goto LABEL_14;
    }
  }

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
}

uint64_t _ShapeStyle_InterpolatorGroup.addLayer(id:style:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = a2[5];
  v97 = a2[4];
  v98 = v9;
  v99 = a2[6];
  v100 = *(a2 + 14);
  v10 = a2[1];
  v93 = *a2;
  v94 = v10;
  v11 = a2[3];
  v95 = a2[2];
  v96 = v11;
  v12 = *(v3 + 56);
  swift_beginAccess();
  v13 = *(v3 + 24);
  v14 = *(v13 + 2);
  *(v3 + 56) = v12 + 1;
  if (v14 > v12)
  {
    if ((v12 & 0x80000000) == 0)
    {
      v15 = &v13[232 * v12];
      v69 = *(v15 + 13);
      v16 = *(v15 + 5);
      v17 = v15[48];
      v70 = 232 * v12;
      *&__dst = *(v15 + 4);
      *(&__dst + 1) = v16;
      LOBYTE(v73) = v17;
      *&v83 = v7;
      *(&v83 + 1) = v6;
      LOBYTE(v84) = v8;

      outlined copy of _ShapeStyle_LayerID(__dst, v16, v17);
      v18 = specialized static _ShapeStyle_LayerID.== infix(_:_:)(&__dst, &v83);
      outlined consume of _ShapeStyle_LayerID(__dst, *(&__dst + 1), v73);
      if (v18)
      {
        swift_beginAccess();
        v19 = *(v3 + 24);
        outlined init with copy of _ShapeStyle_Pack.Style?(&v93, &__dst, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + 24) = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
          *(v3 + 24) = v19;
        }

        v8 = 232 * v12;
        if (*(v19 + 2) > v12)
        {
          v21 = &v19[v70];
          v22 = *&v19[v70 + 56];
          v23 = *&v19[v70 + 72];
          v24 = *&v19[v70 + 104];
          v85 = *&v19[v70 + 88];
          v86 = v24;
          v83 = v22;
          v84 = v23;
          v25 = *&v19[v70 + 120];
          v26 = *&v19[v70 + 136];
          v27 = *&v19[v70 + 152];
          v90 = *&v19[v70 + 168];
          v88 = v26;
          v89 = v27;
          v87 = v25;
          v28 = v93;
          v29 = v94;
          v30 = v95;
          *(v21 + 104) = v96;
          *(v21 + 88) = v30;
          *(v21 + 72) = v29;
          *(v21 + 56) = v28;
          v31 = v97;
          v32 = v98;
          v33 = v99;
          *(v21 + 21) = v100;
          *(v21 + 152) = v33;
          *(v21 + 136) = v32;
          *(v21 + 120) = v31;
          *(v3 + 24) = v19;
          swift_endAccess();
          outlined destroy of _ShapeStyle_Pack.Style?(&v83, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
          swift_beginAccess();
          result = swift_isUniquelyReferenced_nonNull_native();
          *(v3 + 24) = v19;
          if (result)
          {
            goto LABEL_8;
          }

          goto LABEL_22;
        }

        __break(1u);
      }

      else
      {
        swift_beginAccess();
        v19 = *(v3 + 24);
        v57 = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + 24) = v19;
        if (v57)
        {
LABEL_15:
          if (*(v19 + 2) > v12)
          {
            v19[v70 + 260] = 1;
            *(v3 + 24) = v19;
            swift_endAccess();
            v58 = *&v19[v70 + 56];
            v59 = *&v19[v70 + 72];
            v60 = *&v19[v70 + 104];
            v85 = *&v19[v70 + 88];
            v86 = v60;
            v83 = v58;
            v84 = v59;
            v61 = *&v19[v70 + 120];
            v62 = *&v19[v70 + 136];
            v63 = *&v19[v70 + 152];
            v90 = *&v19[v70 + 168];
            v88 = v62;
            v89 = v63;
            v87 = v61;
            memmove(&__dst, &v19[v70 + 56], 0x78uLL);
            *(&v79 + 1) = v3;
            v80 = v69;
            _s7SwiftUI29_ShapeStyle_InterpolatorGroupC14AddLayerResult33_3890C65F12EA82A4BC5FBD33046B67FALLOWOi0_(&__dst);
            v64 = v77;
            v65 = v79;
            *(a3 + 96) = v78;
            *(a3 + 112) = v65;
            v66 = v73;
            v67 = v75;
            v68 = v76;
            *(a3 + 32) = v74;
            *(a3 + 48) = v67;
            *(a3 + 128) = v80;
            *(a3 + 64) = v68;
            *(a3 + 80) = v64;
            *a3 = __dst;
            *(a3 + 16) = v66;
            return outlined init with copy of _ShapeStyle_Pack.Style?(&v83, v71, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
          }

          __break(1u);
LABEL_22:
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
          v19 = result;
LABEL_8:
          if (*(v19 + 2) <= v12)
          {
            __break(1u);
          }

          else
          {
            v19[v8 + 260] = 0;
            *(v3 + 24) = v19;
            swift_endAccess();
            *&__dst = v3;
            DWORD2(__dst) = v69;
            result = _s7SwiftUI29_ShapeStyle_InterpolatorGroupC14AddLayerResult33_3890C65F12EA82A4BC5FBD33046B67FALLOWOi_(&__dst);
            v35 = v77;
            v36 = v79;
            *(a3 + 96) = v78;
            *(a3 + 112) = v36;
            v37 = v73;
            v38 = v75;
            v39 = v76;
            *(a3 + 32) = v74;
            *(a3 + 48) = v38;
            *(a3 + 128) = v80;
            *(a3 + 64) = v39;
            *(a3 + 80) = v35;
            *a3 = __dst;
            *(a3 + 16) = v37;
          }

          return result;
        }
      }

      v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_18;
  }

  v4 = *(v3 + 52);
  *(v3 + 52) = v4 + 1;
  LOBYTE(__dst) = 1;
  v87 = v97;
  v88 = v98;
  v89 = v99;
  v90 = v100;
  v83 = v93;
  v84 = v94;
  v85 = v95;
  v86 = v96;
  swift_beginAccess();
  outlined init with copy of _ShapeStyle_Pack.Style?(&v93, &__dst, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
  outlined copy of _ShapeStyle_LayerID(v7, v6, v8);
  v40 = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 24) = v13;
  if ((v40 & 1) == 0)
  {
LABEL_18:
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 + 1, 1, v13);
    *(v3 + 24) = v13;
  }

  v42 = *(v13 + 2);
  v41 = *(v13 + 3);
  if (v42 >= v41 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v13);
  }

  *(v13 + 2) = v42 + 1;
  v43 = &v13[232 * v42];
  *(v43 + 4) = v7;
  *(v43 + 5) = v6;
  v43[48] = v8;
  v44 = v92;
  *(v43 + 49) = v91;
  v43[51] = v44;
  *(v43 + 13) = v4;
  v45 = v83;
  v46 = v84;
  v47 = v85;
  *(v43 + 104) = v86;
  *(v43 + 88) = v47;
  *(v43 + 72) = v46;
  *(v43 + 56) = v45;
  v48 = v87;
  v49 = v88;
  v50 = v90;
  *(v43 + 152) = v89;
  *(v43 + 136) = v49;
  *(v43 + 120) = v48;
  v51 = MEMORY[0x1E69E7CC0];
  *(v43 + 21) = v50;
  *(v43 + 22) = v51;
  *(v43 + 92) = 0;
  *(v43 + 188) = 0;
  *(v43 + 204) = 0;
  *(v43 + 196) = 0;
  *(v43 + 53) = 0;
  *(v43 + 27) = 0x7FF0000000000000;
  *(v43 + 56) = 0;
  v43[228] = 1;
  LOWORD(v50) = v81;
  v43[231] = v82;
  *(v43 + 229) = v50;
  *(v43 + 30) = 0;
  *(v43 + 31) = 0;
  *(v43 + 29) = v51;
  *(v43 + 253) = 0;
  *(v3 + 24) = v13;
  swift_endAccess();
  *&__dst = v3;
  DWORD2(__dst) = v4;
  _s7SwiftUI29_ShapeStyle_InterpolatorGroupC14AddLayerResult33_3890C65F12EA82A4BC5FBD33046B67FALLOWOi_(&__dst);
  v52 = v77;
  v53 = v79;
  *(a3 + 96) = v78;
  *(a3 + 112) = v53;
  v54 = v73;
  v55 = v75;
  v56 = v76;
  *(a3 + 32) = v74;
  *(a3 + 48) = v55;
  *(a3 + 128) = v80;
  *(a3 + 64) = v56;
  *(a3 + 80) = v52;
  *a3 = __dst;
  *(a3 + 16) = v54;
}

void type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect)()
{
  if (!lazy cache variable for type metadata for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect))
  {
    type metadata accessor for CGRect(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
    }
  }
}

uint64_t initializeWithCopy for _ShapeStyle_RenderedShape.Shape(uint64_t a1, uint64_t a2)
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
  v17 = *(a2 + 104);
  outlined copy of _ShapeStyle_RenderedShape.Shape(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  *(a1 + 96) = v16;
  *(a1 + 104) = v17;
  return a1;
}

id outlined copy of _ShapeStyle_RenderedShape.Shape(id result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14)
{
  v14 = a14 >> 29;
  if (a14 >> 29 <= 1)
  {
    if (v14)
    {
      if (v14 == 1)
      {
      }
    }

    else
    {

      return outlined copy of Path.Storage(result, a2, a3, a4, a5);
    }
  }

  else
  {
    switch(v14)
    {
      case 2u:

      case 3u:

        return outlined copy of GraphicsImage.Contents?(result, a2);
      case 4u:

        return outlined copy of DisplayList.Item.Value(a6, a7, a8, a9);
    }
  }

  return result;
}

uint64_t _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*v3)
  {
    v26 = *result;
    v6 = *(result + 16);

    while (1)
    {
      v33 = v26;
      LOBYTE(v34) = v6;
      v13 = *(a2 + 80);
      v43 = *(a2 + 64);
      *v44 = v13;
      *&v44[16] = *(a2 + 96);
      v45 = *(a2 + 112);
      v14 = *(a2 + 16);
      v39 = *a2;
      v40 = v14;
      v15 = *(a2 + 48);
      v41 = *(a2 + 32);
      v42 = v15;
      _ShapeStyle_InterpolatorGroup.addLayer(id:style:)(&v33, &v39, v46);
      v48[6] = v46[6];
      v48[7] = v46[7];
      v49 = v47;
      v48[2] = v46[2];
      v48[3] = v46[3];
      v48[4] = v46[4];
      v48[5] = v46[5];
      v48[0] = v46[0];
      v48[1] = v46[1];
      if (_s7SwiftUI29_ShapeStyle_InterpolatorGroupC14AddLayerResult33_3890C65F12EA82A4BC5FBD33046B67FALLOWOg(v48) != 1)
      {
        break;
      }

      v16 = sub_18D130FB8(v48);
      v17 = *(v16 + 120);
      v18 = *(v16 + 128);
      v19 = *(a3 + 80);
      v31 = *(a3 + 64);
      v32[0] = v19;
      *(v32 + 12) = *(a3 + 92);
      v20 = *(a3 + 16);
      v27 = *a3;
      v28 = v20;
      v21 = *(a3 + 48);
      v29 = *(a3 + 32);
      v30 = v21;
      v33 = v27;
      v34 = v20;
      *(v38 + 12) = *(v32 + 12);
      v37 = v31;
      v38[0] = v19;
      v35 = v29;
      v36 = v21;
      *(a3 + 96) = 0;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 104) = -1610612736;

      outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v27, &v39);
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v33);

      *(a3 + 144) = v17;
      *(a3 + 152) = v18;
      v22 = *(v16 + 112);
      if (v22)
      {
        v42 = *(v16 + 48);
        v43 = *(v16 + 64);
        *v44 = *(v16 + 80);
        *&v44[16] = *(v16 + 96);
        v39 = *v16;
        v40 = *(v16 + 16);
        v41 = *(v16 + 32);
        v45 = v22;
        _ShapeStyle_RenderedShape.render(style:)(&v39);
      }

      _ShapeStyle_RenderedLayers.endLayer(shape:)(a3);

      outlined destroy of _ShapeStyle_Pack.Style?(v16, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);

      v7 = *(a3 + 80);
      v43 = *(a3 + 64);
      *v44 = v7;
      *&v44[12] = *(a3 + 92);
      v8 = *(a3 + 16);
      v39 = *a3;
      v40 = v8;
      v9 = *(a3 + 48);
      v41 = *(a3 + 32);
      v42 = v9;
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v39);
      v10 = v32[0];
      *(a3 + 64) = v31;
      *(a3 + 80) = v10;
      *(a3 + 92) = *(v32 + 12);
      v11 = v28;
      *a3 = v27;
      *(a3 + 16) = v11;
      v12 = v30;
      *(a3 + 32) = v29;
      *(a3 + 48) = v12;
    }

    v23 = sub_18D130FB8(v48);
    v24 = *v23;
    v25 = *(v23 + 8);

    *(a3 + 144) = v24;
    *(a3 + 152) = v25;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _StackLayoutCache(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI11DisplayListV4ItemV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (a2 + 104);
  v4 = (result + 104);
  while (v2)
  {
    v5 = *(v3 - 5);
    v6 = *v3;
    v3 += 20;
    result = *v4 == v6 && *(v4 - 5) == v5;
    v8 = result != 1 || v2-- == 1;
    v4 += 20;
    if (v8)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _ShapeStyle_InterpolatorGroup.features.getter@<X0>(_WORD *a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = v4 + 32;
    while (1)
    {
      v9 = v8 + 232 * v7;
      v10 = *(v9 + 200);
      v11 = *(v9 + 152);
      v12 = *(v10 + 16);
      if (v12)
      {
        if (v12 == 1)
        {
          v13 = 0;
        }

        else
        {
          LODWORD(result) = 0;
          v13 = v12 & 0x7FFFFFFFFFFFFFFELL;
          v14 = (v10 + 152);
          v15 = v12 & 0x7FFFFFFFFFFFFFFELL;
          do
          {
            v16 = *(v14 - 56);
            v17 = *v14;
            v14 += 112;
            v11 |= v16;
            result = v17 | result;
            v15 -= 2;
          }

          while (v15);
          v11 |= result;
          if (v12 == v13)
          {
            goto LABEL_3;
          }
        }

        v18 = v12 - v13;
        v19 = (v10 + 112 * v13 + 40);
        do
        {
          v20 = *v19;
          v19 += 56;
          v11 |= v20;
          --v18;
        }

        while (v18);
      }

LABEL_3:
      ++v7;
      v6 |= v11;
      if (v7 == v5)
      {
        goto LABEL_14;
      }
    }
  }

  v6 = 0;
LABEL_14:
  *a1 = v6;
  return result;
}

uint64_t _ShapeStyle_InterpolatorGroup.properties.getter@<X0>(_DWORD *a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = v4 + 32;
    while (1)
    {
      v9 = v8 + 232 * v7;
      v10 = *(v9 + 200);
      v11 = *(v9 + 156);
      v12 = *(v10 + 16);
      if (v12)
      {
        if (v12 == 1)
        {
          v13 = 0;
        }

        else
        {
          LODWORD(result) = 0;
          v13 = v12 & 0x7FFFFFFFFFFFFFFELL;
          v14 = (v10 + 156);
          v15 = v12 & 0x7FFFFFFFFFFFFFFELL;
          do
          {
            v16 = *(v14 - 28);
            v17 = *v14;
            v14 += 56;
            v11 |= v16;
            result = v17 | result;
            v15 -= 2;
          }

          while (v15);
          v11 |= result;
          if (v12 == v13)
          {
            goto LABEL_3;
          }
        }

        v18 = v12 - v13;
        v19 = (v10 + 112 * v13 + 44);
        do
        {
          v20 = *v19;
          v19 += 28;
          v11 |= v20;
          --v18;
        }

        while (v18);
      }

LABEL_3:
      ++v7;
      v6 |= v11;
      if (v7 == v5)
      {
        goto LABEL_14;
      }
    }
  }

  v6 = 0;
LABEL_14:
  *a1 = v6;
  return result;
}

uint64_t _ShapeStyle_InterpolatorGroup.rewriteInterpolation(serial:list:time:frame:contentOrigin:contentOffset:version:)(int a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t *a12)
{
  v13 = v12;
  v24 = *a12;
  swift_beginAccess();
  v25 = *(v13 + 24);
  v26 = *(v25 + 16);
  if (!v26)
  {
LABEL_5:

    v29 = 0;
    *a2 = MEMORY[0x1E69E7CC0];
    *(a2 + 8) = 0;
    *(a2 + 12) = 0;
    return v29 & 1;
  }

  v27 = 0;
  v28 = 259;
  while (*(v25 + v28 - 207) != a1)
  {
    ++v27;
    v28 += 232;
    if (v26 == v27)
    {
      goto LABEL_5;
    }
  }

  swift_beginAccess();
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v13 + 24) = v25;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
    v25 = result;
    *(v13 + 24) = result;
  }

  if (v27 < *(v25 + 16))
  {
    v31 = v25 + v28;
    v32 = (v25 + v28 - 83);
    v33 = *(a2 + 8);
    v34 = *(a2 + 12);
    *&v62[0] = *a2;
    WORD4(v62[0]) = v33;
    HIDWORD(v62[0]) = v34;

    DisplayList.InterpolatorLayer.setDisplayList(_:origin:)(v62, a7, a8);

    if (*(*(v25 + v28 - 27) + 16))
    {
      Value = AGGraphGetValue();
      if (*(v31 - 19) != *Value)
      {
        *(v31 - 19) = *Value;
        *(v25 + v28) = 1;
      }

      specialized static GraphHost.currentHost.getter();
      type metadata accessor for ViewGraph();
      v36 = swift_dynamicCastClassUnconditional();
      v37 = *AGGraphGetValue();
      swift_beginAccess();
      v38 = *(v36 + 376);
      if (v37 < v38)
      {
        v38 = v37;
      }

      *(v36 + 376) = v38;

      v39 = *(v13 + 32);
      swift_beginAccess();
      DisplayList.InterpolatorLayer.updateInterpolators(contentsScale:maxDuration:)(v39, *(v13 + 16));
      v40 = *(v25 + v28 - 67);
      v60[0] = *v32;
      v60[1] = v40;
      v41 = *(v25 + v28 - 51);
      v42 = *(v25 + v28 - 35);
      v43 = *(v25 + v28 - 19);
      v61 = *(v25 + v28 - 3);
      v60[3] = v42;
      v60[4] = v43;
      v60[2] = v41;
      v44 = *(v25 + v28 - 35);
      v56 = *(v25 + v28 - 51);
      v57 = v44;
      v58 = *(v25 + v28 - 19);
      v59 = *(v25 + v28 - 3);
      v45 = *(v25 + v28 - 67);
      v54 = *v32;
      v55 = v45;
      v53 = v24;
      v46 = *(v13 + 40);
      v47 = *(v13 + 44);
      v48 = *(v13 + 48);
      v49 = *(v13 + 36);
      v50 = v46;
      v51 = v47;
      v52 = v48;
      outlined init with copy of DisplayList.InterpolatorLayer(v60, v62);
      v29 = DisplayList.InterpolatorLayer.updateOutput(list:frame:contentOffset:version:rasterizationOptions:)(a2, &v53, &v49, a3, a4, a5, a6, a9, a10);
      v62[2] = v56;
      v62[3] = v57;
      v62[4] = v58;
      v63 = v59;
      v62[0] = v54;
      v62[1] = v55;
      outlined destroy of DisplayList.InterpolatorLayer(v62);
    }

    else
    {
      v29 = 0;
    }

    *(v13 + 24) = v25;
    swift_endAccess();
    return v29 & 1;
  }

  __break(1u);
  return result;
}

void DisplayList.InterpolatorLayer.setDisplayList(_:origin:)(uint64_t a1, double a2, double a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 12);
  v9 = *(v3 + 16) == a2 && *(v3 + 24) == a3;
  if (!v9 || (v10 = *(v3 + 8), v11 = *(v3 + 12), (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI11DisplayListV4ItemV_Tt1g5(*v3, v6) & 1) == 0) || (v10 == v7 ? (v12 = v11 == v8) : (v12 = 0), !v12))
  {
    v13 = *(v3 + 48);
    v14 = *(v3 + 52);
    v15 = *(v3 + 16);
    v20[0] = *v3;
    v20[1] = v15;
    v21[0] = *(v3 + 32);
    *(v21 + 13) = *(v3 + 45);

    outlined destroy of DisplayList.InterpolatorLayer.Contents(v20);
    *v3 = v6;
    *(v3 + 8) = v7;
    *(v3 + 12) = v8;
    *(v3 + 16) = a2;
    *(v3 + 24) = a3;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0x7FF0000000000000;
    *(v3 + 48) = v13;
    *(v3 + 52) = v14;
    *(v3 + 83) = 1;
    v16 = *(v3 + 56);
    v17 = *(v16 + 2);
    if (v17)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      }

      if (v17 > *(v16 + 2))
      {
        __break(1u);
      }

      else
      {
        v18 = &v16[112 * v17];
        v19 = *(v18 - 3);
        *(v18 - 3) = 0;

        *(v3 + 56) = v16;
      }
    }
  }
}

uint64_t outlined destroy of DisplayList.InterpolatorLayer.Contents(uint64_t a1)
{

  swift_unknownObjectRelease();
  return a1;
}

Swift::Void __swiftcall DisplayList.translate(by:version:)(CGSize by, SwiftUI::DisplayList::Version version)
{
  v3 = *v2;
  v4 = *(*v2 + 2);
  if (v4)
  {
    height = by.height;
    width = by.width;
    v5 = *version.value;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_11:
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    }

    v6 = 0;
    v7 = *(v3 + 2);
    v8.f64[0] = width;
    v8.f64[1] = height;
    v9 = (v3 + 64);
    do
    {
      if (v6 >= v7)
      {
        __break(1u);
        goto LABEL_11;
      }

      ++v6;
      v9[-2] = vaddq_f64(v9[-2], v8);
      v10 = v9->f64[0];
      if (*&v5 > *&v9->f64[0])
      {
        v10 = v5;
      }

      v9->f64[0] = v10;
      v9 += 5;
    }

    while (v4 != v6);
    *v2 = v3;
  }
}

uint64_t _ShapeStyle_RenderedLayers.endLayer(shape:)(float64x2_t *a1)
{
  v2 = v1;
  _ShapeStyle_RenderedShape.commitItem()(&v57);
  v4 = *(v1 + 8);
  *&v64[12] = *(v1 + 68);
  v5 = *(v1 + 24);
  v61 = v4;
  v62 = v5;
  v6 = *(v1 + 56);
  v63 = *(v1 + 40);
  *v64 = v6;
  v7 = v4;
  v8 = (*&v64[16] >> 28) & 3;
  if (!v8)
  {
    v18 = *v64;
    v19 = v63;
    v20 = v62;
    v21 = *&v64[16] & 0xFFFFFFFFCFFFFFFFLL;
    v22 = a1[7];
    v23 = *&v4 - v22.f64[0];
    v24 = *(&v61 + 1) - a1[7].f64[1];
    v57 = vsubq_f64(v57, v22);
    *&v60[24] = 0;
    type metadata accessor for _ShapeStyle_Pack.Style?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *v41 = v23;
    *(v41 + 1) = v24;
    v41[1] = v20;
    v41[2] = v19;
    *v42 = v18;
    *&v42[16] = v21;
    *&v42[24] = 0;
    v25 = v41[0];
    *(v7 + 48) = v20;
    *(v7 + 64) = v19;
    *(v7 + 80) = v18;
    *(v7 + 92) = *&v42[12];
    *(v7 + 16) = xmmword_18DDAB4C0;
    *(v7 + 32) = v25;
    *(v44 + 12) = *&v60[12];
    v26 = v59;
    v27 = *v60;
    v43[2] = v59;
    v44[0] = *v60;
    v28 = v57;
    v29 = v58;
    v43[0] = v57;
    v43[1] = v58;
    *(v7 + 172) = *&v60[12];
    *(v7 + 144) = v26;
    *(v7 + 160) = v27;
    *(v7 + 112) = v28;
    *(v7 + 128) = v29;
    v45.f64[0] = v23;
    v45.f64[1] = v24;
    v46 = v20;
    v47 = v19;
    *v48 = v18;
    *&v48[16] = v21;
    *&v48[24] = 0;
    outlined init with copy of _ShapeStyle_RenderedLayers.Layers(&v61, &v53);
    outlined init with copy of DisplayList.Item(v41, &v53);
    outlined init with copy of DisplayList.Item(v43, &v53);
    outlined destroy of DisplayList.Item(&v45);
    v51 = v59;
    v52[0] = *v60;
    *(v52 + 12) = *&v60[12];
    v49 = v57;
    v50 = v58;
    outlined destroy of DisplayList.Item(&v49);
    v30 = *(v2 + 24);
    v31 = *(v2 + 56);
    v55 = *(v2 + 40);
    v56[0] = v31;
    *(v56 + 12) = *(v2 + 68);
    v53 = *(v2 + 8);
    v54 = v30;
    v17 = &v53;
LABEL_9:
    result = outlined destroy of _ShapeStyle_RenderedLayers.Layers(v17);
    *(v2 + 8) = v7;
    *(v2 + 56) = 0;
    *(v2 + 72) = 0x10000000;
    return result;
  }

  if (v8 == 1)
  {
    v57 = vsubq_f64(v57, a1[7]);
    *&v60[24] = 0;
    v55 = v59;
    v56[0] = *v60;
    *(v56 + 12) = *&v60[12];
    v53 = v57;
    v54 = v58;
    outlined init with copy of _ShapeStyle_RenderedLayers.Layers(&v61, &v49);
    outlined init with copy of DisplayList.Item(&v53, &v49);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
    }

    v10 = *(v7 + 16);
    v9 = *(v7 + 24);
    if (v10 >= v9 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
    }

    v47 = v59;
    *v48 = *v60;
    *&v48[12] = *&v60[12];
    v45 = v57;
    v46 = v58;
    outlined destroy of DisplayList.Item(&v45);
    *(v7 + 16) = v10 + 1;
    v11 = (v7 + 80 * v10);
    v11[2] = v53;
    v13 = v55;
    v12 = v56[0];
    v14 = v54;
    *(v11 + 92) = *(v56 + 12);
    v11[4] = v13;
    v11[5] = v12;
    v11[3] = v14;
    *(v52 + 12) = *(v2 + 68);
    v15 = *(v2 + 56);
    v51 = *(v2 + 40);
    v52[0] = v15;
    v16 = *(v2 + 24);
    v49 = *(v2 + 8);
    v50 = v16;
    v17 = &v49;
    goto LABEL_9;
  }

  v33 = v59;
  v34 = *&v60[8];
  v35 = *&v60[24];
  v36 = *v60 & 0x1FFFFFFFFFLL;
  v37 = *&v60[16] & 0xFFFFFFFFC000FFFFLL;
  v38 = *(v2 + 24);
  v39 = *(v2 + 56);
  v55 = *(v2 + 40);
  v56[0] = v39;
  *(v56 + 12) = *(v2 + 68);
  v53 = *(v2 + 8);
  v54 = v38;
  result = outlined destroy of _ShapeStyle_RenderedLayers.Layers(&v53);
  v40 = v57;
  *(v2 + 24) = v58;
  *(v2 + 8) = v40;
  *(v2 + 40) = v33;
  *(v2 + 56) = v36;
  *(v2 + 64) = v34;
  *(v2 + 72) = v37;
  *(v2 + 80) = v35;
  return result;
}

uint64_t _ShapeStyle_RenderedShape.commitItem()@<X0>(__int128 *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 260);
  if (v4 == 0.0 || (v5 = *(v1 + 112), v6 = *(v1 + 120), v7 = *(v1 + 128), v8 = *(v1 + 136), v66.origin.x = v5, v66.origin.y = v6, v66.size.width = v7, v66.size.height = v8, CGRectIsEmpty(v66)))
  {
    v9 = (v1 + 200);
    outlined consume of DisplayList.Item.Value(*(v1 + 200), *(v1 + 208), *(v1 + 216), *(v1 + 224));
    *(v1 + 200) = 0;
    *(v1 + 208) = 0;
    *(v1 + 216) = 0;
    *(v1 + 224) = 3221225472;
    v10 = *(v1 + 144);
    if (v10)
    {
      v11 = *(v1 + 152);
      v12 = *(v1 + 192);
      v62 = 0uLL;
      v63 = *(v1 + 176);
      v64 = v12;
      *v65 = 0uLL;
      *&v65[16] = 3221225472;
      *&v65[24] = 0;
      swift_retain_n();
      outlined copy of DisplayList.Item.Value(0, 0, 0, 0xC0000000);
      DisplayList.init(_:)(&v62, &v59);
      v13 = v59;
      v14 = v60 | (v61 << 32) | 0x40000000;
      outlined consume of DisplayList.Item.Value(*(v1 + 200), *(v1 + 208), *(v1 + 216), *(v1 + 224));
      *(v1 + 200) = v10;
      *(v1 + 208) = v11 | 0x1200000000;
      *(v1 + 216) = v13;
      *(v1 + 224) = v14;
      LOBYTE(v62) = *(v1 + 236);
      DisplayList.Item.canonicalize(options:)(&v62);

      *(v1 + 144) = 0;
      *(v1 + 152) = 0;
    }

    v15 = *(v1 + 208);
    v64 = *(v1 + 192);
    *v65 = v15;
    *&v65[12] = *(v1 + 220);
    v16 = *&v65[12];
    v17 = *(v1 + 176);
    v62 = *(v1 + 160);
    v18 = v62;
    v63 = v17;
    a1[2] = v64;
    a1[3] = v15;
    *(a1 + 60) = v16;
    *a1 = v18;
    a1[1] = v17;
    outlined init with copy of DisplayList.Item(&v62, &v59);
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v19 = static GraphicsBlendMode.normal;
    v20 = byte_1ED52F818;
    v21 = *(v2 + 248);
    v22 = *(v2 + 256);
    outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
    outlined consume of GraphicsBlendMode(v21, v22);
    *(v2 + 248) = v19;
    *(v2 + 256) = v20;
    *(v2 + 260) = 1065353216;
    *(v2 + 264) = 0;
    result = outlined consume of DisplayList.Item.Value(*(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224));
    *v9 = 0;
    *(v2 + 208) = 0;
    *(v2 + 216) = 0;
    *(v2 + 224) = 3221225472;
    v24 = *(v2 + 128);
    *(v2 + 160) = *(v2 + 112);
    *(v2 + 176) = v24;
  }

  else
  {
    LOBYTE(v62) = *(v1 + 236);
    DisplayList.Item.canonicalize(options:)(&v62);
    v25 = *(v1 + 144);
    if (v25)
    {
      v26 = *(v1 + 152);
      v27 = *(v1 + 208);
      v28 = *(v2 + 216);
      v29 = *(v2 + 224);
      v30 = *(v2 + 192);
      v31 = *(v2 + 200);
      v62 = 0uLL;
      v63 = *(v2 + 176);
      *&v64 = v30;
      *(&v64 + 1) = v31;
      *v65 = v27;
      *&v65[8] = v28;
      *&v65[16] = v29;
      *&v65[24] = 0;
      swift_retain_n();
      outlined copy of DisplayList.Item.Value(v31, v27, v28, v29);
      DisplayList.init(_:)(&v62, &v59);
      v32 = v59;
      v33 = v60 | (v61 << 32) | 0x40000000;
      outlined consume of DisplayList.Item.Value(*(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224));
      *(v2 + 200) = v25;
      *(v2 + 208) = v26 | 0x1200000000;
      *(v2 + 216) = v32;
      *(v2 + 224) = v33;
      LOBYTE(v62) = *(v2 + 236);
      DisplayList.Item.canonicalize(options:)(&v62);

      *(v2 + 144) = 0;
      *(v2 + 152) = 0;
    }

    v34 = *(v2 + 264);
    if (v34)
    {
      LOWORD(v62) = *(v2 + 108);
      DisplayList.Item.addDrawingGroup(contentSeed:)(&v62);
      *(v2 + 264) = v34 & 0xFE;
    }

    v35 = *(v2 + 256);
    v36 = *(v2 + 248);
    if ((v35 & 1) != 0 || v36)
    {
      v37 = *(v2 + 208);
      v38 = *(v2 + 216);
      v39 = *(v2 + 224);
      v40 = *(v2 + 192);
      v41 = *(v2 + 200);
      v62 = 0uLL;
      v63 = *(v2 + 176);
      *&v64 = v40;
      *(&v64 + 1) = v41;
      *v65 = v37;
      *&v65[8] = v38;
      *&v65[16] = v39;
      *&v65[24] = 0;
      outlined copy of GraphicsBlendMode(v36, v35);
      outlined copy of GraphicsBlendMode(v36, v35);
      outlined copy of DisplayList.Item.Value(v41, v37, v38, v39);
      DisplayList.init(_:)(&v62, &v59);
      v42 = v59;
      v43 = v60 | (v61 << 32) | 0x40000000;
      outlined consume of DisplayList.Item.Value(*(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224));
      *(v2 + 200) = v36;
      *(v2 + 208) = v35 | 0x500000000;
      *(v2 + 216) = v42;
      *(v2 + 224) = v43;
      LOBYTE(v62) = *(v2 + 236);
      DisplayList.Item.canonicalize(options:)(&v62);
      outlined consume of GraphicsBlendMode(v36, v35);
    }

    if (v4 != 1.0)
    {
      v44 = *(v2 + 208);
      v45 = *(v2 + 216);
      v46 = *(v2 + 224);
      v48 = *(v2 + 192);
      v47 = *(v2 + 200);
      v62 = 0uLL;
      v63 = *(v2 + 176);
      *&v64 = v48;
      *(&v64 + 1) = v47;
      *v65 = v44;
      *&v65[8] = v45;
      *&v65[16] = v46;
      *&v65[24] = 0;
      outlined copy of DisplayList.Item.Value(v47, v44, v45, v46);
      DisplayList.init(_:)(&v62, &v59);
      v49 = v59;
      v50 = v60 | (v61 << 32) | 0x40000000;
      outlined consume of DisplayList.Item.Value(*(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224));
      *(v2 + 200) = LODWORD(v4);
      *(v2 + 208) = 0x400000000;
      *(v2 + 216) = v49;
      *(v2 + 224) = v50;
      LOBYTE(v62) = *(v2 + 236);
      DisplayList.Item.canonicalize(options:)(&v62);
    }

    v51 = *(v2 + 208);
    v64 = *(v2 + 192);
    *v65 = v51;
    *&v65[12] = *(v2 + 220);
    v52 = *&v65[12];
    v53 = *(v2 + 176);
    v62 = *(v2 + 160);
    v54 = v62;
    v63 = v53;
    a1[2] = v64;
    a1[3] = v51;
    *(a1 + 60) = v52;
    *a1 = v54;
    a1[1] = v53;
    outlined init with copy of DisplayList.Item(&v62, &v59);
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v55 = static GraphicsBlendMode.normal;
    v56 = byte_1ED52F818;
    v57 = *(v2 + 248);
    v58 = *(v2 + 256);
    outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
    outlined consume of GraphicsBlendMode(v57, v58);
    *(v2 + 248) = v55;
    *(v2 + 256) = v56;
    *(v2 + 260) = 1065353216;
    *(v2 + 264) = 0;
    result = outlined consume of DisplayList.Item.Value(*(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224));
    *(v2 + 200) = 0;
    *(v2 + 208) = 0;
    *(v2 + 216) = 0;
    *(v2 + 224) = 3221225472;
    *(v2 + 160) = v5;
    *(v2 + 168) = v6;
    *(v2 + 176) = v7;
    *(v2 + 184) = v8;
  }

  return result;
}

uint64_t outlined consume of _ShapeStyle_RenderedLayers.Layers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v9 = (a9 >> 28) & 3;
  if (v9 == 1)
  {
  }

  if (!v9)
  {
    return outlined consume of DisplayList.Item.Value(a6, a7, a8, a9);
  }

  return result;
}

void outlined consume of _ShapeStyle_RenderedShape.Shape(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14)
{
  v14 = a14 >> 29;
  if (a14 >> 29 <= 1)
  {
    if (v14)
    {
      if (v14 == 1)
      {
      }
    }

    else
    {

      outlined consume of Path.Storage(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    switch(v14)
    {
      case 2u:

        break;
      case 3u:

        outlined consume of GraphicsImage.Contents?(a1, a2);
        break;
      case 4u:

        outlined consume of DisplayList.Item.Value(a6, a7, a8, a9);
        break;
    }
  }
}

uint64_t destroy for _ShapeStyle_RenderedShape(uint64_t a1)
{
  outlined consume of _ShapeStyle_RenderedShape.Shape(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104));

  outlined consume of DisplayList.Item.Value(*(a1 + 200), *(a1 + 208), *(a1 + 216), *(a1 + 224));
  v2 = *(a1 + 248);
  v3 = *(a1 + 256);

  return outlined consume of GraphicsBlendMode(v2, v3);
}

uint64_t closure #1 in RendererEffectDisplayList.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for RendererEffectDisplayList() + 16);
  Value = AGGraphGetValue();
  (*(*(v8 - 8) + 16))(v7, Value, v8);
  v10 = AGGraphGetValue();
  (*(a3 + 24))(a2, a3, *v10, v10[1]);
  return (*(v5 + 8))(v7, a2);
}

double _ClipEffect.effectValue(size:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  Shape.effectivePath(in:)(*(a1 + 16), *(a1 + 24), v11, a3);
  v6 = swift_allocObject();
  result = *v11;
  v8 = v11[1];
  *(v6 + 16) = v11[0];
  *(v6 + 32) = v8;
  *(v6 + 48) = v12;
  v9 = (v3 + *(a1 + 36));
  v10 = *v9;
  LOBYTE(v9) = v9[1];
  *(v6 + 49) = v10;
  *(v6 + 50) = v9;
  *(v6 + 52) = 0;
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 12) = 6;
  return result;
}

uint64_t sub_18D13262C()
{
  outlined consume of Path.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t _ShapeStyle_RenderedShape.render(style:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 80);
  v254 = *(a1 + 64);
  v255 = v4;
  *v256 = *(a1 + 96);
  *&v256[16] = *(a1 + 112);
  v5 = *(a1 + 16);
  v250 = *a1;
  v251 = v5;
  v6 = *(a1 + 48);
  v252 = *(a1 + 32);
  v253 = v6;
  v7 = *v256;
  v8 = v256[8];
  v198 = *v256;
  v199 = v256[8];
  if (v256[8] == 255)
  {
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v9 = static GraphicsBlendMode.normal;
    v10 = byte_1ED52F818;
    outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
    v7 = *v256;
    v8 = -1;
  }

  else
  {
    v9 = *v256;
    v10 = v256[8];
  }

  v11 = *(v2 + 248);
  v12 = *(v2 + 256);
  outlined copy of GraphicsBlendMode?(v7, v8);
  result = outlined consume of GraphicsBlendMode(v11, v12);
  *(v2 + 248) = v9;
  *(v2 + 256) = v10 & 1;
  v14 = *(v2 + 260);
  v15 = *(&v255 + 2);
  v16 = v14 * *(&v255 + 2);
  *(v2 + 260) = v14 * *(&v255 + 2);
  v17 = v250;
  v18 = DWORD2(v250);
  v19 = *(&v250 + 3);
  v20 = v251;
  v21 = *(&v251 + 1);
  v22 = v252;
  v23 = DWORD1(v252);
  v24 = BYTE8(v252);
  v25 = BYTE9(v252);
  if (BYTE5(v255) <= 2u)
  {
    if (!BYTE5(v255))
    {
      v38 = *(&v250 + 3);
      if (!*(*&v256[16] + 16))
      {
        v38 = v16 * *(&v250 + 3);
        *(v2 + 260) = 1065353216;
      }

      *&v248 = v17;
      *(&v248 + 1) = __PAIR64__(LODWORD(v38), v18);
      v249 = v20;
      result = _ShapeStyle_RenderedShape.render(color:)(&v248);
      goto LABEL_115;
    }

    if (BYTE5(v255) == 1)
    {

      _ShapeStyle_RenderedShape.render(paint:)(v250);
LABEL_114:
      result = outlined destroy of _ShapeStyle_Pack.Fill(&v250);
      goto LABEL_115;
    }

    v196 = v250;
    if (v252 == 3 && (*(&v251 + 1) & 0xFFFFFFFFFFFFFFFELL) == 6)
    {
      outlined copy of Material.ID(*(&v251 + 1), 3u);
      v39 = MEMORY[0x1E69E7CC0];
      v40 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v40)
      {
        goto LABEL_21;
      }
    }

    else
    {
      outlined copy of Material.ID(*(&v251 + 1), v252);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&static CoreMaterialCache.shared);
      *&__dst = *(&v251 + 1);
      BYTE8(__dst) = v252;
      HIDWORD(__dst) = DWORD1(v252);
      *v203 = WORD4(v252);
      outlined copy of Material.ID(*(&v251 + 1), v252);
      v39 = CoreMaterialCache.subscript.getter(&__dst);
      outlined consume of Material.ID(__dst, BYTE8(__dst));
      os_unfair_lock_unlock(&static CoreMaterialCache.shared);
      v40 = *(v39 + 2);
      if (!v40)
      {
LABEL_21:
        *&v248 = v196;
        *(&v248 + 1) = __PAIR64__(LODWORD(v19), v18);
        v249 = v20;
        _ShapeStyle_RenderedShape.render(color:)(&v248);
LABEL_113:

        goto LABEL_114;
      }
    }

    v46 = v19;
    v192 = v39 + 32;
    v47 = v39 + 44;
    v48 = v40;
    v49 = v39 + 44;
    do
    {
      v50 = *v49;
      v49 += 16;
      if (v50 == 10)
      {
        memmove(&__dst, (*(v47 - 12) + 16), 0x7CuLL);
        if (_s7SwiftUI14GraphicsFilterOWOg(&__dst) == 15)
        {
          _s7SwiftUI14GraphicsFilterOWOj6_(&__dst);
          __asm { FMOV            V0.2S, #1.0 }

          v46 = 1.0;
          v18 = 1065353216;
          v20 = 2143289344;
          goto LABEL_33;
        }
      }

      v47 = v49;
      --v48;
    }

    while (v48);
    _D0 = v196;
LABEL_33:
    *&v248 = _D0;
    *(&v248 + 1) = __PAIR64__(LODWORD(v46), v18);
    v249 = v20;
    _ShapeStyle_RenderedShape.render(color:)(&v248);
    v52 = 0;
    v186 = *(MEMORY[0x1E695F050] + 16);
    v187 = *MEMORY[0x1E695F050];
    v191 = v40;
    while (1)
    {
      v53 = &v192[16 * v52];
      v54 = *v53;
      v55 = *(v53 + 2);
      v56 = v53[12];
      if (v53[12] > 9u)
      {
        break;
      }

      if (v56 == 4)
      {
        *(v2 + 260) = *(v2 + 260) * *&v54;
      }

      else
      {
        if (v56 != 5)
        {
          goto LABEL_48;
        }

        v57 = *v53;
        v58 = *(v2 + 248);
        v59 = *(v2 + 256);
        outlined copy of GraphicsBlendMode(*v53, v55 & 1);
        outlined consume of GraphicsBlendMode(v58, v59);
        *(v2 + 248) = v57;
        *(v2 + 256) = v55 & 1;
      }

LABEL_35:
      if (++v52 == v40)
      {
        goto LABEL_113;
      }
    }

    if (v56 != 10)
    {
      _ZF = v56 == 20 && v54 == 0;
      if (_ZF && v55 == 0)
      {
        goto LABEL_35;
      }

LABEL_48:
      v197 = *(v53 + 2);
      outlined copy of DisplayList.Effect(*v53, v55, v56);
LABEL_79:
      v97 = *(v2 + 208);
      v96 = *(v2 + 216);
      v98 = *(v2 + 224);
      v99 = *(v2 + 192);
      v100 = *(v2 + 200);
      __dst = 0uLL;
      *v203 = *(v2 + 176);
      *&v203[16] = v99;
      *&v203[24] = v100;
      *&v203[32] = v97;
      *&v203[40] = v96;
      *&v203[48] = v98;
      v101 = v98 >> 30;
      *&v203[56] = 0;
      v194 = v54;
      if (v98 >> 30 == 3 && !(v97 | v100 | v96) && v98 == 3221225472)
      {
        v102 = v197;
        outlined copy of DisplayList.Effect(v54, v197, v56);
        outlined copy of DisplayList.Item.Value(v100, v97, v96, 0xC0000000);
        outlined destroy of DisplayList.Item(&__dst);
        v103 = MEMORY[0x1E69E7CC0];
        v104 = 0x40000000;
        v40 = v191;
LABEL_112:
        outlined consume of DisplayList.Item.Value(*(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224));
        *(v2 + 200) = v194;
        *(v2 + 208) = v102 | (v56 << 32);
        *(v2 + 216) = v103;
        *(v2 + 224) = v104;
        LOBYTE(v226) = *(v2 + 236);
        DisplayList.Item.canonicalize(options:)(&v226);
        outlined consume of DisplayList.Effect(v194, v102, v56);
        goto LABEL_35;
      }

      type metadata accessor for _ShapeStyle_Pack.Style?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item, MEMORY[0x1E69E6F90]);
      v103 = swift_allocObject();
      v105 = *&v203[16];
      v106 = *&v203[32];
      v108 = __dst;
      v107 = *v203;
      v103[3] = *v203;
      v103[4] = v105;
      v103[5] = v106;
      v109 = *&v203[44];
      *(v103 + 92) = *&v203[44];
      v103[1] = xmmword_18DDA6EB0;
      v103[2] = v108;
      *&v227[16] = v105;
      *v228 = v106;
      *&v228[12] = v109;
      v226 = v108;
      *v227 = v107;
      outlined copy of DisplayList.Effect(v54, v197, v56);
      outlined copy of DisplayList.Item.Value(v100, v97, v96, v98);
      outlined init with copy of DisplayList.Item(&__dst, &v212);
      DisplayList.Item.features.getter(&v212);
      if (v98 >> 30 > 1)
      {
        if (v101 == 2)
        {
          v112 = *(v100 + 16);
          if (v112)
          {
            v110 = v212;
            v40 = v191;
            v102 = v197;
            if (v112 > 7)
            {
              v113 = v112 & 0x7FFFFFFFFFFFFFF8;
              v115 = (v100 + 188);
              v116 = 0uLL;
              v117 = v112 & 0x7FFFFFFFFFFFFFF8;
              v118 = 0uLL;
              do
              {
                v119.i32[0] = *(v115 - 30);
                v119.i32[1] = *(v115 - 20);
                v119.i32[2] = *(v115 - 10);
                v119.i32[3] = *v115;
                v120.i32[0] = v115[10];
                v120.i32[1] = v115[20];
                v120.i32[2] = v115[30];
                v120.i32[3] = v115[40];
                v116 = vorrq_s8(v119, v116);
                v118 = vorrq_s8(v120, v118);
                v115 += 80;
                v117 -= 8;
              }

              while (v117);
              v121 = vorrq_s8(v118, v116);
              v122 = vorr_s8(*v121.i8, *&vextq_s8(v121, v121, 8uLL));
              v111 = (v122.i32[0] | v122.i32[1]);
              if (v112 == v113)
              {
                goto LABEL_106;
              }
            }

            else
            {
              LODWORD(v111) = 0;
              v113 = 0;
            }

            v123 = v112 - v113;
            v124 = (v100 + 40 * v113 + 68);
            do
            {
              v125 = *v124;
              v124 += 10;
              v111 = v125 | v111;
              --v123;
            }

            while (v123);
          }

          else
          {
            v110 = v212;
            v111 = 0;
            v40 = v191;
            v102 = v197;
          }

LABEL_106:
          outlined destroy of DisplayList.Item(&__dst);
          goto LABEL_111;
        }

        v110 = v212;
        outlined destroy of DisplayList.Item(&__dst);
        v111 = 0;
      }

      else
      {
        if (v101)
        {
          v190 = v212;
          if (BYTE4(v97) == 2)
          {

            v114 = v100;
            v40 = v191;
          }

          else
          {
            v40 = v191;
            if (BYTE4(v97) == 7)
            {
              v114 = *(v100 + 28);
              outlined init with copy of DisplayList.Item(&__dst, &v226);
              outlined consume of DisplayList.Effect(v100, v97, 7);

              outlined destroy of DisplayList.Item(&__dst);
            }

            else if (BYTE4(v97) == 18)
            {
              (*(*v100 + 120))(&v212);
              outlined init with copy of DisplayList.Item(&__dst, &v226);
              outlined consume of DisplayList.Effect(v100, v97, 18);

              outlined destroy of DisplayList.Item(&__dst);
              v114 = v212;
            }

            else
            {
              outlined copy of DisplayList.Effect(v100, v97, SBYTE4(v97));

              outlined consume of DisplayList.Effect(v100, v97, SBYTE4(v97));

              outlined destroy of DisplayList.Item(&__dst);
              v114 = 0;
            }
          }

          v111 = v114 | HIDWORD(v98);
          v102 = v197;
          v110 = v190;
          goto LABEL_111;
        }

        if (v100 >> 60 != 6)
        {
          v110 = v212;
          v40 = v191;
          v102 = v197;
          if (v100 >> 60 == 11)
          {
            v111 = *((v100 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
            goto LABEL_106;
          }

          outlined destroy of DisplayList.Item(&__dst);
          v111 = 0;
LABEL_111:
          v104 = v110 | (v111 << 32) | 0x40000000;
          goto LABEL_112;
        }

        v111 = *((v100 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
        v110 = v212;
        outlined destroy of DisplayList.Item(&__dst);
      }

      v40 = v191;
      v102 = v197;
      goto LABEL_111;
    }

    memmove(&__dst, (v54 + 16), 0x7CuLL);
    v197 = v55;
    if (_s7SwiftUI14GraphicsFilterOWOg(&__dst) != 15)
    {

      goto LABEL_79;
    }

    _s7SwiftUI14GraphicsFilterOWOj6_(&__dst);
    v62 = *(v2 + 264);
    if (v62)
    {
      v63 = *(v2 + 108);
      if ((~*(v2 + 224) & 0xC0000000) != 0 || *(v2 + 224) != 3221225472 || *(v2 + 208) | *(v2 + 216) | *(v2 + 200))
      {
        v64 = *(v2 + 176);
        v65 = *(v2 + 208);
        v214 = *(v2 + 192);
        *v215 = v65;
        *&v215[12] = *(v2 + 220);
        v66 = *(v2 + 176);
        v212 = *(v2 + 160);
        v213 = v66;
        v67 = *(v2 + 208);
        v207 = v214;
        *v208 = v67;
        *&v208[12] = *(v2 + 220);
        v222.origin = v187;
        v222.size = v186;
        v205 = v212;
        v206 = v64;
        v193 = v54;
        outlined copy of DisplayList.Effect(v54, v55, 10);
        outlined init with copy of DisplayList.Item(&v212, &v226);
        DisplayList.Item.addExtent(to:)(&v222.origin.x);
        *&v227[16] = v207;
        *v228 = *v208;
        *&v228[12] = *&v208[12];
        v226 = v205;
        *v227 = v206;
        outlined destroy of DisplayList.Item(&v226);
        origin = v222.origin;
        size = v222.size;
        IsNull = CGRectIsNull(v222);
        height = 0.0;
        if (IsNull)
        {
          x = 0.0;
        }

        else
        {
          x = origin.x;
        }

        if (IsNull)
        {
          y = 0.0;
        }

        else
        {
          y = origin.y;
        }

        if (IsNull)
        {
          width = 0.0;
        }

        else
        {
          width = size.width;
        }

        if (!IsNull)
        {
          height = size.height;
        }

        v188 = *(&v212 + 1);
        v189 = *&v212;
        v75 = v213;
        v257 = CGRectIntegral(*(&height - 3));
        v76 = v257.origin.x;
        v77 = v257.origin.y;
        v78 = v257.size.width;
        v79 = v257.size.height;
        v80 = *(v2 + 208);
        v81 = *(v2 + 216);
        v82 = *(v2 + 224);
        v84 = *(v2 + 192);
        v83 = *(v2 + 200);
        v205 = 0uLL;
        v206 = v75;
        *&v207 = v84;
        *(&v207 + 1) = v83;
        *v208 = v80;
        *&v208[8] = v81;
        *&v208[16] = v82;
        *&v208[24] = 0;
        outlined copy of DisplayList.Item.Value(v83, v80, v81, v82);
        if (one-time initialization token for defaultFlags != -1)
        {
          swift_once();
        }

        v85 = static RasterizationOptions.Flags.defaultFlags;
        *(v2 + 160) = v76;
        *(v2 + 168) = v77;
        *(v2 + 176) = v78;
        *(v2 + 184) = v79;
        if ((~*&v208[16] & 0xC0000000) != 0 || *&v208[16] != 3221225472 || *v208 | *&v208[8] | *(&v207 + 1))
        {
          type metadata accessor for _ShapeStyle_Pack.Style?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item, MEMORY[0x1E69E6F90]);
          v88 = swift_allocObject();
          v89 = v207;
          v90 = *v208;
          v92 = v205;
          v91 = v206;
          v88[3] = v206;
          v88[4] = v89;
          v88[5] = v90;
          v93 = *&v208[12];
          *(v88 + 92) = *&v208[12];
          v88[1] = xmmword_18DDA6EB0;
          v88[2] = v92;
          v235 = v89;
          *v236 = v90;
          *&v236[12] = v93;
          v233 = v92;
          v234 = v91;
          outlined init with copy of DisplayList.Item(&v205, v200);
          DisplayList.Item.features.getter(v200);
          v87 = v200[0];
          v235 = v207;
          *v236 = *v208;
          *&v236[12] = *&v208[12];
          v233 = v205;
          v234 = v206;
          DisplayList.Item.properties.getter(v200);
          outlined destroy of DisplayList.Item(&v205);
          v86 = v200[0];
        }

        else
        {
          outlined destroy of DisplayList.Item(&v205);
          v86 = 0;
          v87 = 0;
          v88 = MEMORY[0x1E69E7CC0];
        }

        v94 = swift_allocObject();
        *(v94 + 16) = v88;
        *(v94 + 24) = v87;
        *(v94 + 28) = v86;
        *(v94 + 32) = v76 - v189;
        *(v94 + 40) = v77 - v188;
        *(v94 + 48) = -1;
        *(v94 + 52) = 768;
        *(v94 + 56) = v85 | 1;
        *(v94 + 60) = 3;
        v95 = v94 | 0xB000000000000000;
        outlined consume of DisplayList.Item.Value(*(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224));
        *(v2 + 200) = v95;
        *(v2 + 208) = v63;
        *(v2 + 216) = 0;
        *(v2 + 224) = 0;
        v54 = v193;
      }

      else
      {
      }

      v62 &= ~1u;
      *(v2 + 264) = v62;
      if ((v62 & 2) != 0)
      {
        goto LABEL_79;
      }
    }

    else
    {

      if ((v62 & 2) != 0)
      {
        goto LABEL_79;
      }
    }

    *(v2 + 264) = v62 | 2;
    goto LABEL_79;
  }

  v195 = v250;
  v26 = DWORD1(v251);
  if (BYTE5(v255) > 4u)
  {
    if (BYTE5(v255) != 5)
    {
      goto LABEL_115;
    }

    __asm { FMOV            V0.4S, #1.0 }

    v248 = _Q0;
    v249 = 2143289344;
    _ShapeStyle_RenderedShape.render(color:)(&v248);
    v31 = swift_allocObject();
    *&__dst = v195;
    *(&__dst + 1) = __PAIR64__(LODWORD(v19), v18);
    *v203 = v20;
    *&v203[4] = v26;
    *&v203[8] = v21;
    v203[16] = v22;
    *&v203[17] = *(a1 + 33);
    v203[19] = *(a1 + 35);
    *&v203[20] = v23;
    v203[24] = v24;
    v203[25] = v25;
    *&v203[53] = *(a1 + 69);
    *&v203[42] = *(a1 + 58);
    *&v203[26] = *(a1 + 42);
    _s7SwiftUI14GraphicsFilterOWOi14_(&__dst);
    v32 = *&v203[64];
    v31[5] = *&v203[48];
    v31[6] = v32;
    v31[7] = *v204;
    *(v31 + 124) = *&v204[12];
    v33 = *v203;
    v31[1] = __dst;
    v31[2] = v33;
    v34 = *&v203[32];
    v31[3] = *&v203[16];
    v31[4] = v34;
    *&v226 = v31;
    DWORD2(v226) = 0;
    BYTE12(v226) = 10;
    _ShapeStyle_RenderedShape.render(effect:)(&v226);
    v35 = v226;
    v36 = BYTE8(v226);
    v37 = BYTE12(v226);
  }

  else
  {
    if (BYTE5(v255) == 3)
    {
      *&__dst = v250;
      BYTE8(__dst) = BYTE8(v250);
      HIDWORD(__dst) = HIDWORD(v250);
      result = _ShapeStyle_RenderedShape.render(material:)(&__dst);
      goto LABEL_115;
    }

    __asm { FMOV            V0.4S, #1.0 }

    v248 = _Q0;
    v249 = 2143289344;
    _ShapeStyle_RenderedShape.render(color:)(&v248);
    v42 = swift_allocObject();
    Color.ResolvedDuotone.colorMatrix.getter(&v226);
    *&v203[16] = *&v227[16];
    *&v203[32] = *v228;
    *&v203[48] = *&v228[16];
    __dst = v226;
    *v203 = *v227;
    *&v203[64] = 2139095040;
    v203[68] = 0;
    _s7SwiftUI14GraphicsFilterOWOi14_(&__dst);
    v43 = *&v203[64];
    v42[5] = *&v203[48];
    v42[6] = v43;
    v42[7] = *v204;
    *(v42 + 124) = *&v204[12];
    v44 = *v203;
    v42[1] = __dst;
    v42[2] = v44;
    v45 = *&v203[32];
    v42[3] = *&v203[16];
    v42[4] = v45;
    *&v212 = v42;
    DWORD2(v212) = 0;
    BYTE12(v212) = 10;
    _ShapeStyle_RenderedShape.render(effect:)(&v212);
    v35 = v212;
    v36 = BYTE8(v212);
    v37 = BYTE12(v212);
  }

  result = outlined consume of DisplayList.Effect(v35, v36, v37);
LABEL_115:
  v126 = *&v256[16];
  v127 = *(*&v256[16] + 16);
  if (!v127)
  {
    return result;
  }

  v128 = *(v2 + 192);
  v129 = *(v2 + 108);
  v130 = *(v2 + 236);
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v131 = static GraphicsBlendMode.normal;
  v132 = byte_1ED52F818;
  *&v244 = v128;
  WORD4(v244) = v129;
  BYTE10(v244) = v130;
  *v245 = MEMORY[0x1E69E7CC0];
  *&v245[8] = MEMORY[0x1E69E7CC0];
  *&v245[16] = static GraphicsBlendMode.normal;
  v245[24] = byte_1ED52F818;
  *&v245[25] = 0;
  v246 = v244;
  v247[0] = *v245;
  *(v247 + 11) = *&v245[11];
  v242 = v244;
  *v243 = *v245;
  *&v243[11] = *&v245[11];
  v133 = *(v2 + 248);
  v134 = *(v2 + 256);
  if (v134)
  {
    if (byte_1ED52F818)
    {
      outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, 1);
      outlined init with copy of CompositedItemAccumulator(&v246, &__dst);
      outlined copy of GraphicsBlendMode(v131, 1);
      outlined copy of GraphicsBlendMode(v133, 1);
      outlined consume of GraphicsBlendMode(v133, 1);
      outlined consume of GraphicsBlendMode(v131, 1);
      v135 = v133 == v131;
      goto LABEL_123;
    }

    swift_unknownObjectRetain_n();
  }

  else if ((byte_1ED52F818 & 1) == 0)
  {
    outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, 0);
    outlined init with copy of CompositedItemAccumulator(&v246, &__dst);
    outlined consume of GraphicsBlendMode(v133, 0);
    outlined consume of GraphicsBlendMode(v131, 0);
    v135 = v133 == v131;
LABEL_123:
    v136 = v135;
    goto LABEL_128;
  }

  outlined copy of GraphicsBlendMode(v131, v132);
  outlined init with copy of CompositedItemAccumulator(&v246, &__dst);
  outlined copy of GraphicsBlendMode(v131, v132);
  outlined consume of GraphicsBlendMode(v133, v134);
  outlined consume of GraphicsBlendMode(v131, v132);
  outlined consume of GraphicsBlendMode(v133, v134);
  v136 = 0;
LABEL_128:
  v241 = v136;
  v137 = v126 + 32;
  for (i = v127 - 1; ; --i)
  {
    v200[0] = *v137;
    v139 = *(v137 + 16);
    v140 = *(v137 + 32);
    v141 = *(v137 + 48);
    *&v201[9] = *(v137 + 57);
    v200[2] = v140;
    *v201 = v141;
    v200[1] = v139;
    v142 = *(v137 + 16);
    v238.origin = *v137;
    v238.size = v142;
    v239 = *(v137 + 32);
    v240 = *(v137 + 48);
    if (BYTE5(v141))
    {
      goto LABEL_150;
    }

    v143 = v201[4];
    v235 = v252;
    *v236 = v253;
    *&v236[16] = v254;
    v237 = v255;
    v233 = v250;
    v234 = v251;
    v144 = HIDWORD(v255);
    v145 = *v256;
    v146 = v256[8];
    *(v232 + 7) = *&v256[16];
    v232[0] = *&v256[9];
    if ((v201[4] & 8) != 0)
    {
      v147 = v14 * *&v201[8];
    }

    else
    {
      v147 = *(v2 + 260);
    }

    v148 = *&v201[16];
    v149 = v201[24];
    outlined init with copy of _ShapeStyle_Pack.Effect(v200, &v226);
    outlined init with copy of _ShapeStyle_Pack.Effect(v200, &v226);
    outlined init with copy of _ShapeStyle_Pack.Style(&v250, &v226);
    outlined consume of GraphicsBlendMode?(v145, v146);
    v222 = v238;
    v223 = v239;
    v224 = v240;
    v225 = v143;
    *&v203[16] = v235;
    *&v203[32] = *v236;
    *&v203[48] = *&v236[16];
    *&v203[64] = v237;
    __dst = v233;
    *v203 = v234;
    *&v203[72] = v147;
    *&v203[76] = v144;
    *v204 = v148;
    v204[8] = v149;
    *&v204[9] = v232[0];
    *&v204[16] = *(v232 + 7);
    *&v228[16] = *&v236[16];
    v229 = *&v203[64];
    v230 = *v204;
    v231 = *(v232 + 7);
    v226 = v233;
    *v227 = v234;
    _ZF = *(v2 + 260) == 1.0;
    *&v227[16] = v235;
    *v228 = *v236;
    if (_ZF && v15 == 1.0)
    {
      v150 = static GraphicsBlendMode.normal;
      v151 = byte_1ED52F818;
      v152 = v199;
      if (v199 == 255)
      {
        outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
        v152 = -1;
        v154 = static GraphicsBlendMode.normal;
        v153 = byte_1ED52F818;
        v155 = v198;
        if (v151)
        {
          goto LABEL_138;
        }
      }

      else
      {
        v153 = byte_1ED52F818;
        v154 = static GraphicsBlendMode.normal;
        v155 = v198;
        v150 = v198;
        if (v199)
        {
LABEL_138:
          outlined copy of GraphicsBlendMode?(v155, v152);
          if (v153)
          {
            outlined init with copy of _ShapeStyle_Pack.Style(&__dst, &v212);
            outlined copy of GraphicsBlendMode(v154, 1);
            outlined consume of GraphicsBlendMode(v150, 1);
            outlined consume of GraphicsBlendMode(v154, 1);
            if (v150 != v154)
            {
              goto LABEL_148;
            }

LABEL_153:
            if (BYTE5(v255) <= 2u)
            {
              if (!BYTE5(v255))
              {
                v156 = *(&v250 + 3) == 1.0;
                goto LABEL_149;
              }

              if (BYTE5(v255) == 1)
              {
                v159 = *(*v250 + 104);

                v156 = v159();
                outlined destroy of _ShapeStyle_Pack.Fill(&v250);
                goto LABEL_149;
              }
            }

            else if (BYTE5(v255) > 5u)
            {
              v156 = 1;
              goto LABEL_149;
            }

            goto LABEL_142;
          }

          outlined init with copy of _ShapeStyle_Pack.Style(&__dst, &v212);
          outlined consume of GraphicsBlendMode(v150, 1);
          v157 = v154;
          v158 = 0;
          goto LABEL_147;
        }
      }

      if ((v153 & 1) == 0)
      {
        outlined copy of GraphicsBlendMode?(v155, v152);
        outlined init with copy of _ShapeStyle_Pack.Style(&__dst, &v212);
        outlined consume of GraphicsBlendMode(v150, 0);
        outlined consume of GraphicsBlendMode(v154, 0);
        if (v150 != v154)
        {
          goto LABEL_148;
        }

        goto LABEL_153;
      }

      outlined copy of GraphicsBlendMode?(v155, v152);
      outlined init with copy of _ShapeStyle_Pack.Style(&__dst, &v212);
      outlined copy of GraphicsBlendMode(v154, 1);
      outlined consume of GraphicsBlendMode(v150, 0);
      v157 = v154;
      v158 = 1;
LABEL_147:
      outlined consume of GraphicsBlendMode(v157, v158);
LABEL_148:
      v156 = 0;
      goto LABEL_149;
    }

    outlined init with copy of _ShapeStyle_Pack.Style(&__dst, &v212);
LABEL_142:
    v156 = 0;
LABEL_149:
    _ShapeStyle_RenderedShape.render(shadow:style:above:below:opaqueFill:mayAdjustItem:)(&v222, &v226, &v242, &v244, v156 & 1, &v241);
    outlined destroy of _ShapeStyle_Pack.Effect(v200);
    *&v208[16] = *&v228[16];
    v209 = v229;
    v210 = v230;
    v211 = v231;
    v205 = v226;
    v206 = *v227;
    v207 = *&v227[16];
    *v208 = *v228;
    outlined destroy of _ShapeStyle_Pack.Style(&v205);
    v214 = v235;
    *v215 = *v236;
    *&v215[16] = *&v236[16];
    v216 = v237;
    v212 = v233;
    v213 = v234;
    v217 = v147;
    v218 = v144;
    v219 = v148;
    v220 = v149;
    *(v221 + 7) = *(v232 + 7);
    v221[0] = v232[0];
    outlined destroy of _ShapeStyle_Pack.Style(&v212);
LABEL_150:
    if (!i)
    {
      break;
    }

    v137 += 80;
  }

  v160 = v245[25];
  v161 = v245[26];
  if (*(*v245 + 16) || *(*&v245[8] + 16) || *(*v243 + 16) || *(*&v243[8] + 16))
  {
    v162 = *(v2 + 256);
    v163 = *(v2 + 248);
    if (v163)
    {
      v164 = 1;
    }

    else
    {
      v164 = *(v2 + 256);
    }

    if (v164 == 1)
    {
      v165 = *(v2 + 208);
      v166 = *(v2 + 216);
      v167 = *(v2 + 224);
      v168 = *(v2 + 192);
      v169 = *(v2 + 200);
      __dst = 0uLL;
      *v203 = *(v2 + 176);
      *&v203[16] = v168;
      *&v203[24] = v169;
      *&v203[32] = v165;
      *&v203[40] = v166;
      *&v203[48] = v167;
      *&v203[56] = 0;
      outlined copy of GraphicsBlendMode(v163, v162);
      outlined copy of GraphicsBlendMode(v163, v162);
      outlined copy of DisplayList.Item.Value(v169, v165, v166, v167);
      DisplayList.init(_:)(&__dst, &v226);
      v170 = v226;
      v171 = WORD4(v226) | (HIDWORD(v226) << 32) | 0x40000000;
      outlined consume of DisplayList.Item.Value(*(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224));
      *(v2 + 200) = v163;
      *(v2 + 208) = v162 | 0x500000000;
      *(v2 + 216) = v170;
      *(v2 + 224) = v171;
      LOBYTE(__dst) = *(v2 + 236);
      DisplayList.Item.canonicalize(options:)(&__dst);
      outlined consume of GraphicsBlendMode(v163, v162);
      v172 = static GraphicsBlendMode.normal;
      v173 = byte_1ED52F818;
      v174 = *(v2 + 248);
      LOBYTE(v166) = *(v2 + 256);
      outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
      outlined consume of GraphicsBlendMode(v174, v166);
      *(v2 + 248) = v172;
      *(v2 + 256) = v173;
      v175 = *(v2 + 260);
      if (v175 != 1.0)
      {
LABEL_172:
        v176 = LODWORD(v175);
        v177 = *(v2 + 208);
        v178 = *(v2 + 216);
        v179 = *(v2 + 224);
        v181 = *(v2 + 192);
        v180 = *(v2 + 200);
        __dst = 0uLL;
        *v203 = *(v2 + 176);
        *&v203[16] = v181;
        *&v203[24] = v180;
        *&v203[32] = v177;
        *&v203[40] = v178;
        *&v203[48] = v179;
        *&v203[56] = 0;
        outlined copy of DisplayList.Item.Value(v180, v177, v178, v179);
        DisplayList.init(_:)(&__dst, &v226);
        v182 = v226;
        v183 = WORD4(v226) | (HIDWORD(v226) << 32) | 0x40000000;
        outlined consume of DisplayList.Item.Value(*(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224));
        *(v2 + 200) = v176;
        *(v2 + 208) = 0x400000000;
        *(v2 + 216) = v182;
        *(v2 + 224) = v183;
        LOBYTE(__dst) = *(v2 + 236);
        DisplayList.Item.canonicalize(options:)(&__dst);
        *(v2 + 260) = 1065353216;
        if ((v164 & 1) == 0)
        {
          goto LABEL_173;
        }
      }

      goto LABEL_174;
    }

    v175 = *(v2 + 260);
    if (v175 != 1.0)
    {
      goto LABEL_172;
    }

LABEL_173:
    v184 = *(v2 + 264);
    if (((v243[25] | (v184 >> 1) | v160) & 1) == 0)
    {
      push #1 (layers:above:) in _ShapeStyle_RenderedShape.render(style:)(&v245[8], 0, v2);
      push #1 (layers:above:) in _ShapeStyle_RenderedShape.render(style:)(&v243[8], 1, v2);
      if (v161)
      {
        if (v184)
        {
          goto LABEL_177;
        }
      }

      else if ((v184 & 1) != 0 || (v243[26] & 1) == 0)
      {
        goto LABEL_177;
      }

      *(v2 + 264) = v184 | 1;
      goto LABEL_177;
    }

LABEL_174:
    v185 = *(v2 + 264);
    if (v185)
    {
      LOWORD(__dst) = *(v2 + 108);
      DisplayList.Item.addDrawingGroup(contentSeed:)(&__dst);
      *(v2 + 264) = v185 & 0xFE;
    }

    CompositedItemAccumulator.commitPendingItems()();
    CompositedItemAccumulator.commitPendingItems()();
    push #1 (layers:above:) in _ShapeStyle_RenderedShape.render(style:)(v245, 0, v2);
    push #1 (layers:above:) in _ShapeStyle_RenderedShape.render(style:)(v243, 1, v2);
  }

LABEL_177:
  v226 = v242;
  *v227 = *v243;
  *&v227[11] = *&v243[11];
  outlined destroy of CompositedItemAccumulator(&v226);
  __dst = v244;
  *v203 = *v245;
  *&v203[11] = *&v245[11];
  return outlined destroy of CompositedItemAccumulator(&__dst);
}

uint64_t sub_18D133CD8()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

uint64_t sub_18D133D44()
{

  return swift_deallocObject();
}

uint64_t _ShapeStyle_RenderedLayers.commit(shape:options:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v56 = *a2;
  v6 = *v3;
  if (!*v3)
  {
LABEL_13:
    v32 = v4[1];
    v34 = v4[2];
    v33 = (v4 + 1);
    v35 = v4[3];
    v36 = v4[4];
    v38 = v4[5];
    v37 = v4[6];
    v40 = v4[7];
    v39 = v4[8];
    v41 = v4[9];
    v42 = *(v4 + 20);
    v43 = (v41 >> 28) & 3;
    if (v43)
    {
      if (v43 != 1)
      {
        v57 = *(v4 + 20);
        *a3 = MEMORY[0x1E69E7CC0];
        *(a3 + 8) = 0;
        *(a3 + 12) = 0;
        v51 = *(v4 + 7);
        *v67 = *(v4 + 5);
        *&v67[16] = v51;
        *&v67[28] = *(v4 + 68);
        v52 = *(v4 + 3);
        v65 = *v33;
        v66 = v52;
        v53 = v39;
        v54 = v40;
        v55 = v37;
        result = outlined destroy of _ShapeStyle_RenderedLayers.Layers(&v65);
        v4[1] = v32;
        v4[2] = v34;
        v4[3] = v35;
        v4[4] = v36;
        v4[5] = v38;
        v4[6] = v55;
        v4[7] = v54;
        v4[8] = v53;
        v4[9] = v41;
        *(v4 + 20) = v57;
        return result;
      }

      DisplayList.init(_:)(v44, &v59);
      v45 = *(a1 + 232);
      v46 = *(a1 + 192);
      v47 = *(a1 + 128);
      v65 = *(a1 + 112);
      v66 = v47;
      *&v67[8] = xmmword_18DDA6ED0;
      *&v67[24] = v59;
      *&v67[32] = WORD4(v59) | (HIDWORD(v59) << 32) | 0x40000000;
      *&v67[40] = v45;
      *v67 = v46;
      LOBYTE(v59) = v56;
      DisplayList.Item.canonicalize(options:)(&v59);
      v78 = *v67;
      *v79 = *&v67[16];
      *&v79[12] = *&v67[28];
      v76 = v65;
      v77 = v66;
      v73 = *v67;
      *v74 = *&v67[16];
      *&v74[12] = *&v67[28];
      v71 = v65;
      v72 = v66;
      outlined init with copy of DisplayList.Item(&v76, &v59);
      DisplayList.init(_:)(&v71, a3);
      v61 = *v67;
      *v62 = *&v67[16];
      *&v62[12] = *&v67[28];
      v59 = v65;
      v60 = v66;
      outlined destroy of DisplayList.Item(&v59);
      v48 = *(v4 + 7);
      *v67 = *(v4 + 5);
      *&v67[16] = v48;
      *&v67[28] = *(v4 + 68);
    }

    else
    {
      *&v65 = v4[1];
      *(&v65 + 1) = v34;
      *&v66 = v35;
      *(&v66 + 1) = v36;
      *v67 = v38;
      *&v67[8] = v37;
      *&v67[16] = v40;
      *&v67[24] = v39;
      *&v67[32] = v41 & 0xFFFFFFFFCFFFFFFFLL;
      *&v67[40] = v42;
      *&v59 = v32;
      *(&v59 + 1) = v34;
      *&v60 = v35;
      *(&v60 + 1) = v36;
      *&v61 = v38;
      *(&v61 + 1) = v37;
      *v62 = v40;
      *&v62[8] = v39;
      *&v62[16] = v41 & 0xFFFFFFFFCFFFFFFFLL;
      *&v62[24] = v42;
      outlined init with copy of DisplayList.Item(&v59, &v76);
      DisplayList.init(_:)(&v65, a3);
      v49 = *(v4 + 7);
      *v67 = *(v4 + 5);
      *&v67[16] = v49;
      *&v67[28] = *(v4 + 68);
    }

    v50 = *(v4 + 3);
    v65 = *v33;
    v66 = v50;
    result = outlined destroy of _ShapeStyle_RenderedLayers.Layers(&v65);
    *v33 = 0u;
    *(v4 + 3) = 0u;
    *(v4 + 5) = 0u;
    *(v4 + 7) = 0u;
    v4[9] = 0x20000000;
    *(v4 + 20) = 0;
    return result;
  }

  v7 = *(v6 + 56);
  v8 = v7;
  swift_beginAccess();
  v9 = *(v6 + 24);
  if (*(v9 + 16) <= v7)
  {
LABEL_12:
    *(v6 + 56) = 0;
    goto LABEL_13;
  }

  while (1)
  {
    *(v6 + 56) = v7 + 1;
    swift_beginAccess();
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 24) = v9;
    if (result)
    {
      if (v7 < 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      v9 = result;
      if (v7 < 0)
      {
LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    if (*(v9 + 16) <= v8)
    {
      break;
    }

    v17 = v9 + 232 * v8;
    *(v17 + 260) = 1;
    *(v6 + 24) = v9;
    swift_endAccess();
    v18 = *(v17 + 52);
    v19 = *(v17 + 56);
    v20 = *(v17 + 72);
    v21 = *(v17 + 104);
    *v67 = *(v17 + 88);
    *&v67[16] = v21;
    v65 = v19;
    v66 = v20;
    v22 = *(v17 + 120);
    v23 = *(v17 + 152);
    v24 = *(v17 + 168);
    v68 = *(v17 + 136);
    v69 = v23;
    *&v67[32] = v22;
    v25 = *(a1 + 16);
    v71 = *a1;
    v72 = v25;
    *(v75 + 12) = *(a1 + 92);
    v26 = *(a1 + 48);
    v27 = *(a1 + 80);
    *&v74[16] = *(a1 + 64);
    v75[0] = v27;
    v28 = *(a1 + 48);
    v29 = *a1;
    v30 = *(a1 + 16);
    v73 = *(a1 + 32);
    *v74 = v28;
    v70 = v24;
    v76 = v29;
    v77 = v30;
    *(v80 + 12) = *(a1 + 92);
    v31 = *(a1 + 80);
    *&v79[16] = *&v74[16];
    v80[0] = v31;
    v78 = v73;
    *v79 = v26;
    *(a1 + 96) = 0;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 104) = -1610612736;
    swift_retain_n();
    outlined init with copy of _ShapeStyle_Pack.Style?(&v65, &v59, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
    outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v71, &v59);
    outlined destroy of _ShapeStyle_RenderedShape.Shape(&v76);

    *(a1 + 144) = v6;
    *(a1 + 152) = v18;
    if (v70)
    {
      *&v62[16] = *&v67[32];
      *v63 = v68;
      *&v63[16] = v69;
      v59 = v65;
      v60 = v66;
      v61 = *v67;
      *v62 = *&v67[16];
      v64 = v70;
      _ShapeStyle_RenderedShape.render(style:)(&v59);
    }

    _ShapeStyle_RenderedLayers.endLayer(shape:)(a1);

    outlined destroy of _ShapeStyle_Pack.Style?(&v65, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);

    v10 = *(a1 + 80);
    *&v62[16] = *(a1 + 64);
    *v63 = v10;
    *&v63[12] = *(a1 + 92);
    v11 = *(a1 + 16);
    v59 = *a1;
    v60 = v11;
    v12 = *(a1 + 48);
    v61 = *(a1 + 32);
    *v62 = v12;
    outlined destroy of _ShapeStyle_RenderedShape.Shape(&v59);
    v13 = v75[0];
    *(a1 + 64) = *&v74[16];
    *(a1 + 80) = v13;
    *(a1 + 92) = *(v75 + 12);
    v14 = v72;
    *a1 = v71;
    *(a1 + 16) = v14;
    v15 = *v74;
    *(a1 + 32) = v73;
    *(a1 + 48) = v15;
    v7 = *(v6 + 56);
    v8 = v7;
    swift_beginAccess();
    v9 = *(v6 + 24);
    if (*(v9 + 16) <= v7)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t DisplayList.ViewUpdater.Model.State.hasDODEffects.getter()
{
  if (*(v0[10] + 16) | v0[12])
  {
    v3 = 1;
  }

  else
  {
    v1 = v0[11];
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = 0;
      for (i = (v1 + 32); ; i += 8)
      {
        v5 = i[5];
        v16 = i[4];
        v17 = v5;
        v18[0] = i[6];
        *(v18 + 12) = *(i + 108);
        v6 = i[1];
        v12 = *i;
        v13 = v6;
        v7 = i[3];
        v14 = i[2];
        v15 = v7;
        if ((v3 & 1) == 0)
        {
          v10[4] = v16;
          v10[5] = v17;
          v11[0] = v18[0];
          *(v11 + 12) = *(v18 + 12);
          v10[0] = v12;
          v10[1] = v13;
          v10[2] = v14;
          v10[3] = v15;
          v8 = _s7SwiftUI14GraphicsFilterOWOg(v10);
          if (v8 > 2)
          {
            if (v8 != 3 && v8 != 4 && v8 != 21)
            {
              goto LABEL_15;
            }
          }

          else
          {
            if (v8 < 2)
            {
              v3 = *(_s7SwiftUI14GraphicsFilterOWOj6_(v10) + 8) ^ 1;
              goto LABEL_6;
            }

            if (v8 != 2)
            {
LABEL_15:
              v3 = 0;
              goto LABEL_6;
            }
          }

          _s7SwiftUI14GraphicsFilterOWOj6_(v10);
        }

        v3 = 1;
LABEL_6:
        if (!--v2)
        {
          return v3 & 1;
        }
      }
    }

    v3 = 0;
  }

  return v3 & 1;
}

void ShapeType.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  if (v7 <= 1)
  {
    if (*(a1 + 32))
    {
      if (v7 != 1)
      {
        goto LABEL_21;
      }

      Width = CGRectGetWidth(*a1);
      v25.origin.x = v3;
      v25.origin.y = v4;
      v25.size.width = v6;
      v25.size.height = v5;
      if (Width != CGRectGetHeight(v25))
      {
LABEL_22:
        *&v23[0] = 1;
        memset(v23 + 8, 0, 72);
        goto LABEL_23;
      }

      v26.origin.x = v3;
      v26.origin.y = v4;
      v26.size.width = v6;
      v26.size.height = v5;
      *v23 = v3;
      *(v23 + 1) = v4;
      *&v23[1] = v6;
      *(&v23[1] + 1) = v5;
      *&v23[2] = CGRectGetWidth(v26) * 0.5;
    }

    else
    {
      v23[0] = *a1;
      v23[1] = *(a1 + 16);
      *&v23[2] = 0;
    }

    BYTE8(v23[2]) = 0;
    v24 = 0;
    goto LABEL_35;
  }

  if (v7 == 2)
  {
    v10 = *(*&v3 + 16);
    v11 = *(*&v3 + 24);
    v12 = *(*&v3 + 32);
    v13 = *(*&v3 + 40);
    v15 = *(*&v3 + 48);
    v14 = *(*&v3 + 56);
    v16 = *(*&v3 + 64);
    if (v15 == v14 || vabdd_f64(v15, v14) < 0.001)
    {
      v27 = *(*&v3 + 16);
      v18 = CGRectGetWidth(v27);
      v28.origin.x = v10;
      v28.origin.y = v11;
      v28.size.width = v12;
      v28.size.height = v13;
      Height = CGRectGetHeight(v28);
      if (Height >= v18)
      {
        Height = v18;
      }

      v20 = Height * 0.5;
      *v23 = v10;
      *(v23 + 1) = v11;
      if (v20 >= v15)
      {
        v20 = v15;
      }

      *&v23[1] = v12;
      *(&v23[1] + 1) = v13;
      *&v23[2] = v20;
      BYTE8(v23[2]) = v16;
      v24 = 0;
      v21 = a1;
      goto LABEL_34;
    }

LABEL_21:
    outlined destroy of Path(a1);
    goto LABEL_22;
  }

  if (v7 != 5)
  {
    if (v7 == 6 && (*&v4 | *&v3 | *&v6 | *&v5) == 0)
    {
      memset(v23, 0, sizeof(v23));
LABEL_23:
      v24 = 3;
LABEL_35:
      *(a2 + 32) = v23[2];
      *(a2 + 48) = v23[3];
      *(a2 + 64) = v23[4];
      *(a2 + 80) = v24;
      *a2 = v23[0];
      *(a2 + 16) = v23[1];
      return;
    }

    goto LABEL_21;
  }

  *&v23[0] = 1;
  memset(v23 + 8, 0, 72);
  v24 = 3;
  if (*(*&v3 + 16))
  {
    v22 = a1;
    if (*(*&v3 + 16) != 1 && one-time initialization token for bufferCallbacks != -1)
    {
      swift_once();
    }

    goto LABEL_33;
  }

  if (*(*&v3 + 24))
  {
    v22 = a1;
LABEL_33:
    RBPathApplyShape();
    v21 = v22;
LABEL_34:
    outlined destroy of Path(v21);
    goto LABEL_35;
  }

  __break(1u);
}

uint64_t PaintType.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v53 = a3;
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v51 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v51 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = *(v4 + 16);
  v25 = v24;
  v22(&v51 - v23, v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v34 = v25;
    (v22)(v19, v25, a2);
    if (swift_dynamicCast())
    {
      result = (*(v4 + 8))(v25, a2);
      v29 = 0;
      LODWORD(v31) = v60;
      v30 = DWORD1(v60);
      LODWORD(v33) = DWORD2(v60);
      v32 = HIDWORD(v60);
      LODWORD(v25) = v61;
      goto LABEL_28;
    }

    (v22)(v16, v25, a2);
    if (swift_dynamicCast())
    {
      v58 = v60;
      *v59 = v61;
      *&v59[16] = v62[0];
      *&v59[25] = *(v62 + 9);
      v35 = v60;
      v54 = v60;
      v55 = BYTE8(v60);
      v56 = HIDWORD(v60);
      v57 = v61;
      v31 = ResolvedGradient.constantColor.getter();
      v33 = v36;
      v25 = v37;
      result = (*(v4 + 8))(v34, a2);
      if ((v25 & 0x100000000) == 0)
      {
        result = outlined destroy of LinearGradient._Paint(&v58);
        v29 = 0;
        v32 = HIDWORD(v33);
        v30 = HIDWORD(v31);
        goto LABEL_28;
      }

      LODWORD(v33) = DWORD2(v58);
      v32 = HIDWORD(v58);
      LODWORD(v25) = *v59;
      v27 = *&v59[8];
      v28 = *&v59[24];
      v40 = v59[40];
      v41 = 32;
LABEL_27:
      v29 = v41 & 0xFC | v40 & 3;
      v30 = HIDWORD(v35);
      LODWORD(v31) = v35;
      goto LABEL_28;
    }

    (v22)(v13, v25, a2);
    if (swift_dynamicCast())
    {
      v58 = v60;
      *v59 = v61;
      *&v59[16] = v62[0];
      *&v59[25] = *(v62 + 9);
      v35 = v60;
      v54 = v60;
      v55 = BYTE8(v60);
      v56 = HIDWORD(v60);
      v57 = v61;
      v31 = ResolvedGradient.constantColor.getter();
      v33 = v38;
      v25 = v39;
      result = (*(v4 + 8))(v34, a2);
      if ((v25 & 0x100000000) != 0)
      {
        LODWORD(v33) = DWORD2(v58);
        v32 = HIDWORD(v58);
        LODWORD(v25) = *v59;
        v27 = *&v59[8];
        v28 = *&v59[24];
        v40 = v59[40];
        v41 = 64;
        goto LABEL_27;
      }
    }

    else
    {
      (v22)(v10, v25, a2);
      if (swift_dynamicCast())
      {
        v58 = v60;
        *v59 = v61;
        *&v59[16] = v62[0];
        *&v59[25] = *(v62 + 9);
        v35 = v60;
        v54 = v60;
        v55 = BYTE8(v60);
        v56 = HIDWORD(v60);
        v57 = v61;
        v31 = ResolvedGradient.constantColor.getter();
        v33 = v42;
        v25 = v43;
        result = (*(v4 + 8))(v34, a2);
        if ((v25 & 0x100000000) != 0)
        {
          LODWORD(v33) = DWORD2(v58);
          v32 = HIDWORD(v58);
          LODWORD(v25) = *v59;
          v27 = *&v59[8];
          v28 = *&v59[24];
          v40 = v59[40];
          v41 = 96;
          goto LABEL_27;
        }
      }

      else
      {
        (v22)(v52, v25, a2);
        if (swift_dynamicCast())
        {
          v58 = v60;
          *v59 = v61;
          *&v59[16] = v62[0];
          *&v59[25] = *(v62 + 9);
          v35 = v60;
          v54 = v60;
          v55 = BYTE8(v60);
          v56 = HIDWORD(v60);
          v57 = v61;
          v31 = ResolvedGradient.constantColor.getter();
          v33 = v44;
          v25 = v45;
          result = (*(v4 + 8))(v34, a2);
          if ((v25 & 0x100000000) != 0)
          {
            LODWORD(v33) = DWORD2(v58);
            v32 = HIDWORD(v58);
            LODWORD(v25) = *v59;
            v27 = *&v59[8];
            v28 = *&v59[24];
            v40 = v59[40];
            v41 = 0x80;
            goto LABEL_27;
          }

          v46 = HIDWORD(v31);
          v47 = HIDWORD(v33);
          result = outlined destroy of EllipticalGradient._Paint(&v58);
LABEL_23:
          v29 = 0;
          v32 = v47;
          v30 = v46;
          goto LABEL_28;
        }

        (v22)(v51, v25, a2);
        if ((swift_dynamicCast() & 1) == 0)
        {
          result = (*(v4 + 8))(v25, a2);
          LODWORD(v25) = 0;
          LODWORD(v33) = 0;
          v32 = 0;
          LODWORD(v31) = 0;
          v30 = 0;
          v27 = 0uLL;
          v28 = 0uLL;
          v29 = -64;
          goto LABEL_28;
        }

        v58 = v60;
        *v59 = v61;
        *&v59[16] = v62[0];
        *&v59[25] = *(v62 + 9);
        v35 = v60;
        v54 = v60;
        v55 = BYTE8(v60);
        v56 = HIDWORD(v60);
        v57 = v61;
        v31 = ResolvedGradient.constantColor.getter();
        v33 = v48;
        v25 = v49;
        result = (*(v4 + 8))(v34, a2);
        if ((v25 & 0x100000000) != 0)
        {
          LODWORD(v33) = DWORD2(v58);
          v32 = HIDWORD(v58);
          LODWORD(v25) = *v59;
          v27 = *&v59[8];
          v28 = *&v59[24];
          v40 = v59[40];
          v41 = -96;
          goto LABEL_27;
        }
      }
    }

    v46 = HIDWORD(v31);
    v47 = HIDWORD(v33);
    result = outlined destroy of LinearGradient._Paint(&v58);
    goto LABEL_23;
  }

  result = (*(v4 + 8))(v25, a2);
  v29 = 0;
  LODWORD(v31) = v60;
  v30 = DWORD1(v60);
  LODWORD(v25) = 2143289344;
  LODWORD(v33) = DWORD2(v60);
  v32 = HIDWORD(v60);
LABEL_28:
  v50 = v53;
  *v53 = v31 | (v30 << 32);
  v50[1] = v33 | (v32 << 32);
  v50[2] = v25;
  *(v50 + 3) = v27;
  *(v50 + 5) = v28;
  *(v50 + 56) = v29;
  return result;
}

uint64_t initializeWithCopy for PaintType(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  outlined copy of PaintType(*a2, v4, v5, v6, v7, v8, v9, v10);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  return a1;
}

uint64_t contentLayerType(_:_:mayClip:)(__int128 *a1, _OWORD *a2, char a3)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[4];
  v6 = v4;
  v20 = a1[3];
  v21 = v5;
  v7 = a1[1];
  v17 = *a1;
  v18 = v7;
  v19 = v4;
  *&v24[9] = *(a2 + 41);
  v8 = a2[1];
  *v24 = a2[2];
  v9 = a2[1];
  v23[0] = *a2;
  v23[1] = v9;
  *(v26 + 9) = *(a2 + 41);
  v10 = a2[2];
  v25[1] = v8;
  v26[0] = v10;
  v25[0] = v23[0];
  v26[2] = v17;
  v26[3] = v3;
  v11 = a1[4];
  v26[5] = v20;
  v26[6] = v11;
  v22 = *(a1 + 80);
  v27 = *(a1 + 80);
  v26[4] = v6;
  if (v22 > 1u)
  {
    if (v22 == 2)
    {
      if (v24[24] >= 0x20u)
      {
        outlined copy of Path.Storage(v17, *(&v17 + 1), v18, *(&v18 + 1), v19.u8[0]);

        goto LABEL_17;
      }
    }

    else
    {
      v15 = vorrq_s8(v19, v20);
      if (!(v17 | *&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL)) | v21 | *(&v21 + 1) | *(&v17 + 1) | v18 | *(&v18 + 1)))
      {
        goto LABEL_16;
      }

      if (v24[24] >= 0x20u)
      {
        goto LABEL_17;
      }
    }

    outlined init with copy of ShapeType(&v17, v16);
    outlined destroy of (ShapeType, ShapeType)(v25, &lazy cache variable for type metadata for (PaintType, ShapeType));
    return type metadata accessor for ColorShapeLayer();
  }

  if (v22)
  {
    if (v24[24] > 0x1Fu)
    {
      goto LABEL_17;
    }

LABEL_16:
    outlined init with copy of PaintType(v23, v16);
    outlined destroy of (ShapeType, ShapeType)(v25, &lazy cache variable for type metadata for (PaintType, ShapeType));
    return type metadata accessor for CAMediaTimingFunction(0, lazy cache variable for type metadata for CALayer);
  }

  v12 = v24[24] >> 5;
  if ((v12 - 1) >= 5)
  {
    if (!v12)
    {
      goto LABEL_16;
    }

LABEL_17:
    outlined init with copy of PaintType(v23, v16);
    outlined destroy of (ShapeType, ShapeType)(v25, &lazy cache variable for type metadata for (PaintType, ShapeType));
    return type metadata accessor for PaintShapeLayer();
  }

  outlined init with copy of PaintType(v23, v16);
  outlined destroy of (ShapeType, ShapeType)(v25, &lazy cache variable for type metadata for (PaintType, ShapeType));
  if (a3)
  {
    return type metadata accessor for GradientLayer();
  }

  else
  {
    return type metadata accessor for UnclippedGradientLayer();
  }
}

uint64_t outlined copy of PaintType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if ((a8 >> 5) - 1 <= 4)
  {
  }

  return result;
}

uint64_t outlined destroy of (ShapeType, ShapeType)(uint64_t a1, unint64_t *a2)
{
  type metadata accessor for (Path, FillStyle)(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t initializeWithCopy for Path(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of Path.Storage(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t initializeWithCopy for DisplayList.ViewUpdater.Model.Clip(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of Path.Storage(*a2, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 89) = *(a2 + 89);
  return a1;
}

uint64_t DisplayList.ViewUpdater.Model.State.addClip(_:style:)(uint64_t a1, __int16 a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a2 & 0x100;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(v2 + 32);
  v12 = *(v2 + 48);
  if ((*(v2 + 40) != 0.0 || *&v12 != 0.0) && (*&v11 != 0.0 || *(&v12 + 1) != 0.0))
  {
    v66 = *(v2 + 48);
    v67 = *(v2 + 32);
    v62 = *(a1 + 24);
    v63 = *(a1 + 32);
    v64 = *(a1 + 16);
    v65 = *a1;
    v24 = *(v2 + 64);
    v23 = *(v2 + 72);
    v27 = *(a1 + 16);
    *&v73.a = *a1;
    *&v73.c = v27;
    LOBYTE(v73.tx) = *(a1 + 32);
    v25 = &v73;
    v26 = v69;
    goto LABEL_15;
  }

  v13 = *(a1 + 16);
  v76.origin = *a1;
  v76.size = v13;
  v77 = *(a1 + 32);
  if (v77 > 1u)
  {
    if (v77 != 2)
    {
      if (v77 == 6 && !(*&v76.origin.y | *&v76.origin.x | *&v13.width | *&v13.height))
      {
        type metadata accessor for MutableBox<ResolvedShadowStyle>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.ViewUpdater.Model.Clip>, &type metadata for DisplayList.ViewUpdater.Model.Clip, MEMORY[0x1E69E6F90]);
        v2 = swift_allocObject();
        *(v2 + 16) = xmmword_18DDA6EB0;
        LOBYTE(v73.a) = 1;
        *(v2 + 32) = v6;
        *(v2 + 40) = v7;
        *(v2 + 48) = v8;
        *(v2 + 56) = v9;
        *(v2 + 64) = v10;
        *(v2 + 72) = 0u;
        *(v2 + 88) = 0u;
        *(v2 + 104) = 0u;
        *(v2 + 120) = 1;
        *(v2 + 121) = v4 & 1;
        *(v2 + 122) = HIBYTE(v5);

LABEL_35:
        *(v3 + 10) = v2;
        return result;
      }

LABEL_13:
      v66 = v12;
      v67 = v11;
      v62 = v9;
      v63 = v10;
      v64 = v8;
      v65 = v6;
      v24 = *(v2 + 64);
      v23 = *(v2 + 72);
      v25 = &v76;
      v26 = &v73;
LABEL_15:
      outlined init with copy of Path.Storage(v25, v26);
      LOBYTE(v28) = 0;
LABEL_31:
      HIBYTE(v10) = HIBYTE(v5);
      v2 = *(v3 + 10);
      result = swift_isUniquelyReferenced_nonNull_native();
      LOBYTE(v5) = v4;
      if ((result & 1) == 0)
      {
LABEL_42:
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 16) + 1, 1, v2);
        v2 = result;
      }

      v49 = *(v2 + 16);
      v48 = *(v2 + 24);
      v51 = v66;
      v50 = v67;
      if (v49 >= v48 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v2);
        v51 = v66;
        v50 = v67;
        v2 = result;
      }

      LOBYTE(v70) = v28;
      *(v2 + 16) = v49 + 1;
      v52 = v2 + 96 * v49;
      *(v52 + 32) = v65;
      *(v52 + 40) = v7;
      *(v52 + 48) = v64;
      *(v52 + 56) = v62;
      *(v52 + 64) = v63;
      v53 = *&v69[3];
      *(v52 + 65) = *v69;
      *(v52 + 68) = v53;
      *(v52 + 88) = v51;
      *(v52 + 72) = v50;
      *(v52 + 104) = v24;
      *(v52 + 112) = v23;
      *(v52 + 120) = v70;
      *(v52 + 121) = v5 & 1;
      *(v52 + 122) = HIBYTE(v10);
      goto LABEL_35;
    }

    v84 = *(*&v76.origin.x + 16);
    v33 = *(*&v76.origin.x + 48);
    v34 = *(*&v76.origin.x + 56);
    v2 = *(*&v76.origin.x + 64);
    v35 = v3[8];
    v36 = v3[9];
    v66 = v12;
    v67 = v11;
    *&v73.a = v11;
    *&v73.c = v12;
    v73.tx = v35;
    v73.ty = v36;
    v85 = CGRectApplyAffineTransform(v84, &v73);
    x = v85.origin.x;
    y = v85.origin.y;
    width = v85.size.width;
    height = v85.size.height;
    if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v34 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      *&v73.a = v67;
      *&v73.c = v66;
      v73.tx = v35;
      v73.ty = v36;
      v80.width = v33;
      v80.height = v34;
      v41 = CGSizeApplyAffineTransform(v80, &v73);
      v33 = copysign(v41.width, v33);
      v34 = copysign(v41.height, v34);
    }

    v19 = swift_allocObject();
    v7 = 0;
    v20 = 0;
    v21 = 0;
    *(v19 + 16) = x;
    *(v19 + 24) = y;
    *(v19 + 32) = width;
    *(v19 + 40) = height;
    *(v19 + 48) = v33;
    *(v19 + 56) = v34;
    v22 = 2;
    *(v19 + 64) = v2;
  }

  else
  {
    if (v77)
    {
      if (v77 == 1)
      {
        *&v73.a = v11;
        *&v73.c = v12;
        *&v73.tx = *(v2 + 64);
        v81 = CGRectApplyAffineTransform(v76, &v73);
        v14 = v81.origin.x;
        v15 = v81.origin.y;
        v16 = v81.size.width;
        v17 = v81.size.height;
        if (!CGRectIsNull(v81))
        {
          v82.origin.x = v14;
          v82.origin.y = v15;
          v82.size.width = v16;
          v82.size.height = v17;
          IsInfinite = CGRectIsInfinite(v82);
          v19 = *&v14;
          v7 = *&v15;
          v20 = *&v16;
          v21 = *&v17;
          v22 = !IsInfinite;
          goto LABEL_23;
        }

        goto LABEL_17;
      }

      goto LABEL_13;
    }

    *&v73.a = v11;
    *&v73.c = v12;
    *&v73.tx = *(v2 + 64);
    v83 = CGRectApplyAffineTransform(v76, &v73);
    v29 = v83.origin.x;
    v30 = v83.origin.y;
    v31 = v83.size.width;
    v32 = v83.size.height;
    if (CGRectIsNull(v83))
    {
LABEL_17:
      v19 = 0;
      v7 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 6;
      goto LABEL_23;
    }

    v22 = 0;
    v19 = *&v29;
    v7 = *&v30;
    v20 = *&v31;
    v21 = *&v32;
  }

LABEL_23:
  v64 = v20;
  v65 = v19;
  v78[0] = v19;
  v78[1] = v7;
  v78[2] = v20;
  v78[3] = v21;
  v62 = v21;
  v63 = v22;
  v79 = v22;
  v42 = *(v3 + 10);
  v28 = *(v42 + 2);
  if (!v28)
  {
LABEL_30:
    v24 = 0;
    v23 = 0;
    v66 = 0u;
    v67 = 0u;
    LOBYTE(v28) = 1;
    goto LABEL_31;
  }

  v24 = 0;
  v23 = 64;
  while (1)
  {
    if (v24 >= *(v42 + 2))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v42[v23 + 56])
    {
      break;
    }

LABEL_25:
    ++v24;
    v23 += 96;
    if (v28 == v24)
    {
      goto LABEL_30;
    }
  }

  v44 = *&v42[v23 + 16];
  v43 = *&v42[v23 + 32];
  v45 = *&v42[v23 + 43];
  *&v73.tx = *&v42[v23];
  v46 = *&v42[v23 - 16];
  *&v73.a = *&v42[v23 - 32];
  *&v73.c = v46;
  *(v75 + 11) = v45;
  v74 = v44;
  v75[0] = v43;
  v70 = *&v73.a;
  v71 = v46;
  tx_low = LOBYTE(v73.tx);
  outlined init with copy of DisplayList.ViewUpdater.Model.Clip(&v73, v69);
  v2 = &v70;
  if ((Path.intersectRoundedRects(_:)(v78) & 1) == 0)
  {
    outlined consume of Path.Storage(v70, *(&v70 + 1), v71, *(&v71 + 1), tx_low);
    goto LABEL_25;
  }

  v54 = v70;
  v61 = v71;
  v68 = tx_low;
  outlined copy of Path.Storage(v70, *(&v70 + 1), v71, *(&v71 + 1), tx_low);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v42 = specialized _ArrayBuffer._consumeAndCreateNew()(v42);
  }

  outlined consume of Path.Storage(v65, v7, v64, v62, v63);
  result = outlined consume of Path.Storage(v54, *(&v54 + 1), v61, *(&v61 + 1), v68);
  if (v24 >= *(v42 + 2))
  {
    __break(1u);
  }

  else
  {
    v55 = &v42[v23];
    v56 = *&v42[v23 - 32];
    v57 = *&v42[v23 - 24];
    v58 = *&v42[v23 - 16];
    v59 = *&v42[v23 - 8];
    *(v55 - 2) = v54;
    *(v55 - 1) = v61;
    v60 = v42[v23];
    *v55 = v68;
    result = outlined consume of Path.Storage(v56, v57, v58, v59, v60);
    *(v3 + 10) = v42;
  }

  return result;
}