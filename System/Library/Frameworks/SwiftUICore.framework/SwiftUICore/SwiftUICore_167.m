void (*ColorView.animatableData.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v9 = *v1;
  v5 = v1[1].i32[0];
  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v6 = v9;
  }

  else
  {
    ResolvedGradient.ColorSpace.convertIn(_:)(&v10, v9.f32[0], v9.u32[1], v9.f32[2], v9.f32[3]);
    v6 = v10;
  }

  v7.i64[0] = 0x4300000043000000;
  v7.i64[1] = 0x4300000043000000;
  v4[2] = vmulq_f32(v6, v7);
  v4[3].i32[0] = v5;
  return ColorView.animatableData.modify;
}

void ColorView.animatableData.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 36);
  v2 = *(*a1 + 40);
  v5 = *(*a1 + 44);
  v4 = *(*a1 + 48);
  v6.i32[0] = *(*a1 + 32);
  *(v6.i64 + 4) = __PAIR64__(v2, v3);
  v6.i32[3] = v5;
  v7 = v4;
  Color.ResolvedHDR.animatableData.setter(&v6);

  free(v1);
}

__n128 protocol witness for RendererLeafView.content() in conformance ColorView@<Q0>(uint64_t *a1@<X8>)
{
  v3 = v1[1].n128_u32[0];
  v4 = v1[1].n128_u8[5];
  v5 = swift_allocObject();
  result = *v1;
  *(v5 + 16) = *v1;
  *(v5 + 32) = v3;
  *(v5 + 36) = 1;
  *(v5 + 37) = v4;
  *a1 = v5 | 0x1000000000000000;
  return result;
}

float protocol witness for Animatable.animatableData.setter in conformance ColorView(float32x4_t *a1)
{
  v1 = a1[1].i32[0];
  v3 = *a1;
  v4 = v1;
  Color.ResolvedHDR.animatableData.setter(&v3);
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance ColorView(uint64_t **a1))(void *a1)
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
  v2[4] = ColorView.animatableData.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint;
}

void type metadata accessor for (Float, Float, Float, Float)()
{
  if (!lazy cache variable for type metadata for (Float, Float, Float, Float))
  {
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (Float, Float, Float, Float));
    }
  }
}

unint64_t protocol witness for static View._makeView(view:inputs:) in conformance ColorView@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v10 = *(a2 + 32);
  v11 = v5;
  v12 = *(a2 + 64);
  v13 = *(a2 + 80);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v14[0] = v9[0];
  v14[1] = v6;
  v14[2] = v10;
  v8 = v4;
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA9ColorViewV_Tt1B5(&v8, v14);
  return _s7SwiftUI16RendererLeafViewPAAE04makedE04view6inputsAA01_E7OutputsVAA11_GraphValueVyxG_AA01_E6InputsVtFZAA05ColorE0V_Tt2B5(v8, v9, a3);
}

BOOL specialized static ColorView.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  if ((vminv_u16(vmovn_s32(vceqq_f32(*a1, *a2))) & 1) == 0)
  {
    return 0;
  }

  v3 = a1[1].u8[4];
  v4 = a1[1].u8[5];
  v5 = a1[1].f32[0];
  result = 0;
  if (v5 == a2[1].f32[0] && ((v3 ^ a2[1].u8[4]) & 1) == 0)
  {
    return v4 == a2[1].u8[5];
  }

  return result;
}

__n128 __swift_memcpy22_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for ColorView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 22) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 22) = 0;
    }

    if (a2)
    {
      *(result + 20) = a2 + 1;
    }
  }

  return result;
}

uint64_t Text.storedAccessibilityLabel.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = (a4 + 16 * v4 + 24);
  while (1)
  {
    v6 = *v5;
    v5 -= 16;
    if ((v6 & 0xE0) == 0xC0)
    {
      type metadata accessor for AccessibilityTextModifier();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        if (*(v7 + 48))
        {
          break;
        }
      }
    }

    if (!--v4)
    {
      return 0;
    }
  }

  v8 = *(v7 + 24);
  outlined copy of Text.Storage(v8, *(v7 + 32), *(v7 + 40) & 1);

  return v8;
}

BOOL AccessibilityTextStorage.hasResolvableAttributes.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (*(v0 + 32))
  {
    v2 = v1;
  }

  else
  {
    v3 = *(v0 + 24);
    v4 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

    v5 = MEMORY[0x193ABEC20](v1, v3);
    outlined consume of AccessibilityText.Storage(v1, v3, 0);
    v2 = [v4 initWithString_];
  }

  v6 = NSAttributedString.isDynamic.getter();

  return v6;
}

uint64_t AccessibilityText.init(_:environment:idiom:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a5;
  v12 = a5[1];
  aBlock = *a5;
  v28 = v12;
  v34 = 129;
  v33[0] = *a6;
  v13 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)(&aBlock, 1, &v34, v33, a1, a2, a3 & 1, a4);
  if (v13)
  {
    v14 = v13;
    v25 = a2;
    LOBYTE(v34) = 0;
    memset(v33, 0, sizeof(v33));
    v15 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

    v16 = v15;
    v26 = [v16 length];
    v17 = swift_allocObject();
    *(v17 + 16) = v11;
    *(v17 + 24) = v12;
    *(v17 + 32) = &v34;
    *(v17 + 40) = v33;
    *(v17 + 48) = v16;
    *(v17 + 56) = 3;
    v18 = swift_allocObject();
    *(v18 + 16) = partial apply for closure #1 in static AccessibilityCore.resolveAttributedTextAttributes(in:environment:options:);
    *(v18 + 24) = v17;
    v31 = _sSDySo21NSAttributedStringKeyaypGSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIggyy_AceIIeggyy_TRTA_0;
    v32 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v30 = &block_descriptor_29;
    v19 = _Block_copy(&aBlock);

    v20 = v16;

    [v20 enumerateAttributesInRange:0 options:v26 usingBlock:{0, v19}];
    _Block_release(v19);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v23 = [v20 length];

      v24 = [v20 attributedSubstringFromRange_];

      outlined consume of Text.Storage(a1, v25, a3 & 1);

      *a7 = v24;
      *(a7 + 8) = 0;
      *(a7 + 16) = 1;
    }
  }

  else
  {
    outlined consume of Text.Storage(a1, a2, a3 & 1);

    *a7 = 0;
    *(a7 + 8) = 0;
    *(a7 + 16) = 255;
  }

  return result;
}

uint64_t AccessibilityText.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSAttributedString);
  v5 = [v4 isKindOfClass_];
  swift_unknownObjectRelease();
  if (v5)
  {
    outlined init with take of Any(a1, v12);
    result = swift_dynamicCast();
    v7 = 0;
    v8 = v10;
    v9 = v13;
LABEL_5:
    *a2 = v8;
    *(a2 + 8) = v7;
    *(a2 + 16) = v5;
    *(a2 + 17) = v9;
    return result;
  }

  outlined init with copy of Any(a1, v12);
  if (swift_dynamicCast())
  {
    v8 = v10;
    v7 = v11;
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    v9 = 0;
    goto LABEL_5;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t AccessibilityText.text.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  type metadata accessor for AccessibilityTextStorage();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  *(v5 + 32) = v3;
  *(v5 + 33) = v4;
  outlined copy of AccessibilityText.Storage(v1, v2, v3);
  return v5;
}

uint64_t AccessibilityText.init(texts:environment:optional:idiom:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  v5 = a1;
  v47 = *a2;
  v48 = a2[1];
  v46 = *a4;
  v6 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  v7 = *(a1 + 16);
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = 0;
  v9 = a1 + 56;
  v42 = a1 + 56;
  do
  {
    v10 = (v9 + 32 * v8);
    v11 = v8;
    while (1)
    {
      if (v11 >= *(v5 + 16))
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v12 = *(v10 - 3);
      v13 = *(v10 - 2);
      v14 = *(v10 - 8);
      v15 = *v10;
      v8 = v11 + 1;
      aBlock = v47;
      v50 = v48;
      v56 = 129;
      v55[0] = v46;

      outlined copy of Text.Storage(v12, v13, v14);
      v16 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)(&aBlock, 1, &v56, v55, v12, v13, v14, v15);
      if (v16)
      {
        break;
      }

      outlined consume of Text.Storage(v12, v13, v14);

      v10 += 4;
      ++v11;
      if (v7 == v8)
      {
        goto LABEL_12;
      }
    }

    LOBYTE(v56) = 0;
    memset(v55, 0, sizeof(v55));
    v17 = v16;
    v18 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

    v19 = v18;
    v41 = [v19 length];
    v20 = swift_allocObject();
    *(v20 + 16) = v47;
    *(v20 + 24) = v48;
    *(v20 + 32) = &v56;
    *(v20 + 40) = v55;
    *(v20 + 48) = v19;
    *(v20 + 56) = 3;
    v21 = swift_allocObject();
    *(v21 + 16) = closure #1 in static AccessibilityCore.resolveAttributedTextAttributes(in:environment:options:)partial apply;
    *(v21 + 24) = v20;
    v53 = thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
    v54 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v52 = &block_descriptor_14_0;
    v40 = _Block_copy(&aBlock);
    v39 = v54;
    v22 = v19;

    [v22 enumerateAttributesInRange:0 options:v41 usingBlock:{0, v40}];
    _Block_release(v40);
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    if (v41)
    {
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      return result;
    }

    v24 = [v22 length];

    v25 = [v22 attributedSubstringFromRange_];

    outlined consume of Text.Storage(v12, v13, v14);

    MEMORY[0x193ABF170](v26);
    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v6 = v57;
    v9 = v42;
    v5 = a1;
  }

  while (v7 - 1 != v11);
LABEL_12:
  v10 = (v6 >> 62);
  if (v6 >> 62)
  {
LABEL_71:
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_72;
    }

LABEL_14:
    v27 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
    if (!v10)
    {
      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      goto LABEL_60;
    }

    if (!__CocoaSet.count.getter())
    {
LABEL_60:

      if (a3)
      {
        v37 = 257;
      }

      else
      {
        v37 = 1;
      }

      v38 = a5;
      *a5 = v27;
      a5[1] = 0;
      goto LABEL_73;
    }

    while (1)
    {
LABEL_16:
      v28 = v6 & 0x8000000000000000;
      v29 = v6 >> 62;
      if (v6 >> 62)
      {
        if (v28)
        {
          v10 = v6;
        }

        else
        {
          v10 = (v6 & 0xFFFFFFFFFFFFFF8);
        }

        result = __CocoaSet.count.getter();
        if (!result)
        {
          goto LABEL_75;
        }

        result = __CocoaSet.count.getter();
        if (!result)
        {
          goto LABEL_76;
        }
      }

      else if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_65;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x193AC03C0](0, v6);
      }

      else
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v30 = *(v6 + 32);
      }

      v31 = v30;
      if (v29)
      {
        if (v28)
        {
          v10 = v6;
        }

        else
        {
          v10 = (v6 & 0xFFFFFFFFFFFFFF8);
        }

        if (!__CocoaSet.count.getter())
        {
          goto LABEL_69;
        }

        if (__CocoaSet.count.getter() < 1)
        {
          goto LABEL_70;
        }

        v32 = __CocoaSet.count.getter();
      }

      else
      {
        v32 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v32)
        {
          goto LABEL_69;
        }
      }

      v10 = (v32 - 1);
      if (__OFSUB__(v32, 1))
      {
        goto LABEL_67;
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v29)
      {
        goto LABEL_36;
      }

      v33 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v10 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_37;
      }

LABEL_38:

      if (v6 >> 62)
      {
        result = __CocoaSet.count.getter();
        if (__OFSUB__(result, 1))
        {
          goto LABEL_77;
        }

        memmove((v33 + 32), (v33 + 40), 8 * (result - 1));
        v34 = __CocoaSet.count.getter();
      }

      else
      {
        v34 = *(v33 + 16);
        memmove((v33 + 32), (v33 + 40), 8 * v34 - 8);
      }

      v10 = &selRef_addEffect_;
      if (__OFSUB__(v34, 1))
      {
        goto LABEL_68;
      }

      *(v33 + 16) = v34 - 1;
      if ([v31 length] >= 1)
      {
        if ([v27 length] >= 1)
        {
          v35 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v36 = MEMORY[0x193ABEC20](8236, 0xE200000000000000);
          v10 = [v35 initWithString_];

          [v27 appendAttributedString_];
        }

        [v27 appendAttributedString_];
      }

      if (v6 >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
          goto LABEL_60;
        }
      }

      else if (!*(v33 + 16))
      {
        goto LABEL_60;
      }
    }

    if (v29)
    {
LABEL_36:
      __CocoaSet.count.getter();
    }

LABEL_37:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v33 = v6 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_38;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_72:

  v38 = a5;
  *a5 = 0;
  a5[1] = 0;
  v37 = 255;
LABEL_73:
  *(v38 + 8) = v37;
  return result;
}

uint64_t AccessibilityImageLabel.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = a3 & 1;
  if (a4)
  {
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  if (a4)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  *a5 = v6;
  a5[1] = v7;
  if (!a4)
  {
    v5 = 0x1FFFFFFFELL;
  }

  a5[2] = v5;
  a5[3] = a4;
  return result;
}

uint64_t key path setter for _GraphInputs.textAccessibilityProvider : _GraphInputs(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE025TextAccessibilityProviderF033_96A6D9E0D6EA43C386EBC45EDA3A548BLLV_Tt2g5(a2, v3, v4);
}

uint64_t _GraphInputs.textAccessibilityProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE025TextAccessibilityProviderF033_96A6D9E0D6EA43C386EBC45EDA3A548BLLV_Tt2g5(v2, a1, a2);
}

uint64_t (*_GraphInputs.textAccessibilityProvider.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE025TextAccessibilityProviderF033_96A6D9E0D6EA43C386EBC45EDA3A548BLLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.textAccessibilityProvider.modify;
}

double protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.TextAccessibilityProviderKey@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static _GraphInputs.TextAccessibilityProviderKey.defaultValue;
  *a1 = static _GraphInputs.TextAccessibilityProviderKey.defaultValue;
  return result;
}

uint64_t (*_ViewInputs.textAccessibilityProvider.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE025TextAccessibilityProviderF033_96A6D9E0D6EA43C386EBC45EDA3A548BLLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.textAccessibilityProvider.modify;
}

void _GraphInputs.textAccessibilityProvider.modify(uint64_t **a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE025TextAccessibilityProviderF033_96A6D9E0D6EA43C386EBC45EDA3A548BLLV_Tt2g5(v1[4], v3, v2);

  free(v1);
}

id AccessibilityText.storage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return outlined copy of AccessibilityText.Storage(v2, v3, v4);
}

void AccessibilityText.storage.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  outlined consume of AccessibilityText.Storage(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
}

__n128 AccessibilityText.init(storage:optional:)@<Q0>(__n128 *a1@<X0>, unsigned __int8 a2@<W1>, __n128 *a3@<X8>)
{
  v3 = a1[1].n128_u8[0];
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u8[0] = v3;
  a3[1].n128_u8[1] = a2;
  return result;
}

__n128 AccessibilityTextStorage.__allocating_init(_:)(__n128 *a1)
{
  v2 = swift_allocObject();
  v3 = a1[1].n128_u8[0];
  v4 = a1[1].n128_u8[1];
  result = *a1;
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 33) = v4;
  return result;
}

id AccessibilityText.attributedString.getter()
{
  v1 = *v0;
  if (*(v0 + 16))
  {

    return v1;
  }

  else
  {
    v3 = *(v0 + 8);
    v7 = *v0;
    v4 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

    v5 = MEMORY[0x193ABEC20](v7, v3);
    outlined consume of AccessibilityText.Storage(v7, v3, 0);
    v6 = [v4 initWithString_];

    return v6;
  }
}

BOOL AccessibilityText.isEmpty.getter()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    return [v1 length] < 1;
  }

  v3 = *(v0 + 8);
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  return v4 == 0;
}

id AccessibilityTextStorage.base.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 33);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  return outlined copy of AccessibilityText.Storage(v3, v4, v5);
}

void AccessibilityTextStorage.base.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 33) = v5;
  outlined consume of AccessibilityText.Storage(v6, v7, v8);
}

uint64_t AccessibilityTextStorage.init(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 33) = v3;
  return v1;
}

void AccessibilityTextStorage.resolve<A>(into:in:with:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *a3;
  swift_beginAccess();
  v11 = *(v5 + 16);
  if (*(v5 + 32))
  {
    v12 = v11;
  }

  else
  {
    v13 = *(v5 + 24);
    v14 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

    v15 = MEMORY[0x193ABEC20](v11, v13);
    outlined consume of AccessibilityText.Storage(v11, v13, 0);
    v12 = [v14 initWithString_];
  }

  v17[0] = v8;
  v17[1] = v9;
  v16 = v10;
  ResolvedTextContainer.append(_:in:with:)(v12, v17, &v16, a4, a5);
}

BOOL AccessibilityTextStorage.resolvesToEmpty(in:with:)()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (*(v0 + 32))
  {
    return [v1 length] < 1;
  }

  v3 = *(v0 + 24);
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  return v4 == 0;
}

uint64_t AccessibilityTextStorage.isEqual(to:)()
{
  v1 = v0;
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    swift_beginAccess();
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    if (*(v3 + 33))
    {
      v7 = 256;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7 | v6;
    outlined copy of AccessibilityText.Storage(v4, v5, v6);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v8 = 255;
  }

  swift_beginAccess();
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v12 = *(v1 + 33);
  if (v8 == 0xFF)
  {
    v13 = *(v1 + 16);
    v14 = v10;
    outlined copy of AccessibilityText.Storage(v9, v10, v11);
    outlined consume of AccessibilityText?(v4, v5, 255);
    outlined consume of AccessibilityText?(v13, v14, v11);
    v15 = 0;
  }

  else
  {
    v21 = v4;
    v22 = v5;
    v23 = v8 & 1;
    v18 = v9;
    v19 = v10;
    v20 = v11;
    outlined copy of AccessibilityText.Storage(v9, v10, v11);
    outlined copy of AccessibilityText?(v4, v5, v8);
    outlined copy of AccessibilityText.Storage(v4, v5, v8 & 1);
    v16 = specialized static AccessibilityText.Storage.== infix(_:_:)(&v21, &v18);
    outlined consume of AccessibilityText.Storage(v18, v19, v20);
    outlined consume of AccessibilityText.Storage(v21, v22, v23);
    v15 = v16 & (v12 ^ ((v8 & 0x100) == 0));
    outlined consume of AccessibilityText.Storage(v4, v5, v8 & 1);
    outlined consume of AccessibilityText?(v4, v5, v8);
  }

  return v15 & 1;
}

uint64_t AccessibilityTextStorage.__deallocating_deinit()
{
  outlined consume of AccessibilityText.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

void AccessibilityText.encode(to:)()
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v8 = *(v0 + 8);
  v9 = *(v0 + 17);
  if (*(v0 + 16))
  {
    specialized ProtobufEncoder.messageField<A>(_:_:)(2, v7);
    outlined consume of AccessibilityText.Storage(v7, v8, 1);
    if (v1)
    {
      return;
    }
  }

  else
  {
    if (v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = v8 == 0xE000000000000000;
    }

    if (!v10)
    {
      v11 = v4;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        ProtobufEncoder.encodeVarint(_:)(0xAuLL);
        static String.Encoding.utf8.getter();
        v16 = String.data(using:allowLossyConversion:)();
        v13 = v12;
        outlined consume of AccessibilityText.Storage(v7, v8, 0);
        (*(v3 + 8))(v6, v11);
        if (v13 >> 60 == 15)
        {
          lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
          swift_allocError();
          swift_willThrow();
          return;
        }

        v14 = v16;
        specialized Data._Representation.withUnsafeBytes<A>(_:)(v16, v13);
        outlined consume of Data?(v14, v13);
      }
    }
  }

  if (v9)
  {
    ProtobufEncoder.encodeVarint(_:)(0x18uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }
}

uint64_t protocol witness for Encodable.encode(to:) in conformance AccessibilityText(void *a1)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return specialized CodableByProtobuf.encode(to:)(a1, *v1, *(v1 + 8), v2 | *(v1 + 16));
}

void CodableAccessibilityVersionStorage<>.init(texts:in:optional:idiom:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, unint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  if (!a1)
  {

    goto LABEL_97;
  }

  v9 = *a4;
  v113 = a4[1];
  if (one-time initialization token for current != -1)
  {
    goto LABEL_93;
  }

LABEL_3:
  if (static CodableAccessibilityVersion.current)
  {
    *&v140 = v7;
    *(&v140 + 1) = v8;
    *&v121 = v9;
    *(&v121 + 1) = v113;
    AccessibilityText.init(texts:environment:optional:idiom:)(a1, &v140, a3 & 1, &v121, &v149);
    if (v150 != 0xFF)
    {
      v10 = v150 & 0x101;
      *a5 = v149;
      *(a5 + 16) = v10;
      *(a5 + 18) = (v10 | 0x10000u) >> 16;
      return;
    }

    goto LABEL_97;
  }

  v111 = v8;
  v112 = v7;
  v109 = a5;
  v8 = 0;
  a5 = MEMORY[0x1E69E7CC0];
  *&v121 = MEMORY[0x1E69E7CC0];
  v114 = *(a1 + 16);
  v110 = a1 + 32;
LABEL_8:
  v11 = 32 * v8;
  while (v114 != v8)
  {
    if (v8 >= *(a1 + 16))
    {
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      v105 = a1;
      v106 = v7;
      v107 = v8;
      v108 = a3;
      swift_once();
      v7 = v106;
      a1 = v105;
      a3 = v108;
      v8 = v107;
      goto LABEL_3;
    }

    v12 = a1 + v11;
    v13 = *(a1 + v11 + 56);
    ++v8;
    v14 = a1;
    v15 = v11 + 32;
    v16 = *(v12 + 48);
    v18 = *(v12 + 32);
    v17 = *(v12 + 40);
    *&v149 = v112;
    *(&v149 + 1) = v111;
    v120[0] = 2;
    *&v140 = v9;
    *(&v140 + 1) = v113;

    outlined copy of Text.Storage(v18, v17, v16);
    v19 = static AccessibilityCore.textResolvedToAttributedText(_:in:options:idiom:)(v18, v17, v16, v13, &v149, v120, &v140);
    outlined consume of Text.Storage(v18, v17, v16);

    v11 = v15;
    a1 = v14;
    if (v19)
    {
      MEMORY[0x193ABF170](v7);
      if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v7 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      a5 = v121;
      goto LABEL_8;
    }
  }

  v20 = a5 >> 62;
  if (!(a5 >> 62))
  {
    if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

LABEL_96:

    a5 = v109;
LABEL_97:
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 18) = -1;
    *(a5 + 16) = 0;
    return;
  }

LABEL_95:
  if (!__CocoaSet.count.getter())
  {
    goto LABEL_96;
  }

LABEL_17:
  v7 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v21 = v7;
  if (!v20)
  {
    if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
LABEL_58:

    v31 = v21;
    if (v114)
    {
      v20 = 0;
      v32 = *(a1 + 16);
      while (1)
      {
        if (v20 == v32)
        {
          __break(1u);
          goto LABEL_95;
        }

        v33 = a1;
        v34 = *(v110 + 32 * v20 + 24);
        v9 = *(v34 + 16);
        if (v9)
        {
          break;
        }

LABEL_60:
        ++v20;
        a1 = v33;
        if (v20 == v114)
        {
          goto LABEL_68;
        }
      }

      v35 = (v34 + 40);
      v36 = v35;
      while (1)
      {
        v37 = *v36;
        v36 += 16;
        if ((v37 & 0xE0) == 0xC0)
        {
          a5 = *(v35 - 1);
          type metadata accessor for CollapsibleTextModifier();
          if (swift_dynamicCastClass())
          {
            break;
          }
        }

        v35 = v36;
        if (!--v9)
        {
          goto LABEL_60;
        }
      }

      v38 = 1;
    }

    else
    {
LABEL_68:
      v38 = 0;
    }

    if (v111)
    {

      _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA20TextLayoutPropertiesV0J033_641995D812913A47B866B20B88782376LLVG_Tt1g5(v112, &v149);
    }

    else
    {
      v140 = v112;

      TextLayoutProperties.init(from:)(&v140, &v149);
    }

    *&v145[16] = v155;
    v146 = v156;
    v147 = v157;
    v142 = v151;
    v143 = v152;
    v144 = v153;
    *v145 = v154;
    v140 = v149;
    v141 = v150;
    v39 = v158;
    v148 = v158 & 0xFD;
    if (BYTE1(v154) == 1 || BYTE8(v146) != 2)
    {
      type metadata accessor for ResolvedStyledText.TextLayoutManager();
      v40 = swift_allocObject();
      *(v40 + 416) = MEMORY[0x1E69E7CC0];
      *(v40 + 424) = 0u;
      *(v40 + 440) = 0u;
      *(v40 + 456) = 0u;
      *(v40 + 472) = 0u;
      *(v40 + 488) = 512;
      if ((BYTE8(v140) & 1) != 0 || v140 != 1)
      {
        v42 = NSAttributedString.replacingLineBreakModes(_:)(0);
      }

      else
      {
        v41 = v31;
        v42 = v31;
      }

      v43 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
      v44 = [objc_allocWithZone(type metadata accessor for ResolvedStyledText.TextLayoutManager.Delegate()) init];
      [v43 setDelegate_];
      [v43 setUsesFontLeading_];
      v45 = v42;
      v46 = v43;
      ResolvedStyledText.TextLayoutManager.LayoutManager.init(layoutManager:original:)(v46, v42, v138);
      v47 = v138[3];
      *(v40 + 528) = v138[2];
      *(v40 + 544) = v47;
      *(v40 + 560) = v138[4];
      v48 = v138[1];
      *(v40 + 496) = v138[0];
      *(v40 + 512) = v48;
      v49 = v141;
      v50 = v140;
      v51 = v141;
      *(v40 + 16) = v140;
      *(v40 + 32) = v49;
      v52 = *v145;
      v53 = v144;
      v54 = *v145;
      *(v40 + 80) = v144;
      *(v40 + 96) = v52;
      v55 = v143;
      v56 = v142;
      v57 = v143;
      *(v40 + 48) = v142;
      *(v40 + 64) = v55;
      v58 = v147;
      *(v40 + 128) = v146;
      *(v40 + 144) = v58;
      v59 = v146;
      v60 = *&v145[16];
      *(v40 + 112) = *&v145[16];
      *(v40 + 352) = 0u;
      *(v40 + 368) = 0u;
      *(v40 + 280) = 0u;
      *(v40 + 296) = 0u;
      *(v40 + 312) = 0u;
      *(v40 + 328) = 0u;
      *(v40 + 224) = 0u;
      *(v40 + 240) = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v127 = v60;
      v128 = v59;
      v129 = v147;
      *(v40 + 576) = v44;
      *(v40 + 384) = 0;
      *(v40 + 392) = 0x8000000000000000;
      *(v40 + 400) = 0;
      v61 = MEMORY[0x1E69E7CC0];
      *(v40 + 408) = MEMORY[0x1E69E7CC0];
      *(v40 + 200) = 0;
      *(v40 + 208) = 1;
      v139 = 1;
      *(v40 + 344) = 1;
      *(v40 + 216) = v42;
      *(v40 + 256) = 768;
      *(v40 + 258) = v38;
      *(v40 + 260) = 0;
      *(v40 + 264) = v61;
      *(v40 + 272) = v61;
      *(v40 + 160) = v148;
      v137 = 1;
      v131 = v145[24];
      v132 = v146;
      v130 = v148;
      v123 = v56;
      v124 = v57;
      v125 = v53;
      v126 = v54;
      v121 = v50;
      v122 = v51;
      outlined init with copy of TextLayoutProperties(&v140, v120);
      v62 = v45;
      outlined init with copy of TextLayoutProperties(&v140, v120);
      v63 = v44;
      Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v62, &v133, &v121);
      v65 = v64;
      v67 = v66;
      v69 = v68;
      v71 = v70;

      v72 = v136;
      *(v40 + 312) = v135;
      *(v40 + 328) = v72;
      *(v40 + 344) = v137;
      v73 = v134;
      *(v40 + 280) = v133;
      *(v40 + 296) = v73;
      *(v40 + 168) = v65;
      *(v40 + 176) = v67;
      *(v40 + 184) = v69;
      *(v40 + 192) = v71;
      swift_beginAccess();
      LODWORD(v44) = *(v40 + 97);

      v74 = _TextContainer(v44);
      [v74 setLineFragmentPadding_];
      [v46 setTextContainer_];

      outlined destroy of TextLayoutProperties(&v140);
    }

    else
    {
      type metadata accessor for ResolvedStyledText.StringDrawing();
      v40 = swift_allocObject();
      outlined init with copy of TextLayoutProperties(&v140, &v121);
      if ((v39 & 1) == 0)
      {
        NSAttributedString.isDynamic.getter();
      }

      v75 = *(&v144 + 1) == 0.0;
      *(v40 + 400) = v142;
      *(v40 + 408) = *&v145[8];
      v76 = v141;
      v77 = v140;
      v78 = v141;
      *(v40 + 16) = v140;
      *(v40 + 32) = v76;
      v79 = *v145;
      v80 = v144;
      v81 = *v145;
      *(v40 + 80) = v144;
      *(v40 + 96) = v79;
      v82 = v143;
      v83 = v142;
      v84 = v143;
      *(v40 + 48) = v142;
      *(v40 + 64) = v82;
      v85 = v147;
      *(v40 + 128) = v146;
      *(v40 + 144) = v85;
      v86 = v146;
      v87 = *&v145[16];
      *(v40 + 112) = *&v145[16];
      *(v40 + 280) = 0u;
      *(v40 + 296) = 0u;
      *(v40 + 312) = 0u;
      *(v40 + 328) = 0u;
      *(v40 + 224) = 0u;
      *(v40 + 240) = 0u;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v127 = v87;
      v128 = v86;
      v129 = v147;
      v88 = v140;
      v89 = BYTE8(v140);
      v90 = v141;
      v91 = BYTE8(v141);
      v92 = !v75;
      LOBYTE(v120[0]) = BYTE8(v141);
      *(v40 + 352) = 0;
      *(v40 + 360) = v31;
      *(v40 + 368) = v88;
      *(v40 + 376) = v89;
      *(v40 + 384) = v90;
      *(v40 + 392) = v91;
      *(v40 + 424) = v39 & 1;
      *(v40 + 425) = v92;
      *(v40 + 426) = v38;
      v93 = MEMORY[0x1E69E7CC0];
      *(v40 + 432) = MEMORY[0x1E69E7CC0];
      *(v40 + 200) = 0;
      *(v40 + 208) = 1;
      v131 = 1;
      *(v40 + 344) = 1;
      *(v40 + 216) = v31;
      *(v40 + 256) = 0;
      *(v40 + 257) = 3;
      *(v40 + 258) = v38;
      *(v40 + 260) = 0;
      *(v40 + 264) = v93;
      *(v40 + 272) = v93;
      *(v40 + 160) = v148;
      v119 = 1;
      LOBYTE(v138[0]) = v145[24];
      *(&v138[0] + 1) = v146;
      v130 = v148;
      v123 = v83;
      v124 = v84;
      v125 = v80;
      v126 = v81;
      v121 = v77;
      v122 = v78;
      v94 = v31;
      outlined init with copy of TextLayoutProperties(&v140, v120);
      Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v94, &v115, &v121);
      v96 = v95;
      v98 = v97;
      v100 = v99;
      v102 = v101;

      outlined destroy of TextLayoutProperties(&v140);
      v103 = v118;
      *(v40 + 312) = v117;
      *(v40 + 328) = v103;
      *(v40 + 344) = v119;
      v104 = v116;
      *(v40 + 280) = v115;
      *(v40 + 296) = v104;
      *(v40 + 168) = v96;
      *(v40 + 176) = v98;
      *(v40 + 184) = v100;
      *(v40 + 192) = v102;
    }

    *v109 = v40;
    *(v109 + 8) = 0;
    *(v109 + 18) = 0;
    *(v109 + 16) = 0;
    return;
  }

  while (1)
  {
LABEL_21:
    v8 = a5 >> 62;
    if (!(a5 >> 62))
    {
      if (!*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_87;
      }

      goto LABEL_23;
    }

    if (!__CocoaSet.count.getter())
    {
      break;
    }

    v7 = __CocoaSet.count.getter();
    if (!v7)
    {
      goto LABEL_99;
    }

LABEL_23:
    if ((a5 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x193AC03C0](0, a5);
    }

    else
    {
      if (!*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_88;
      }

      v22 = *(a5 + 32);
    }

    v23 = v22;
    if (v8)
    {
      v7 = __CocoaSet.count.getter();
      if (!v7)
      {
        goto LABEL_91;
      }

      v7 = __CocoaSet.count.getter();
      if (v7 < 1)
      {
        goto LABEL_92;
      }

      v7 = __CocoaSet.count.getter();
    }

    else
    {
      v7 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_91;
      }
    }

    v24 = v7 - 1;
    if (__OFSUB__(v7, 1))
    {
      goto LABEL_89;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v8)
      {
        v9 = a5 & 0xFFFFFFFFFFFFFF8;
        if (v24 <= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

LABEL_38:
      __CocoaSet.count.getter();
      goto LABEL_39;
    }

    if (v8)
    {
      goto LABEL_38;
    }

LABEL_39:
    a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v9 = a5 & 0xFFFFFFFFFFFFFF8;
LABEL_40:

    v8 = a5 >> 62;
    if (a5 >> 62)
    {
      v30 = __CocoaSet.count.getter();
      if (__OFSUB__(v30, 1))
      {
        goto LABEL_100;
      }

      memmove((v9 + 32), (v9 + 40), 8 * (v30 - 1));
      v7 = __CocoaSet.count.getter();
      v26 = v7 - 1;
      if (__OFSUB__(v7, 1))
      {
        goto LABEL_90;
      }
    }

    else
    {
      v25 = *(v9 + 16);
      v7 = memmove((v9 + 32), (v9 + 40), 8 * v25 - 8);
      v26 = v25 - 1;
      if (__OFSUB__(v25, 1))
      {
        goto LABEL_90;
      }
    }

    *(v9 + 16) = v26;
    if ([v23 length] >= 1)
    {
      if ([v21 length] >= 1)
      {
        v27 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v28 = MEMORY[0x193ABEC20](8236, 0xE200000000000000);
        v29 = [v27 initWithString_];

        [v21 appendAttributedString_];
      }

      [v21 appendAttributedString_];
    }

    if (v8)
    {
      v7 = __CocoaSet.count.getter();
      if (!v7)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v7 = *(v9 + 16);
      if (!v7)
      {
        goto LABEL_58;
      }
    }
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
}

uint64_t AccessibilityTextAttributes.label.getter()
{
  v1 = v0[1];
  outlined copy of Text?(v1, v0[2], v0[3], v0[4]);
  return v1;
}

uint64_t AccessibilityTextAttributes.label.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = outlined consume of Text?(v4[1], v4[2], v4[3], v4[4]);
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
  return result;
}

_BYTE *AccessibilityTextAttributes.init(contentType:headingLevel:durationTimeMMSS:label:)@<X0>(_BYTE *result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = *result;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 8) = a4;
  *(a8 + 16) = a5;
  *(a8 + 24) = a6;
  *(a8 + 32) = a7;
  return result;
}

uint64_t AccessibilityTextAttributes.combined(with:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 4);
  v8 = v2[1];
  v16 = *v2;
  v17 = v2[2];
  if (v7)
  {
    v10 = *(a1 + 2);
    v9 = *(a1 + 3);
    v11 = *(a1 + 1);
    outlined copy of Text.Storage(v11, v10, a1[24] & 1);
  }

  else
  {
    v9 = *(v2 + 3);
    v7 = *(v2 + 4);
    v11 = *(v2 + 1);
    v10 = *(v2 + 2);
    result = outlined copy of Text?(v11, v10, v9, v7);
  }

  if (v5 == 7)
  {
    v13 = v8;
  }

  else
  {
    v13 = v5;
  }

  v14 = v16;
  if (v4 != 8)
  {
    v14 = v4;
  }

  *a2 = v14;
  *(a2 + 1) = v13;
  v15 = v17;
  if (v6 != 2)
  {
    v15 = v6;
  }

  *(a2 + 2) = v15;
  *(a2 + 8) = v11;
  *(a2 + 16) = v10;
  *(a2 + 24) = v9;
  *(a2 + 32) = v7;
  return result;
}

uint64_t AccessibilityTextModifier.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 18);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 2) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return outlined copy of Text?(v3, v4, v5, v6);
}

__n128 AccessibilityTextModifier.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 2);
  *(v2 + 16) = *a1;
  *(v2 + 18) = v3;
  *(v2 + 24) = *(a1 + 8);
  result = *(a1 + 24);
  *(v2 + 40) = result;
  return result;
}

uint64_t AccessibilityTextModifier.init(_:)(uint64_t a1)
{
  v2 = *(a1 + 2);
  *(v1 + 16) = *a1;
  *(v1 + 18) = v2;
  *(v1 + 24) = *(a1 + 8);
  *(v1 + 40) = *(a1 + 24);
  return v1;
}

uint64_t AccessibilityImageLabel.init(_:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    result = String.init<A>(_:)();
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    result = 0;
    v5 = 0;
    v4 = 0x1FFFFFFFELL;
  }

  *a2 = result;
  a2[1] = a1;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

uint64_t AccessibilityImageLabel.SystemSymbolTextStorage.resolve<A>(into:in:with:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v8 = a2[1];
  v10 = *a3;
  if ((*a3 & 1) != 0 && (v11 = *(v5 + 16), v12 = *(v5 + 24), v23 = *a2, v24 = v8, , v13 = specialized static AccessibilityCore.description(for:in:)(v11, v12, &v23), v15 = v14, , v15))
  {
    v23 = v13;
    v24 = v15;
    v21 = v9;
    v22 = v8;
    v20 = v10;
    v16 = lazy protocol witness table accessor for type String and conformance String();
    ResolvedTextContainer.append<A>(_:in:with:)(&v23, &v21, &v20, a4, MEMORY[0x1E69E6158], a5, v16);
  }

  else
  {
    v18 = *(v5 + 24);
    v23 = *(v5 + 16);
    v24 = v18;
    v21 = v9;
    v22 = v8;
    v20 = v10;
    v19 = lazy protocol witness table accessor for type String and conformance String();
    return ResolvedTextContainer.append<A>(_:in:with:)(&v23, &v21, &v20, a4, MEMORY[0x1E69E6158], a5, v19);
  }
}

uint64_t specialized static AccessibilityText.Storage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject);
      outlined copy of AccessibilityText.Storage(v6, v5, 1);
      outlined copy of AccessibilityText.Storage(v3, v2, 1);
      v8 = static NSObject.== infix(_:_:)();
      outlined consume of AccessibilityText.Storage(v3, v2, 1);
      v9 = v6;
      v10 = v5;
      v11 = 1;
LABEL_11:
      outlined consume of AccessibilityText.Storage(v9, v10, v11);
      return v8 & 1;
    }

LABEL_5:
    outlined copy of AccessibilityText.Storage(*a2, *(a2 + 8), v7);
    outlined copy of AccessibilityText.Storage(v3, v2, v4);
    outlined consume of AccessibilityText.Storage(v3, v2, v4);
    outlined consume of AccessibilityText.Storage(v6, v5, v7);
    return 0;
  }

  if (*(a2 + 16))
  {
    goto LABEL_5;
  }

  v13 = *a1;
  if (v3 != v6 || v2 != v5)
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of AccessibilityText.Storage(v6, v5, 0);
    outlined copy of AccessibilityText.Storage(v3, v2, 0);
    outlined consume of AccessibilityText.Storage(v3, v2, 0);
    v9 = v6;
    v10 = v5;
    v11 = 0;
    goto LABEL_11;
  }

  outlined copy of AccessibilityText.Storage(v13, v2, 0);
  outlined copy of AccessibilityText.Storage(v3, v2, 0);
  outlined consume of AccessibilityText.Storage(v3, v2, 0);
  outlined consume of AccessibilityText.Storage(v3, v2, 0);
  return 1;
}

uint64_t specialized static AccessibilityText.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 17);
  v13 = *a1;
  v14 = v2;
  v15 = v3;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  outlined copy of AccessibilityText.Storage(v13, v2, v3);
  outlined copy of AccessibilityText.Storage(v5, v6, v7);
  LODWORD(v5) = specialized static AccessibilityText.Storage.== infix(_:_:)(&v13, &v10);
  outlined consume of AccessibilityText.Storage(v10, v11, v12);
  outlined consume of AccessibilityText.Storage(v13, v14, v15);
  return v5 & ~(v4 ^ v8) & 1;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityText(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AccessibilityText and conformance AccessibilityText();
  result = lazy protocol witness table accessor for type AccessibilityText and conformance AccessibilityText();
  *(a1 + 16) = result;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AccessibilityText(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of AccessibilityText.Storage(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t assignWithCopy for AccessibilityText(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of AccessibilityText.Storage(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of AccessibilityText.Storage(v7, v8, v9);
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t assignWithTake for AccessibilityText(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of AccessibilityText.Storage(v5, v6, v7);
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for AccessibilityText.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of AccessibilityText.Storage(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for AccessibilityText.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of AccessibilityText.Storage(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of AccessibilityText.Storage(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for AccessibilityText.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  outlined consume of AccessibilityText.Storage(v4, v5, v6);
  return a1;
}

uint64_t initializeWithCopy for AccessibilityTextAttributes(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a2 + 32);
  if (v3)
  {
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
    outlined copy of Text.Storage(v4, v5, v6);
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
    *(a1 + 32) = v3;
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
  }

  return a1;
}

uint64_t assignWithCopy for AccessibilityTextAttributes(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  v4 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (v4)
    {
      v5 = *(a2 + 8);
      v6 = *(a2 + 16);
      v7 = *(a2 + 24);
      outlined copy of Text.Storage(v5, v6, v7);
      v8 = *(a1 + 8);
      v9 = *(a1 + 16);
      v10 = *(a1 + 24);
      *(a1 + 8) = v5;
      *(a1 + 16) = v6;
      *(a1 + 24) = v7;
      outlined consume of Text.Storage(v8, v9, v10);
      *(a1 + 32) = *(a2 + 32);
    }

    else
    {
      outlined destroy of Text(a1 + 8);
      v14 = *(a2 + 24);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = v14;
    }
  }

  else if (v4)
  {
    v11 = *(a2 + 8);
    v12 = *(a2 + 16);
    v13 = *(a2 + 24);
    outlined copy of Text.Storage(v11, v12, v13);
    *(a1 + 8) = v11;
    *(a1 + 16) = v12;
    *(a1 + 24) = v13;
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    v15 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v15;
  }

  return a1;
}

uint64_t assignWithTake for AccessibilityTextAttributes(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  if (!*(a1 + 32))
  {
    *(a1 + 8) = *(a2 + 8);
    v8 = *(a2 + 24);
LABEL_6:
    *(a1 + 24) = v8;
    return a1;
  }

  v3 = *(a2 + 32);
  if (!v3)
  {
    outlined destroy of Text(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    v8 = *(a2 + 24);
    goto LABEL_6;
  }

  v4 = *(a2 + 24);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v4;
  outlined consume of Text.Storage(v5, v6, v7);
  *(a1 + 32) = v3;

  return a1;
}

uint64_t *assignWithCopy for AccessibilityImageLabel(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  outlined copy of AccessibilityImageLabel(*a2, v4, v5);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  outlined consume of AccessibilityImageLabel(v7, v8, v9);
  return a1;
}

uint64_t *assignWithTake for AccessibilityImageLabel(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 1) = v6;
  outlined consume of AccessibilityImageLabel(v3, v5, v4);
  return a1;
}

uint64_t static AnyInterfaceIdiom.~= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v7 = *v6;
  v8 = v6[1];
  (*(v9 + 16))(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v4);
  AnyInterfaceIdiom.init<A>(_:)(a3, v12);
  return (*(v8 + 16))(v12[0], v12[1], v7, v8) & 1;
}

uint64_t _AnchorTransformModifier.anchor.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t key path getter for _AnchorTransformModifier.transform : <A, B>_AnchorTransformModifier<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a2 + a3;
  v6 = *(a2 + a3 - 8);
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = *(v5 - 24);
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;
  *(v9 + 48) = v7;
  *a4 = partial apply for thunk for @escaping @callee_guaranteed (@inout B.PreferenceKey.Value, @guaranteed Anchor<A>) -> ();
  a4[1] = v9;
}

uint64_t key path setter for _AnchorTransformModifier.transform : <A, B>_AnchorTransformModifier<A, B>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v6 = *(a3 + a4 - 8);
  v8 = *a1;
  v7 = a1[1];
  v9 = swift_allocObject();
  *(v9 + 16) = *(v5 - 24);
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;
  *(v9 + 48) = v7;

  *(a2 + 8) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.PreferenceKey.Value, @in_guaranteed Transaction) -> (@out ());
  *(a2 + 16) = v9;
  return result;
}

uint64_t _AnchorTransformModifier.transform.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t _AnchorTransformModifier2.base.getter(uint64_t a1)
{

  return a1;
}

uint64_t _AnchorTransformModifier2.base.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

double static _AnchorTransformModifier2._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, int *, __int128 *)@<X2>, uint64_t a4@<X4>, ValueMetadata *a5@<X5>, uint64_t a6@<X6>, double *a7@<X8>)
{
  v12 = *a1;
  v13 = *(a2 + 48);
  v18[2] = *(a2 + 32);
  v18[3] = v13;
  v18[4] = *(a2 + 64);
  v19 = *(a2 + 80);
  v14 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v14;
  v17[1] = v12;
  type metadata accessor for _AnchorTransformModifier2();
  type metadata accessor for _GraphValue();
  v15 = type metadata accessor for _AnchorTransformModifier();
  _GraphValue.subscript.getter(partial apply for closure #1 in static _AnchorTransformModifier2._makeView(modifier:inputs:body:), v15, v17);
  return static _AnchorTransformModifier.makeView(modifier:inputs:animated:body:)(v17, v18, 0, a3, a4, a5, a6, a7);
}

uint64_t closure #1 in static _AnchorTransformModifier2._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v5[2] = type metadata accessor for _AnchorTransformModifier2();
  v6 = type metadata accessor for _AnchorTransformModifier();
  v2 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v5, v6, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v7;
}

unint64_t specialized AnchorTransform.description.getter()
{
  _StringGuts.grow(_:)(19);

  v0 = static PreferenceKey.readableName.getter();
  MEMORY[0x193ABEDD0](v0);

  return 0xD000000000000011;
}

double Material.Layer.SDFLayer.Contents.GlassKeyFillHighlight.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 24) = _Q0;
  *(a1 + 40) = 2143289344;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = xmmword_18DE19E50;
  *(a1 + 80) = _Q0;
  *(a1 + 96) = 2143289344;
  result = 3.14159265;
  *(a1 + 104) = xmmword_18DE19E60;
  *(a1 + 120) = xmmword_18DE19E50;
  return result;
}

void Material.Layer.SDFLayer.BackdropLayer.init()(uint64_t a1@<X8>)
{
  *a1 = 1065353216;
  *(a1 + 4) = 0;
  *(a1 + 6) = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t static Material.Layer.SDFLayer.glassDisplacement(inset:height:curvature:angle:maskInset:)@<X0>(unint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 32) = a4;
  *(result + 40) = a5;
  *(result + 48) = a6;
  *a1 = result | 0x5000000000000000;
  a1[1] = 0;
  return result;
}

double Material.Layer.SDFLayer.GroupLayer.init(_:blend:opacity:)@<D0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v4 = *a2;
  *a3 = *a1;
  *(a3 + 8) = v4;
  *(a3 + 16) = a4;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  result = 1.40444809e306;
  *(a3 + 44) = 0x7F8000003F800000;
  return result;
}

double static Material.Layer.Filter.variableBlur(radius:isOpaque:isDithered:maskLayerIndex:)@<D0>(char a1@<W0>, char a2@<W1>, unint64_t a3@<X2>, _OWORD *a4@<X8>, double a5@<D0>)
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v16 = 0x80000000;
  outlined destroy of VariableBlurStyle.Mask(v14);
  *&v17 = a5;
  BYTE8(v17) = a1;
  BYTE9(v17) = a2;
  v18 = a3;
  *(&v20 + 1) = 0;
  *&v22 = 0;
  *&v23[24] = 0x40000000;
  _s7SwiftUI14GraphicsFilterOWOi0_(&v17);
  v10 = v22;
  a4[4] = v21;
  a4[5] = v10;
  a4[6] = *v23;
  *(a4 + 108) = *&v23[12];
  v11 = v18;
  *a4 = v17;
  a4[1] = v11;
  result = *&v19;
  v13 = v20;
  a4[2] = v19;
  a4[3] = v13;
  return result;
}

uint64_t static Material.Layer.SDFLayer.group(type:layers:filters:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  *(v10 + 32) = v9;
  *(v10 + 40) = a2;
  *(v10 + 48) = a3;
  *a4 = v10 | 0x8000000000000000;
  a4[1] = 0;
}

uint64_t static Material.Layer.SDFLayer.shadow(inset:color:radius:offset:knockout:inverted:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t *a3@<X8>, double a4@<D0>, float a5@<S1>, float a6@<S2>, float a7@<S3>, float a8@<S4>, double a9@<D5>, double a10@<D6>, double a11@<D7>)
{
  result = swift_allocObject();
  *(result + 16) = a4;
  *(result + 24) = a5;
  *(result + 28) = a6;
  *(result + 32) = a7;
  *(result + 36) = a8;
  *(result + 40) = 2143289344;
  *(result + 48) = a9;
  *(result + 56) = a10;
  *(result + 64) = a11;
  *(result + 72) = a1;
  *(result + 73) = a2;
  *a3 = result | 0x3000000000000000;
  a3[1] = 0;
  return result;
}

double static Material.Layer.Filter.gaussianBlur(radius:isOpaque:isDithered:)@<D0>(char a1@<W0>, char a2@<W1>, _OWORD *a3@<X8>, double a4@<D0>)
{
  *v9 = a4;
  BYTE8(v9[0]) = a1;
  BYTE9(v9[0]) = a2;
  _s7SwiftUI14GraphicsFilterOWOi_(v9);
  v5 = v13;
  a3[4] = v12;
  a3[5] = v5;
  a3[6] = v14[0];
  *(a3 + 108) = *(v14 + 12);
  v6 = v9[1];
  *a3 = v9[0];
  a3[1] = v6;
  result = *&v10;
  v8 = v11;
  a3[2] = v10;
  a3[3] = v8;
  return result;
}

uint64_t Material.Layer.SDFLayer.mask(_:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = v6 | 0x9000000000000000;
  a2[1] = 0;
}

uint64_t static Material.Layer.SDFLayer.color(_:inset:)@<X0>(uint64_t *a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 28) = a3;
  *(result + 32) = a4;
  *(result + 36) = a5;
  *(result + 40) = 2143289344;
  *a1 = result;
  a1[1] = 0;
  return result;
}

uint64_t static Material.Layer.SDFLayer.innerStroke(inset:color:lineWidth:)@<X0>(uint64_t *a1@<X8>, double a2@<D0>, float a3@<S1>, float a4@<S2>, float a5@<S3>, float a6@<S4>, double a7@<D5>)
{
  v13 = a2 + a7 * -0.5;
  result = swift_allocObject();
  *(result + 16) = v13;
  *(result + 24) = a7;
  *(result + 32) = a3;
  *(result + 36) = a4;
  *(result + 40) = a5;
  *(result + 44) = a6;
  *(result + 48) = 2143289344;
  *a1 = result | 0x1000000000000000;
  a1[1] = 0;
  return result;
}

double static Material.Layer.SDFLayer.glassHighlight(color:height:angle:curvature:spread:amount:)@<D0>(uint64_t *a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>, uint64_t a10)
{
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = a2;
  *(v18 + 28) = a3;
  *(v18 + 32) = a4;
  *(v18 + 36) = a5;
  *(v18 + 40) = 2143289344;
  *(v18 + 48) = a6;
  *(v18 + 56) = a7;
  result = a9;
  *(v18 + 64) = a8;
  *(v18 + 72) = a9;
  *(v18 + 80) = a10;
  *(v18 + 88) = 0;
  *a1 = v18 | 0x6000000000000000;
  a1[1] = 0;
  return result;
}

__n128 protocol witness for MaterialProvider.resolveAdaptiveColor(_:in:) in conformance ExperimentalGlassMaterialProvider@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[5].n128_u8[5] = 0;
  return result;
}

__n128 MaterialProvider.resolveAdaptiveColor(_:in:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[5].n128_u8[5] = 0;
  return result;
}

uint64_t _s7SwiftUI16MaterialProviderPAAE21foregroundEnvironment_3foryAA0F6ValuesVz_AA0C0VtFAA017ExperimentalGlasscD0V_Tt1B5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  outlined copy of Material.ID(a2, a3);
  swift_retain_n();
  outlined copy of Material.ID(a2, a3);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018BackgroundMaterialF033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(a1, a2, a3 & 0xFFFFFFFF000000FFLL);

  outlined consume of Material.ID(a2, a3);
  if (a1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018BackgroundMaterialK033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v6, *a1);
  }

  return outlined consume of Material.ID(a2, a3);
}

double MaterialProvider.resolveBackgroundStyle(level:in:)@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 0;
  *(a1 + 84) = -256;
  return result;
}

double static Material.Layer.Filter.variableBlur(radius:isOpaque:isDithered:mask:)@<D0>(CGImageRef image@<X2>, char a2@<W0>, char a3@<W1>, _OWORD *a4@<X8>, double a5@<D0>)
{
  Width = CGImageGetWidth(image);
  *&v11 = CGImageGetHeight(image);
  v12 = image;
  outlined consume of GraphicsImage.Contents?(0, 0xFFu);
  LOBYTE(v20) = 1;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v19 = 0x80000000;
  outlined destroy of VariableBlurStyle.Mask(v17);
  *&v20 = a5;
  BYTE8(v20) = a2;
  BYTE9(v20) = a3;
  *v21 = image;
  *&v21[8] = xmmword_18DDAB500;
  *&v21[24] = Width;
  v22 = v11;
  v23 = 0uLL;
  *v24 = 1;
  memset(&v24[8], 0, 32);
  *&v24[40] = 65794;
  _s7SwiftUI14GraphicsFilterOWOi0_(&v20);
  v13 = *v24;
  a4[4] = v23;
  a4[5] = v13;
  a4[6] = *&v24[16];
  *(a4 + 108) = *&v24[28];
  v14 = *v21;
  *a4 = v20;
  a4[1] = v14;
  result = *&v21[16];
  v16 = v22;
  a4[2] = *&v21[16];
  a4[3] = v16;
  return result;
}

double static Material.Layer.Filter.averageColor.getter@<D0>(_OWORD *a1@<X8>)
{
  _s7SwiftUI14GraphicsFilterOWOi22_(v6);
  v2 = v10;
  a1[4] = v9;
  a1[5] = v2;
  a1[6] = v11[0];
  *(a1 + 108) = *(v11 + 12);
  v3 = v6[1];
  *a1 = v6[0];
  a1[1] = v3;
  result = *&v7;
  v5 = v8;
  a1[2] = v7;
  a1[3] = v5;
  return result;
}

double static Material.Layer.Filter.colorCurves(red:green:blue:alpha:)@<D0>(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  _s7SwiftUI14GraphicsFilterOWOi16_(&v10);
  v6 = v15;
  a1[4] = v14;
  a1[5] = v6;
  a1[6] = v16[0];
  *(a1 + 108) = *(v16 + 12);
  v7 = v11;
  *a1 = v10;
  a1[1] = v7;
  result = v12.n128_f64[0];
  v9 = v13;
  a1[2] = v12;
  a1[3] = v9;
  return result;
}

__n128 Material.Context.init(environment:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  a2[1].n128_u16[0] = 771;
  a2[1].n128_u64[1] = 0;
  a2[2].n128_u64[0] = 0;
  a2[2].n128_u8[8] = 1;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  a2[3].n128_u64[0] = 0;
  a2[4].n128_u8[8] = 1;
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t Material.provider.getter()
{
  if (*(v0 + 8) == 1)
  {
  }

  else
  {
    return 0;
  }
}

void *EnvironmentValues.backgroundMaterialProvider.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018BackgroundMaterialI033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5(v1, v12);

    v3 = v12[1];
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018BackgroundMaterialS033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(v1);
    if (!result)
    {
      return result;
    }

    v3 = result[10];
    v12[0] = result[9];
    outlined copy of Material?(v12[0], v3);
  }

  if (v3 == 0xFF)
  {
    return 0;
  }

  v5 = v12[0];
  v10 = v1;
  v11 = v2;
  v7 = v12[0];
  v8 = v3;
  v9 = HIDWORD(v3);
  v6 = EnvironmentValues.materialProvider(for:)(&v7);
  outlined consume of Material?(v5, v3);
  return v6;
}

void *EnvironmentValues.materialColorRenderingMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt1g5(v3, a1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0g5(*v1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 0;
    }

    *a1 = v5;
  }

  return result;
}

__n128 Material.StatefulContext.init(environment:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  a2[1].n128_u32[0] = 0;
  a2[1].n128_u8[4] = 1;
  a2[1].n128_u64[1] = 0;
  a2[2].n128_u64[0] = 0;
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t Material.ShapeMetrics.init(_:)@<X0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v40 = *(MEMORY[0x1E695F050] + 8);
    v41 = *MEMORY[0x1E695F050];
    v38 = *(MEMORY[0x1E695F050] + 24);
    v39 = *(MEMORY[0x1E695F050] + 16);
    v5 = v4 - 1;
    v6 = INFINITY;
    v7 = -INFINITY;
    v8 = 32;
    v9 = -INFINITY;
    v10 = -INFINITY;
    while (1)
    {
      v11 = *(v3 + v8 + 48);
      v13 = *(v3 + v8 + 16);
      v12 = *(v3 + v8 + 32);
      v43[0] = *(v3 + v8);
      v43[1] = v13;
      v43[2] = v12;
      v44 = v11;
      v14 = *v43;
      if (v12 <= 2u)
      {
        break;
      }

      if (v12 == 5)
      {
        if (*(*&v43[0] + 16))
        {
          if (*(*&v43[0] + 16) == 1)
          {
            outlined init with copy of PathSet.Element(v43, v42);
            RBPathGetBoundingRect();
          }

          else
          {
            outlined init with copy of PathSet.Element(v43, v42);
            MEMORY[0x193AC3640](*&v14 + 24);
          }

          width = v22;
          height = v23;
        }

        else
        {
          v26 = *(*&v43[0] + 24);
          if (!v26)
          {
            __break(1u);
LABEL_48:
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          v27 = v26;
          outlined init with copy of PathSet.Element(v43, v42);

          PathBoundingBox = CGPathGetPathBoundingBox(v27);
          x = PathBoundingBox.origin.x;
          y = PathBoundingBox.origin.y;
          width = PathBoundingBox.size.width;
          height = PathBoundingBox.size.height;

          outlined destroy of PathSet.Element(v43);
          v21 = y;
          v20 = x;
        }

        goto LABEL_20;
      }

      if (v12 != 6)
      {
        goto LABEL_48;
      }

      if (*(&v43[0] + 1) | *&v43[0] | v13 | *(&v13 + 1))
      {
        outlined init with copy of PathSet.Element(v43, v42);
        v21 = v40;
        v20 = v41;
        height = v38;
        width = v39;
LABEL_20:
        v30 = width;
        v31 = height;
        IsNull = CGRectIsNull(*&v20);
        outlined destroy of PathSet.Element(v43);
        if (IsNull)
        {
          goto LABEL_34;
        }

LABEL_21:
        v18 = fabs(width);
        v19 = fabs(height);
        goto LABEL_22;
      }

LABEL_34:
      if (!v5)
      {

        v35 = 0.0;
        if (v6 <= v10)
        {
          v36 = v6;
        }

        else
        {
          v36 = 0.0;
        }

        if (v6 <= v10)
        {
          v37 = v7;
        }

        else
        {
          v37 = 0.0;
        }

        if (v6 <= v10)
        {
          v35 = v10;
        }

        goto LABEL_46;
      }

      --v5;
      v8 += 56;
    }

    if (v12 >= 2u)
    {
      v46.origin.x = *(*&v43[0] + 16);
      v46.origin.y = *(*&v43[0] + 24);
      width = *(*&v43[0] + 32);
      height = *(*&v43[0] + 40);
      v46.size.width = width;
      v46.size.height = height;
      if (CGRectIsNull(v46))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    v15 = *(&v13 + 1);
    v16 = *&v13;
    v17 = *(v43 + 1);
    outlined init with copy of PathSet.Element(v43, v42);
    v45.origin.x = v14;
    v45.origin.y = v17;
    v45.size.width = v16;
    v45.size.height = v15;
    if (CGRectIsNull(v45))
    {
      goto LABEL_34;
    }

    v18 = fabs(v16);
    v19 = fabs(v15);
LABEL_22:
    if (v19 >= v18)
    {
      v33 = v18;
    }

    else
    {
      v33 = v19;
    }

    if (v18 <= v19)
    {
      v18 = v19;
    }

    if (v33 <= v18)
    {
      if (v33 < v6)
      {
        v6 = v33;
      }

      if (v10 < v18)
      {
        v10 = v18;
      }

      if (v9 < v33 * v18)
      {
        v7 = v33;
        v9 = v33 * v18;
      }
    }

    goto LABEL_34;
  }

  v36 = 0.0;
  v37 = 0.0;
  v35 = 0.0;
LABEL_46:
  *a2 = v36;
  a2[1] = v37;
  a2[2] = v35;
  return result;
}

void static Material.ForegroundStyle.color(_:)(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 12) = a5;
  *(a1 + 85) = 0;
}

uint64_t MaterialProviderBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 200) - 8) + 32))(v2 + *(*v2 + 216), a1);
  return v2;
}

uint64_t Material.provider<A>(ofType:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (v2[8] == 1)
  {
    return (*(**v2 + 160))(a1, a1);
  }

  v4 = *(*(a1 - 8) + 56);

  return v4(a2, 1, 1, a1);
}

void Material.ShapeMetrics.init()(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t Material.Context.environment.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Material.Context.environment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t Material.Context.shapeDimensions.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 24) = result;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3 & 1;
  return result;
}

__n128 Material.Context.shapeMetrics.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[4].n128_u64[0];
  v3 = v1[4].n128_u8[8];
  result = v1[3];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 Material.Context.shapeMetrics.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v2;
  v1[4].n128_u8[8] = v3;
  return result;
}

uint64_t Material.StatefulContext.environment.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Material.StatefulContext.environment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t Material.StatefulContext.backdropLuminance.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t Material.StatefulContext.materialTransaction.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Material.StatefulContext.contentTransaction.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

Swift::Int Material.Substrate.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t static Material.Layer.Filter.== infix(_:_:)(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v3 = a1[3];
  v37 = a1[4];
  v38 = v2;
  v4 = a1[5];
  v39[0] = a1[6];
  *(v39 + 12) = *(a1 + 108);
  v5 = a1[1];
  v34[0] = *a1;
  v34[1] = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v35 = a1[2];
  v36 = v6;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  v40[2] = a2[2];
  v40[3] = v11;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *a2;
  v40[0] = v9;
  v40[1] = v12;
  *(v43 + 12) = *(a2 + 108);
  v15 = a2[5];
  v43[0] = a2[6];
  v16 = a2[5];
  v17 = a2[3];
  v41 = a2[4];
  v42 = v16;
  v31 = v37;
  v32 = v4;
  v33[0] = a1[6];
  *(v33 + 12) = *(a1 + 108);
  v27 = v8;
  v28 = v7;
  v29 = v35;
  v30 = v3;
  v24 = v41;
  v25 = v15;
  v26[0] = a2[6];
  *(v26 + 12) = *(a2 + 108);
  v20 = v14;
  v21 = v10;
  v22 = v13;
  v23 = v17;
  outlined init with copy of GraphicsFilter(v34, v46);
  outlined init with copy of GraphicsFilter(v40, v46);
  v18 = specialized static GraphicsFilter.== infix(_:_:)(&v27, &v20);
  v44[4] = v24;
  v44[5] = v25;
  v45[0] = v26[0];
  *(v45 + 12) = *(v26 + 12);
  v44[0] = v20;
  v44[1] = v21;
  v44[2] = v22;
  v44[3] = v23;
  outlined destroy of GraphicsFilter(v44);
  v46[4] = v31;
  v46[5] = v32;
  v47[0] = v33[0];
  *(v47 + 12) = *(v33 + 12);
  v46[0] = v27;
  v46[1] = v28;
  v46[2] = v29;
  v46[3] = v30;
  outlined destroy of GraphicsFilter(v46);
  return v18 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Material.Layer.Filter(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v3 = a1[3];
  v37 = a1[4];
  v38 = v2;
  v4 = a1[5];
  v39[0] = a1[6];
  *(v39 + 12) = *(a1 + 108);
  v5 = a1[1];
  v34[0] = *a1;
  v34[1] = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v35 = a1[2];
  v36 = v6;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  v40[2] = a2[2];
  v40[3] = v11;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *a2;
  v40[0] = v9;
  v40[1] = v12;
  *(v43 + 12) = *(a2 + 108);
  v15 = a2[5];
  v43[0] = a2[6];
  v16 = a2[5];
  v17 = a2[3];
  v41 = a2[4];
  v42 = v16;
  v31 = v37;
  v32 = v4;
  v33[0] = a1[6];
  *(v33 + 12) = *(a1 + 108);
  v27 = v8;
  v28 = v7;
  v29 = v35;
  v30 = v3;
  v24 = v41;
  v25 = v15;
  v26[0] = a2[6];
  *(v26 + 12) = *(a2 + 108);
  v20 = v14;
  v21 = v10;
  v22 = v13;
  v23 = v17;
  outlined init with copy of GraphicsFilter(v34, v46);
  outlined init with copy of GraphicsFilter(v40, v46);
  v18 = specialized static GraphicsFilter.== infix(_:_:)(&v27, &v20);
  v44[4] = v24;
  v44[5] = v25;
  v45[0] = v26[0];
  *(v45 + 12) = *(v26 + 12);
  v44[0] = v20;
  v44[1] = v21;
  v44[2] = v22;
  v44[3] = v23;
  outlined destroy of GraphicsFilter(v44);
  v46[4] = v31;
  v46[5] = v32;
  v47[0] = v33[0];
  *(v47 + 12) = *(v33 + 12);
  v46[0] = v27;
  v46[1] = v28;
  v46[2] = v29;
  v46[3] = v30;
  outlined destroy of GraphicsFilter(v46);
  return v18 & 1;
}

unint64_t Material.Layer.blendMode.getter()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 48);
  if (v3)
  {
    v1 = 0;
  }

  return v1 | (v3 << 32);
}

uint64_t MaterialProvider.applyBackgroundStyle(to:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 107);
  if ((v4 & 8) != 0)
  {
    return 0;
  }

  *(a1 + 107) = v4 | 8;
  v7 = a1[6];
  v6 = a1[7];
  v85 = 1;
  v83 = 1;
  v8 = *(a1 + 105);
  v9 = *(a1 + 106);
  if (*(a1 + 24) > 2u)
  {
    *&v62 = v7;
    *(&v62 + 1) = v6;
    v63[0] = v8;
    v63[1] = v9;
    *&v63[8] = 0;
    *&v63[16] = 0;
    v63[24] = v85;
    memset(&v63[32], 0, 24);
    v63[56] = v83;

LABEL_10:
    outlined destroy of Material.Context(&v62);
LABEL_11:
    *(a1 + 107) = v4;
    return 1;
  }

  v11 = *a1;
  if (!*(a1 + 24))
  {
    *&v74 = v7;
    *(&v74 + 1) = v6;
    LOBYTE(v75) = v8;
    BYTE1(v75) = v9;
    *&v77 = 0;
    v76 = 0;
    v47 = v85;
    v50 = v8;
    BYTE8(v77) = v85;
    memset(v78, 0, 24);
    v44 = v83;
    v78[24] = v83;
    v72 = v77;
    v73[0] = 0uLL;
    *(v73 + 9) = *&v78[9];
    v70 = v74;
    v71 = v75;
    v14 = *(a3 + 48);

    outlined init with copy of Material.Context(&v74, v69);
    v14(&v62, v11, &v70, a2, a3);
    v81 = v72;
    v82[0] = v73[0];
    *(v82 + 9) = *(v73 + 9);
    v79 = v70;
    v80 = v71;
    outlined destroy of Material.Context(&v79);
    *&v56 = v7;
    *(&v56 + 1) = v6;
    LOBYTE(v57) = v50;
    BYTE1(v57) = v9;
    *(&v57 + 1) = 0;
    *&v58 = 0;
    BYTE8(v58) = v47;
    memset(v59, 0, 24);
    v59[24] = v44;
    outlined destroy of Material.Context(&v56);
    if (HIBYTE(*&v63[68]) <= 0xFEuLL)
    {
      if ((*&v63[64] | (*&v63[68] << 32)) >> 40)
      {
        outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
        a1[4] = 0;
      }

      else
      {
        v53 = v62;
        type metadata accessor for ColorBox<AdaptiveColorProvider>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider);
        v16 = swift_allocObject();
        *(v16 + 16) = v53;
        *(v16 + 32) = 2143289344;
        outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
        a1[4] = v16;
      }

      *(a1 + 40) = 0;
      goto LABEL_11;
    }

LABEL_17:
    result = 0;
    *(a1 + 107) = v4;
    return result;
  }

  if (*(a1 + 24) != 1)
  {
    *&v74 = v7;
    *(&v74 + 1) = v6;
    LOBYTE(v75) = v8;
    BYTE1(v75) = v9;
    *&v77 = 0;
    v76 = 0;
    v48 = v85;
    v51 = v8;
    BYTE8(v77) = v85;
    memset(v78, 0, 24);
    v45 = v83;
    v78[24] = v83;
    v72 = v77;
    v73[0] = 0uLL;
    *(v73 + 9) = *&v78[9];
    v70 = v74;
    v71 = v75;
    v17 = *(a3 + 48);

    outlined init with copy of Material.Context(&v74, v69);
    v17(&v62, v11, &v70, a2, a3);
    v81 = v72;
    v82[0] = v73[0];
    *(v82 + 9) = *(v73 + 9);
    v79 = v70;
    v80 = v71;
    outlined destroy of Material.Context(&v79);
    *&v56 = v7;
    *(&v56 + 1) = v6;
    LOBYTE(v57) = v51;
    BYTE1(v57) = v9;
    *(&v57 + 1) = 0;
    *&v58 = 0;
    BYTE8(v58) = v48;
    memset(v59, 0, 24);
    v59[24] = v45;
    outlined destroy of Material.Context(&v56);
    if (HIBYTE(*&v63[68]) <= 0xFEuLL)
    {
      if (!((*&v63[64] | (*&v63[68] << 32)) >> 41))
      {
        v54 = v62;
        type metadata accessor for ColorBox<AdaptiveColorProvider>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider);
        v19 = swift_allocObject();
        *(v19 + 16) = v54;
        *(v19 + 32) = 2143289344;
        outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
        a1[4] = v19;
        *(a1 + 40) = 3;
      }

      goto LABEL_11;
    }

    goto LABEL_17;
  }

  if (*a1)
  {
    *&v62 = v7;
    *(&v62 + 1) = v6;
    v63[0] = v8;
    v63[1] = v9;
    *&v63[8] = 0;
    *&v63[16] = 0;
    v63[24] = v85;
    memset(&v63[32], 0, 24);
    v63[56] = v83;

    v12 = &v62;
LABEL_7:
    outlined destroy of Material.Context(v12);
    goto LABEL_17;
  }

  v21 = a1[1];
  v20 = a1[2];

  if (v21 == v20)
  {
    v46 = v85;
    v49 = v83;
LABEL_22:
    *&v62 = v7;
    *(&v62 + 1) = v6;
    v63[0] = v8;
    v63[1] = v9;
    *&v63[2] = v86;
    *&v63[6] = v87;
    *&v63[8] = 0;
    *&v63[16] = 0;
    v63[24] = v46;
    *&v63[25] = *v84;
    *&v63[28] = *&v84[3];
    memset(&v63[32], 0, 24);
    v63[56] = v49;
    goto LABEL_10;
  }

  v22 = v20;
  if (v21 <= v20)
  {
    v23 = v20;
  }

  else
  {
    v23 = v21;
  }

  v42 = v23;
  v24 = v21;
  v40 = v21;
  v41 = v7;
  v52 = v8;
  v55 = v9;
  v39 = v22;
  while (v22 >= v21)
  {
    if (v42 == v24)
    {
      goto LABEL_41;
    }

    *&v74 = v7;
    *(&v74 + 1) = v6;
    LOBYTE(v75) = v8;
    BYTE1(v75) = v9;
    *(&v75 + 2) = v86;
    HIWORD(v75) = v87;
    v76 = 0;
    *&v77 = 0;
    v46 = v85;
    BYTE8(v77) = v85;
    *(&v77 + 9) = *v84;
    HIDWORD(v77) = *&v84[3];
    memset(v78, 0, 24);
    v49 = v83;
    v78[24] = v83;
    v58 = v77;
    *v59 = 0uLL;
    *&v59[9] = *&v78[9];
    v56 = v74;
    v57 = v75;
    v30 = *(a3 + 48);
    outlined init with copy of Material.Context(&v74, &v70);
    v31 = v3;
    v30(&v62, v24, &v56, a2, a3);
    v81 = v58;
    v82[0] = *v59;
    *(v82 + 9) = *&v59[9];
    v79 = v56;
    v80 = v57;
    outlined destroy of Material.Context(&v79);
    v32 = v62;
    v33 = *v63;
    v66 = *&v63[4];
    v67 = *&v63[20];
    v68[0] = *&v63[36];
    v34 = *&v63[68];
    *(v68 + 12) = *&v63[48];
    if (HIBYTE(*&v63[68]) > 0xFEuLL)
    {
      *&v56 = v7;
      *(&v56 + 1) = v6;
      LOBYTE(v57) = v52;
      BYTE1(v57) = v55;
      *(&v57 + 2) = v86;
      WORD3(v57) = v87;
      *(&v57 + 1) = 0;
      *&v58 = 0;
      BYTE8(v58) = v46;
      *(&v58 + 9) = *v84;
      HIDWORD(v58) = *&v84[3];
      memset(v59, 0, 24);
      v59[24] = v49;
      v12 = &v56;
      goto LABEL_7;
    }

    v35 = *&v63[64];
    v36 = MEMORY[0x1E69E7CC0];
    if (*(a1 + 40) == 1)
    {
      v36 = a1[4];

      outlined consume of _ShapeStyle_Shape.Result(v37, 1u);
      a1[4] = 0;
      *(a1 + 40) = 5;
    }

    v69[0] = v36;
    v38 = v35 & 0xFFFF0000FFFFFFFFLL | (v34 << 32);
    *&v56 = v36;
    LOBYTE(v70) = 0;
    _ShapeStyle_Pack.subscript.getter(&v70, v24, &v62);
    if (v38 >> 40)
    {
      v58 = *&v63[16];
      *v59 = *&v63[32];
      *&v59[16] = *&v63[48];
      *&v59[30] = *&v63[62];
      v56 = v62;
      v57 = *v63;
      outlined destroy of _ShapeStyle_Pack.Fill(&v56);
      if (v38 >> 40 == 1)
      {
        v62 = v32;
        *v63 = 2143289344;
        v63[69] = 0;
        *&v70 = v33;
        BYTE8(v70) = 0;
        _ShapeStyle_Pack.Style.applyBlend(_:)(&v70);
      }

      else
      {
        v63[68] = BYTE4(v38);
        v62 = v32;
        *&v63[4] = v66;
        *&v63[20] = v67;
        *&v63[36] = v68[0];
        *&v63[48] = *(v68 + 12);
        *v63 = v33;
        *&v63[64] = v38;
        v63[69] = 5;
      }
    }

    else
    {
      v58 = *&v63[16];
      *v59 = *&v63[32];
      *&v59[16] = *&v63[48];
      *&v59[30] = *&v63[62];
      v56 = v62;
      v57 = *v63;
      outlined destroy of _ShapeStyle_Pack.Fill(&v56);
      v62 = v32;
      *v63 = 2143289344;
      v63[69] = 0;
    }

    v25 = v24 + 1;
    *&v59[16] = *&v63[48];
    *&v59[32] = *&v63[64];
    v60 = v64;
    v61 = v65;
    v56 = v62;
    v57 = *v63;
    v58 = *&v63[16];
    *v59 = *&v63[32];
    LOBYTE(v70) = 0;
    _ShapeStyle_Pack.subscript.setter(&v56, &v70, v24);
    v26 = v69[0];
    v27 = a1[4];
    v28 = *(a1 + 40);

    outlined consume of _ShapeStyle_Shape.Result(v27, v28);
    a1[4] = v26;
    *(a1 + 40) = 1;

    v24 = v25;
    v22 = v39;
    v29 = v39 == v25;
    v3 = v31;
    v21 = v40;
    v7 = v41;
    v8 = v52;
    v9 = v55;
    if (v29)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t MaterialProvider.apply(color:to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 24) <= 2u)
  {
    v6 = result;
    v7 = *a2;
    if (*(a2 + 24))
    {
      if (*(a2 + 24) == 1)
      {
        v8 = *(a2 + 8);
        materialStyle #1 <A>(at:) in MaterialProvider.apply(color:to:)(v8, result, a2, v4, a3, a4);
        v9 = v33;
        v10 = *v34;
        v40 = *&v34[36];
        v41 = *&v34[52];
        v42 = v34[68];
        v38 = *&v34[4];
        v39 = *&v34[20];
        v11 = v34[69];
        if (*(a2 + 40) == 1)
        {
          v12 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v13, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        else
        {
          v12 = MEMORY[0x1E69E7CC0];
        }

        v37 = v12;
        *&v26 = v12;
        LOBYTE(v24) = v7;
        _ShapeStyle_Pack.subscript.getter(&v24, v8, &v33);
        if (v11)
        {
          v28 = *&v34[16];
          v29 = *&v34[32];
          *v30 = *&v34[48];
          *&v30[14] = *&v34[62];
          v26 = v33;
          v27 = *v34;
          outlined destroy of _ShapeStyle_Pack.Fill(&v26);
          v33 = v9;
          if (v11 == 1)
          {
            *v34 = 2143289344;
            v34[69] = 0;
            v24 = v10;
            v25 = 0;
            _ShapeStyle_Pack.Style.applyBlend(_:)(&v24);
          }

          else
          {
            *v34 = v10;
            *&v34[20] = v39;
            *&v34[36] = v40;
            *&v34[52] = v41;
            v34[68] = v42;
            *&v34[4] = v38;
            v34[69] = 5;
          }
        }

        else
        {
          v28 = *&v34[16];
          v29 = *&v34[32];
          *v30 = *&v34[48];
          *&v30[14] = *&v34[62];
          v26 = v33;
          v27 = *v34;
          outlined destroy of _ShapeStyle_Pack.Fill(&v26);
          v33 = v9;
          *v34 = 2143289344;
          v34[69] = 0;
        }

        *v30 = *&v34[48];
        *&v30[16] = *&v34[64];
        v31 = v35;
        v32 = v36;
        v26 = v33;
        v27 = *v34;
        v28 = *&v34[16];
        v29 = *&v34[32];
        LOBYTE(v24) = v7;
        _ShapeStyle_Pack.subscript.setter(&v26, &v24, v8);
        v21 = v37;
        v22 = *(a2 + 32);
        v23 = *(a2 + 40);

        outlined consume of _ShapeStyle_Shape.Result(v22, v23);
        *(a2 + 32) = v21;
        *(a2 + 40) = 1;
      }

      else
      {
        v14 = result;
        if (v7 >= 1)
        {
          v15 = *(a2 + 56);
          *&v33 = *(a2 + 48);
          *(&v33 + 1) = v15;
          v16 = *(*v6 + 168);

          v17 = v16(v7, &v33);

          type metadata accessor for ColorBox<AdaptiveColorProvider>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor);
          v14 = swift_allocObject();
          *(v14 + 16) = v6;
          *(v14 + 24) = v17;
        }

        v18 = *(a2 + 32);
        v19 = *(a2 + 40);

        result = outlined consume of _ShapeStyle_Shape.Result(v18, v19);
        *(a2 + 32) = v14;
        *(a2 + 40) = 3;
      }
    }

    else
    {
      materialStyle #1 <A>(at:) in MaterialProvider.apply(color:to:)(*a2, result, a2, v4, a3, a4);
      if (v34[69])
      {
        result = outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = 0;
      }

      else
      {
        type metadata accessor for ColorBox<AdaptiveColorProvider>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider);
        v20 = swift_allocObject();
        *(v20 + 16) = v33;
        *(v20 + 32) = 2143289344;
        result = outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v20;
      }

      *(a2 + 40) = 0;
    }
  }

  return result;
}

uint64_t materialStyle #1 <A>(at:) in MaterialProvider.apply(color:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a3 + 56);
  *&v39[0] = *(a3 + 48);
  *(&v39[0] + 1) = v10;
  v11 = *(*a2 + 120);

  v11(&v31, v39);

  v12 = v32;
  v13 = v33;
  v14 = v34;
  v15 = *(a3 + 80);
  v39[4] = *(a3 + 64);
  v40[0] = v15;
  *(v40 + 12) = *(a3 + 92);
  v16 = *(a3 + 16);
  v39[0] = *a3;
  v39[1] = v16;
  v17 = *(a3 + 48);
  v39[2] = *(a3 + 32);
  v39[3] = v17;
  v24[0] = v17;
  v18 = *(*a2 + 168);
  outlined init with copy of _ShapeStyle_Shape(v39, &v26);

  v19 = v18(a1, v24);
  outlined destroy of _ShapeStyle_Shape(v39);

  v20 = *(a3 + 56);
  *&v26 = *(a3 + 48);
  *(&v26 + 1) = v20;
  LOWORD(v27) = 771;
  v28 = 0;
  *&v29 = 0;
  BYTE8(v29) = 1;
  memset(v30, 0, 24);
  v30[24] = 1;
  v35 = v31;
  v36 = v12;
  v37 = v13 * v19;
  v38 = v14;
  *&v25[9] = *&v30[9];
  v24[2] = v29;
  *v25 = 0uLL;
  v24[0] = v26;
  v24[1] = v27;
  v21 = *(a6 + 32);

  v21(&v35, v24, a5, a6);
  return outlined destroy of Material.Context(&v26);
}

Swift::Int MaterialProviderBoxBase.hashValue.getter()
{
  Hasher.init(_seed:)();
  (*(*v0 + 176))(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MaterialProviderBoxBase()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 176))(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MaterialProviderBoxBase()
{
  Hasher.init(_seed:)();
  (*(**v0 + 176))(v2);
  return Hasher._finalize()();
}

uint64_t MaterialProviderBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 200) - 8) + 8))(v0 + *(*v0 + 216));

  return swift_deallocClassInstance();
}

uint64_t StatefulMaterialProviderBox.Cache.init(resolved:plist:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a2, a1, AssociatedTypeWitness);
  type metadata accessor for StatefulMaterialProviderBox.Cache();
  swift_weakInit();
}

uint64_t StatefulMaterialProviderBox.makeMaterial(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, AssociatedTypeWitness, v5);
  swift_getAssociatedConformanceWitness();
  return Material.init<A>(provider:)(v7, AssociatedTypeWitness, a2);
}

uint64_t MaterialProviderBox.as<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(*v2 + 200);
  if (v4 == a1)
  {
    result = *(a1 - 8);
    if (*(*(v4 - 8) + 64) != *(result + 64))
    {
      __break(1u);
      return result;
    }

    v9 = v2 + *(*v2 + 216);
    v11 = result;
    (*(result + 16))(a2, v9, a1);
    v5 = *(v11 + 56);
    v6 = a2;
    v7 = 0;
  }

  else
  {
    v5 = *(*(a1 - 8) + 56);
    v6 = a2;
    v7 = 1;
  }

  return v5(v6, v7, 1, a1);
}

uint64_t StatefulMaterialProviderBox.applyForegroundStyle(to:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = v9 - v4;
  v6 = *(a1 + 56);
  v9[0] = *(a1 + 48);
  v9[1] = v6;

  StatefulMaterialProviderBox.resolved(in:)(v9, v5);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  MaterialProvider.applyForegroundStyle(to:)(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v3 + 8))(v5, AssociatedTypeWitness);
}

uint64_t StatefulMaterialProviderBox.applyBackgroundStyle(to:)(uint64_t *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = v9 - v4;
  v6 = a1[7];
  v9[0] = a1[6];
  v9[1] = v6;

  StatefulMaterialProviderBox.resolved(in:)(v9, v5);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LOBYTE(a1) = MaterialProvider.applyBackgroundStyle(to:)(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v3 + 8))(v5, AssociatedTypeWitness);
  return a1 & 1;
}

uint64_t StatefulMaterialProviderBox.apply(color:to:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = v11 - v6;
  v8 = *(a2 + 56);
  v11[0] = *(a2 + 48);
  v11[1] = v8;

  StatefulMaterialProviderBox.resolved(in:)(v11, v7);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  MaterialProvider.apply(color:to:)(a1, a2, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v5 + 8))(v7, AssociatedTypeWitness);
}

uint64_t StatefulMaterialProviderBox.foregroundEnvironment(_:for:)(uint64_t *a1, uint64_t a2)
{
  v15[1] = *(*v2 + 208);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v15 - v7;
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 12);
  v12 = a1[1];
  v16 = *a1;
  v17 = v12;

  StatefulMaterialProviderBox.resolved(in:)(&v16, v8);

  v16 = v9;
  LOBYTE(v17) = v10;
  HIDWORD(v17) = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 40))(a1, &v16, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v6 + 8))(v8, AssociatedTypeWitness);
}

uint64_t StatefulMaterialProviderBox.__ivar_destroyer()
{
  (*(*(*(*v0 + 200) - 8) + 8))(v0 + *(*v0 + 216), *(*v0 + 200));
  type metadata accessor for StatefulMaterialProviderBox.Cache();
  type metadata accessor for Optional();
  type metadata accessor for Mutex();
  type metadata accessor for _Cell();

  return UnsafeMutablePointer.deinitialize(count:)();
}

uint64_t static Material.Layer.color(_:)@<X0>(uint64_t a1@<X8>, unsigned int a2@<S0>, int32x2_t a3@<D1>, unsigned int a4@<S2>, float a5@<S3>)
{
  *(a1 + 36) = 1065353216;
  if (one-time initialization token for normal != -1)
  {
    v9 = a1;
    v13 = a3.i32[0];
    v11 = a4;
    v12 = a2;
    v10 = a5;
    swift_once();
    a5 = v10;
    a4 = v11;
    a2 = v12;
    a3.i32[0] = v13;
    a1 = v9;
  }

  *&a3.i32[1] = a5;
  v5 = static GraphicsBlendMode.normal;
  v6 = byte_1ED52F818;
  *(a1 + 40) = static GraphicsBlendMode.normal;
  *(a1 + 48) = v6;
  v7.i64[0] = a2;
  v7.i64[1] = a4;
  *a1 = vorrq_s8(vshll_n_s32(a3, 0x20uLL), v7);
  *(a1 + 16) = xmmword_18DE19E70;
  *(a1 + 32) = 0;

  return outlined copy of GraphicsBlendMode(v5, v6);
}

uint64_t Material.Layer.opacity(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = *(v2 + 16);
  v10[0] = *v2;
  v3 = v10[0];
  v10[1] = v4;
  v11 = *(v2 + 32);
  v5 = v11;
  v12 = *(v2 + 48);
  v6 = v12;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *a1 = v3;
  *(a1 + 48) = v6;
  v7 = a2;
  *(a1 + 36) = v7;
  return outlined init with copy of Material.Layer(v10, v9);
}

uint64_t Material.Layer.blendMode(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = v2[1];
  v16 = *v2;
  v17 = v5;
  v18 = v2[2];
  v19 = *(v2 + 48);
  v13[0] = v4;
  GraphicsBlendMode.init(_:)(v13, &v14);
  v6 = v14;
  v7 = v15;
  v8 = v18;
  *(a2 + 16) = v17;
  *(a2 + 32) = v8;
  v9 = v19;
  *(a2 + 48) = v19;
  *a2 = v16;
  v10 = *(a2 + 40);
  v11 = v9;
  outlined init with copy of Material.Layer(&v16, v13);
  result = outlined consume of GraphicsBlendMode(v10, v11);
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t Material.Layer.Glass.filters.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

void Material.Layer.Glass.init()(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  v1 = MEMORY[0x1E69E7CC0];
  a1[2] = 0;
  a1[3] = v1;
}

uint64_t static Material.Layer.glass(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a1 * *(a1 + 8);
  type metadata accessor for _ContiguousArrayStorage<Material.Layer.SDFLayer.GroupLayer>();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18DDA6EB0;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = v6;
  v9 = v8 | 0x5000000000000000;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 32) = 0x3FF0000000000000;
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v10 = static Material.Layer.SDFLayer.GroupLayer.Blend.normal;
  *(v7 + 72) = 0;
  *(v7 + 76) = 0x7F8000003F800000;
  *(v7 + 32) = v9;
  *(v7 + 40) = v10;
  *(v7 + 48) = 1065353216;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v10);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v12 = *(v5 + 2);
  v11 = *(v5 + 3);
  if (v12 >= v11 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v5);
  }

  v35 = *&v6;
  *&v38 = 0;
  *(&v39 + 1) = 0;
  *&v36 = 0;
  *&v41[16] = 0x40000000;
  _s7SwiftUI14GraphicsFilterOWOi1_(&v35);
  *(v5 + 2) = v12 + 1;
  v13 = &v5[128 * v12];
  v14 = v35;
  v15 = v36;
  v16 = v38;
  *(v13 + 4) = v37;
  *(v13 + 5) = v16;
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  v17 = v39;
  v18 = v40;
  v19 = *v41;
  *(v13 + 140) = *&v41[12];
  *(v13 + 7) = v18;
  *(v13 + 8) = v19;
  *(v13 + 6) = v17;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_18DDAB4C0;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_18DDC56D0;
  *(v21 + 32) = 0x80;
  *(v21 + 40) = v7;
  *(v21 + 48) = v5;
  v22 = static Material.Layer.SDFLayer.GroupLayer.Blend.normal;
  *(v20 + 72) = 0;
  *(v20 + 76) = 0x7F8000003F800000;
  *(v20 + 32) = v21 | 0x8000000000000000;
  *(v20 + 40) = v22;
  *(v20 + 48) = 1065353216;
  *(v20 + 56) = 0;
  *(v20 + 64) = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  *(v23 + 24) = _Q0;
  *(v23 + 40) = 2143289344;
  *(v23 + 48) = v3;
  *(v23 + 56) = v4;
  *(v23 + 64) = xmmword_18DDC5750;
  *(v23 + 80) = 0x3FD51EB851EB851FLL;
  *(v23 + 88) = 0;
  *(v20 + 128) = 0;
  *(v20 + 132) = 0x7F8000003F800000;
  *(v20 + 88) = v23 | 0x6000000000000000;
  *(v20 + 96) = v22;
  *(v20 + 104) = 1065353216;
  *(v20 + 112) = 0;
  *(v20 + 120) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = 0x80;
  v30 = MEMORY[0x1E69E7CC0];
  *(v29 + 40) = v20;
  *(v29 + 48) = v30;
  *(a2 + 36) = 1065353216;

  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v22);
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v22);
  v31 = one-time initialization token for normal;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = static GraphicsBlendMode.normal;
  v33 = byte_1ED52F818;
  *(a2 + 40) = static GraphicsBlendMode.normal;
  *(a2 + 48) = v33;
  *a2 = v29 | 0x8000000000000000;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 2;
  outlined copy of GraphicsBlendMode(v32, v33);
}

__n128 static Material.Layer.SDFLayer.color_v2(_:inset:)@<Q0>(__n128 *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v6 = a1[1].n128_u32[0];
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  result = *a1;
  *(v7 + 24) = *a1;
  *(v7 + 40) = v6;
  *a2 = v7;
  a2[1] = 0;
  return result;
}

uint64_t static Material.Layer.SDFLayer.outputSDF(inset:range:)@<X0>(unint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 32) = a4;
  *a1 = result | 0xA000000000000000;
  a1[1] = 0;
  return result;
}

uint64_t static Material.Layer.SDFLayer.stroke(inset:color:lineWidth:)@<X0>(uint64_t *a1@<X8>, double a2@<D0>, float a3@<S1>, float a4@<S2>, float a5@<S3>, float a6@<S4>, double a7@<D5>)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a7;
  *(result + 32) = a3;
  *(result + 36) = a4;
  *(result + 40) = a5;
  *(result + 44) = a6;
  *(result + 48) = 2143289344;
  *a1 = result | 0x1000000000000000;
  a1[1] = 0;
  return result;
}

__n128 static Material.Layer.SDFLayer.stroke_v2(inset:color:lineWidth:)@<Q0>(__n128 *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = a1[1].n128_u32[0];
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  result = *a1;
  *(v9 + 32) = *a1;
  *(v9 + 48) = v8;
  *a2 = v9 | 0x1000000000000000;
  a2[1] = 0;
  return result;
}

uint64_t static Material.Layer.SDFLayer.outerStroke(inset:color:lineWidth:)@<X0>(uint64_t *a1@<X8>, double a2@<D0>, float a3@<S1>, float a4@<S2>, float a5@<S3>, float a6@<S4>, double a7@<D5>)
{
  v13 = a7 * 0.5 + a2;
  result = swift_allocObject();
  *(result + 16) = v13;
  *(result + 24) = a7;
  *(result + 32) = a3;
  *(result + 36) = a4;
  *(result + 40) = a5;
  *(result + 44) = a6;
  *(result + 48) = 2143289344;
  *a1 = result | 0x1000000000000000;
  a1[1] = 0;
  return result;
}

__n128 static Material.Layer.SDFLayer.shadow_v2(inset:color:radius:offset:knockout:inverted:)@<Q0>(__n128 *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v16 = a1[1].n128_u32[0];
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  result = *a1;
  *(v17 + 24) = *a1;
  *(v17 + 40) = v16;
  *(v17 + 48) = a6;
  *(v17 + 56) = a7;
  *(v17 + 64) = a8;
  *(v17 + 72) = a2;
  *(v17 + 73) = a3;
  *a4 = v17 | 0x3000000000000000;
  a4[1] = 0;
  return result;
}

uint64_t static Material.Layer.SDFLayer.customFill(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = swift_allocObject();
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
  result = project #1 <A>(_:) in static Material.Layer.SDFLayer.customFill(_:)(v7, v5, v6, type metadata accessor for _AnyMaterialCustomFillProvider, _AnyMaterialCustomFillProvider.__allocating_init(_:));
  *(v4 + 16) = result;
  *a2 = v4 | 0x4000000000000000;
  a2[1] = 0;
  return result;
}

__n128 static Material.Layer.SDFLayer.glassHighlight_v2(inset:color:height:angle:appliesDisplayAngle:curvature:spread:amount:)@<Q0>(__n128 *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>)
{
  v18 = a1[1].n128_u32[0];
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  result = *a1;
  *(v19 + 24) = *a1;
  *(v19 + 40) = v18;
  *(v19 + 48) = a5;
  *(v19 + 56) = a6;
  *(v19 + 64) = a7;
  *(v19 + 72) = a8;
  *(v19 + 80) = a9;
  *(v19 + 88) = a2;
  *a3 = v19 | 0x6000000000000000;
  a3[1] = 0;
  return result;
}

double static Material.Layer.SDFLayer.glassHighlight(color:height:angle:appliesDisplayAngle:curvature:spread:amount:)@<D0>(char a1@<W0>, uint64_t *a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>, float a6@<S3>, double a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>, uint64_t a11)
{
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = a3;
  *(v20 + 28) = a4;
  *(v20 + 32) = a5;
  *(v20 + 36) = a6;
  *(v20 + 40) = 2143289344;
  *(v20 + 48) = a7;
  *(v20 + 56) = a8;
  result = a10;
  *(v20 + 64) = a9;
  *(v20 + 72) = a10;
  *(v20 + 80) = a11;
  *(v20 + 88) = a1;
  *a2 = v20 | 0x6000000000000000;
  a2[1] = 0;
  return result;
}

__n128 static Material.Layer.SDFLayer.glassKeyFillHighlight(_:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = swift_allocObject();
  v5 = *(a1 + 112);
  *(v4 + 112) = *(a1 + 96);
  *(v4 + 128) = v5;
  *(v4 + 144) = *(a1 + 128);
  v6 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v6;
  v7 = *(a1 + 80);
  *(v4 + 80) = *(a1 + 64);
  *(v4 + 96) = v7;
  result = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = result;
  *a2 = v4 | 0x7000000000000000;
  a2[1] = 0;
  return result;
}

uint64_t Material.Layer.SDFLayer.GroupLayer.shapeFilter.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Material.Layer.SDFLayer.GroupLayer.layer.getter@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  a1[1] = 0;
}

uint64_t Material.Layer.SDFLayer.GroupLayer.layer.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t (*Material.Layer.SDFLayer.GroupLayer.layer.modify(void *a1))(uint64_t *a1, char a2)
{
  v2 = *v1;
  a1[2] = v1;
  a1[3] = v2;
  *a1 = v2;
  a1[1] = 0;

  return Material.Layer.SDFLayer.GroupLayer.layer.modify;
}

uint64_t Material.Layer.SDFLayer.GroupLayer.layer.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[2];
  if (a2)
  {

    *v3 = v2;
  }

  else
  {

    *v3 = v2;
  }

  return result;
}

BOOL static Material.Layer.SDFLayer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a2 + 8);
  v5 = *(a2 + 12);
  v6 = static SDFStyle.== infix(_:_:)(*a1, *a2);
  result = 0;
  if ((v6 & 1) != 0 && v2 == v4)
  {
    return v3 == v5;
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Material.Layer.SDFLayer(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a2 + 8);
  v5 = *(a2 + 12);
  v6 = static SDFStyle.== infix(_:_:)(*a1, *a2);
  result = 0;
  if ((v6 & 1) != 0 && v2 == v4)
  {
    return v3 == v5;
  }

  return result;
}

char *static Material.ForegroundStyle.color(_:blendMode:)@<X0>(char *result@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>, float a6@<S3>)
{
  v6 = dword_18DE1ACB8[*result];
  *a2 = a3;
  *(a2 + 4) = a4;
  *(a2 + 8) = a5;
  *(a2 + 12) = a6;
  *(a2 + 16) = v6;
  *(a2 + 85) = 1;
  return result;
}

uint64_t static Material.ForegroundStyle.color(_:graphicsBlendMode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>, float a6@<S3>)
{
  *a2 = a3;
  *(a2 + 4) = a4;
  *(a2 + 8) = a5;
  *(a2 + 12) = a6;
  *(a2 + 16) = result;
  *(a2 + 85) = 1;
  return result;
}

__n128 static Material.ForegroundStyle.colorMatrix(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  *(a2 + 80) = 2139095040;
  *(a2 + 84) = 512;
  return result;
}

__n128 static Material.ForegroundStyle.colorMatrix(_:backdropAware:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v3;
  *(a3 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = result;
  *(a3 + 80) = 2139095040;
  *(a3 + 84) = a2;
  *(a3 + 85) = 2;
  return result;
}

_OWORD *static Material.ForegroundStyle.colorMatrix(_:backdropAware:maxColorComponent:preservesHue:)@<X0>(_OWORD *result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, float a5@<S0>)
{
  v5 = result[3];
  v6 = a2 | 2;
  if ((a3 & 1) == 0)
  {
    v6 = a2;
  }

  *(a4 + 32) = result[2];
  *(a4 + 48) = v5;
  *(a4 + 64) = result[4];
  v7 = result[1];
  *a4 = *result;
  *(a4 + 16) = v7;
  *(a4 + 80) = a5;
  *(a4 + 84) = v6;
  *(a4 + 85) = 2;
  return result;
}

double static Material.Layer.Filter.displacementMap(amount:maskLayerIndex:)@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *)@<X1>, _OWORD *a3@<X8>, double a4@<D0>)
{
  *&v9 = a4;
  *(&v9 + 1) = a1;
  *&v10 = 0;
  *&v12 = 0;
  *(&v13 + 1) = 0;
  *&v15[16] = 0x40000000;
  a2(&v9);
  v5 = v14;
  a3[4] = v13;
  a3[5] = v5;
  a3[6] = *v15;
  *(a3 + 108) = *&v15[12];
  v6 = v10;
  *a3 = v9;
  a3[1] = v6;
  result = *&v11;
  v8 = v12;
  a3[2] = v11;
  a3[3] = v8;
  return result;
}

double static Material.Layer.Filter.edrGainMultiply(_:scale:isAdaptive:allowsGroup:)@<D0>(char a1@<W0>, char a2@<W1>, _OWORD *a3@<X8>, unsigned int a4@<S0>, unsigned int a5@<S1>)
{
  *&v10[0] = __PAIR64__(a5, a4);
  BYTE8(v10[0]) = a1;
  BYTE9(v10[0]) = a2;
  _s7SwiftUI14GraphicsFilterOWOi19_(v10);
  v6 = v14;
  a3[4] = v13;
  a3[5] = v6;
  a3[6] = v15[0];
  *(a3 + 108) = *(v15 + 12);
  v7 = v10[1];
  *a3 = v10[0];
  a3[1] = v7;
  result = *&v11;
  v9 = v12;
  a3[2] = v11;
  a3[3] = v9;
  return result;
}

float Material.Layer.Contents.Backdrop.hdrColor.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 20);
  *a1 = *(v1 + 4);
  *(a1 + 16) = result;
  return result;
}

uint64_t Material.Layer.contents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = *(v1 + 32);
  v5 = *(v1 + 32);
  if (v5 <= 1u)
  {
    v6 = *(v1 + 32);
    if (*(v1 + 32))
    {
      v6 = *(v1 + 2);
      v7 = *v1;

      v3 = v7;
      v5 = 1;
    }

    goto LABEL_6;
  }

  if (result == 2)
  {
    v8 = *v1;

    v3 = v8;
    v6 = 0;
    result = 0;
    v5 = 3;
LABEL_6:
    *a1 = v3;
    *(a1 + 16) = v6;
    *(a1 + 24) = result;
    *(a1 + 32) = v5;
    return result;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

float Material.Layer.SDFLayer.Contents.Fill.hdrColor.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = result;
  return result;
}

float Material.Layer.SDFLayer.Contents.Stroke.hdrColor.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = result;
  return result;
}

float Material.Layer.SDFLayer.Contents.Shadow.hdrColor.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = result;
  return result;
}

float Material.Layer.SDFLayer.Contents.GlassHighlight.hdrColor.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = result;
  return result;
}

float Material.Layer.SDFLayer.Contents.GlassKeyFillHighlight.keyColor.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = result;
  return result;
}

__n128 Material.Layer.SDFLayer.Contents.GlassKeyFillHighlight.keyColor.setter(__n128 *a1)
{
  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = a1[1].n128_u32[0];
  return result;
}

float Material.Layer.SDFLayer.Contents.GlassKeyFillHighlight.fillColor.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 96);
  *a1 = *(v1 + 80);
  *(a1 + 16) = result;
  return result;
}

__n128 Material.Layer.SDFLayer.Contents.GlassKeyFillHighlight.fillColor.setter(__n128 *a1)
{
  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u32[0] = a1[1].n128_u32[0];
  return result;
}

__n128 Material.Layer.SDFLayer.Contents.Group.type.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t Material.Layer.SDFLayer.Contents.Mask.content.getter@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  a1[1] = 0;
}

uint64_t Material.Layer.SDFLayer.Contents.Mask.mask.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + 8);
  a1[1] = 0;
}

__n128 Material.Layer.SDFLayer.contents.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *v1 >> 60;
  if (v4 <= 4)
  {
    if (v4 <= 1)
    {
      if (v4)
      {
        v34 = v3 & 0xFFFFFFFFFFFFFFFLL;
        v35 = *(v34 + 48);
        v36 = *(v34 + 32);
        *v41 = *(v34 + 16);
        *&v41[16] = v36;
        LODWORD(v42) = v35;
        _s7SwiftUI8MaterialVAAE5LayerV8SDFLayerV8ContentsOWOi0_(v41);
      }

      else
      {
        v14 = *(v3 + 40);
        *v41 = *(v3 + 16);
        *&v41[8] = *(v3 + 24);
        *&v41[24] = v14;
        _s7SwiftUI8MaterialVAAE5LayerV8SDFLayerV8ContentsOWOi_(v41);
      }
    }

    else
    {
      v7 = (v3 & 0xFFFFFFFFFFFFFFFLL);
      if (v4 == 2)
      {
        v15 = v7[3];
        v16 = v7[4];
        *v41 = v7[2];
        *&v41[8] = v15;
        *&v41[16] = v16;
        _s7SwiftUI8MaterialVAAE5LayerV8SDFLayerV8ContentsOWOi1_(v41);
        v17 = v47;
        *(a1 + 96) = v46;
        *(a1 + 112) = v17;
        *(a1 + 128) = v48;
        v18 = v43;
        *(a1 + 32) = v42;
        *(a1 + 48) = v18;
        v19 = v45;
        *(a1 + 64) = v44;
        *(a1 + 80) = v19;
        v20 = *&v41[16];
        *a1 = *v41;
        *(a1 + 16) = v20;

        return result;
      }

      if (v4 != 3)
      {
        *v41 = v7[2];
        _s7SwiftUI8MaterialVAAE5LayerV8SDFLayerV8ContentsOWOi3_(v41);
        v30 = v47;
        *(a1 + 96) = v46;
        *(a1 + 112) = v30;
        *(a1 + 128) = v48;
        v31 = v43;
        *(a1 + 32) = v42;
        *(a1 + 48) = v31;
        v32 = v45;
        *(a1 + 64) = v44;
        *(a1 + 80) = v32;
        v33 = *&v41[16];
        *a1 = *v41;
        *(a1 + 16) = v33;

        return result;
      }

      memmove(v41, v7 + 2, 0x3AuLL);
      _s7SwiftUI8MaterialVAAE5LayerV8SDFLayerV8ContentsOWOi2_(v41);
    }
  }

  else
  {
    v5 = v3 & 0xFFFFFFFFFFFFFFFLL;
    if (v4 > 7)
    {
      if (v4 == 8)
      {
        v23 = *(v5 + 32);
        v24 = *(v5 + 40);
        v25 = *(v5 + 48);
        *v41 = *(v5 + 16);
        v41[16] = v23;
        *&v41[24] = v24;
        *&v42 = v25;
        _s7SwiftUI8MaterialVAAE5LayerV8SDFLayerV8ContentsOWOi7_(v41);
        v26 = v47;
        *(a1 + 96) = v46;
        *(a1 + 112) = v26;
        *(a1 + 128) = v48;
        v27 = v43;
        *(a1 + 32) = v42;
        *(a1 + 48) = v27;
        v28 = v45;
        *(a1 + 64) = v44;
        *(a1 + 80) = v28;
        v29 = *&v41[16];
        *a1 = *v41;
        *(a1 + 16) = v29;

        return result;
      }

      if (v4 == 9)
      {
        v8 = *(v5 + 24);
        *v41 = *(v5 + 16);
        *&v41[8] = v8;
        _s7SwiftUI8MaterialVAAE5LayerV8SDFLayerV8ContentsOWOi8_(v41);
        v9 = v47;
        *(a1 + 96) = v46;
        *(a1 + 112) = v9;
        *(a1 + 128) = v48;
        v10 = v43;
        *(a1 + 32) = v42;
        *(a1 + 48) = v10;
        v11 = v45;
        *(a1 + 64) = v44;
        *(a1 + 80) = v11;
        v12 = *&v41[16];
        *a1 = *v41;
        *(a1 + 16) = v12;

        return result;
      }

      v37 = *(v5 + 32);
      *v41 = *(v5 + 16);
      *&v41[16] = v37;
      _s7SwiftUI8MaterialVAAE5LayerV8SDFLayerV8ContentsOWOi9_(v41);
    }

    else if (v4 == 5)
    {
      v21 = *(v5 + 48);
      v22 = *(v5 + 32);
      *v41 = *(v5 + 16);
      *&v41[16] = v22;
      *&v42 = v21;
      _s7SwiftUI8MaterialVAAE5LayerV8SDFLayerV8ContentsOWOi4_(v41);
    }

    else
    {
      v6 = (v5 + 16);
      if (v4 == 6)
      {
        memmove(v41, v6, 0x49uLL);
        _s7SwiftUI8MaterialVAAE5LayerV8SDFLayerV8ContentsOWOi5_(v41);
      }

      else
      {
        memmove(v41, v6, 0x88uLL);
        _s7SwiftUI8MaterialVAAE5LayerV8SDFLayerV8ContentsOWOi6_(v41);
      }
    }
  }

  v38 = v47;
  *(a1 + 96) = v46;
  *(a1 + 112) = v38;
  *(a1 + 128) = v48;
  v39 = v43;
  *(a1 + 32) = v42;
  *(a1 + 48) = v39;
  v40 = v45;
  *(a1 + 64) = v44;
  *(a1 + 80) = v40;
  result = *&v41[16];
  *a1 = *v41;
  *(a1 + 16) = result;
  return result;
}

__n128 Material.Layer.Filter.Contents.ColorMatrix.matrix.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t Material.Layer.Filter.Contents.VariableBlur.mask.getter@<X0>(uint64_t a1@<X8>)
{
  *&v14[12] = *(v1 + 108);
  v2 = v1[5];
  v12 = v1[4];
  v13 = v2;
  *v14 = v1[6];
  v3 = v1[1];
  v8 = *v1;
  v9 = v3;
  v4 = v1[3];
  v10 = v1[2];
  v11 = v4;
  if (!(*&v14[24] >> 30))
  {
    if (!BYTE8(v9))
    {
      *a1 = v9;
      *(a1 + 8) = 0;
      return outlined init with copy of VariableBlurStyle(&v8, &v7);
    }

    goto LABEL_6;
  }

  if (*&v14[24] >> 30 != 1 || (v9 & 0x8000000000000000) != 0)
  {
LABEL_6:
    *a1 = 0;
    v5 = -1;
    goto LABEL_7;
  }

  *a1 = v9;
  v5 = 1;
LABEL_7:
  *(a1 + 8) = v5;
  return result;
}

void Material.Layer.Filter.Contents.DisplacementMap.mask.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 112) >> 30 != 1 || v2 < 0;
  if (v4)
  {
    v2 = 0;
  }

  *a1 = v2;
  *(a1 + 8) = v4;
}

void Material.Layer.Filter.Contents.GlassBackground.mask.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = v2 & ~(v2 >> 63);
  if ((*(v1 + 112) & 0xC0000000) != 0x40000000)
  {
    v3 = 0;
  }

  v4 = v2 < 0 && (*(v1 + 112) & 0xC0000000) == 0x40000000;
  *a1 = v3;
  *(a1 + 8) = v4;
}

__n128 Material.ForegroundStyle.Contents.VibrantColorMatrix.matrix.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t static Material.ForegroundStyle.Contents.VibrantColorMatrix.== infix(_:_:)(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v2;
  v3 = *(a1 + 64);
  v4 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v4;
  v5 = *(a1 + 80);
  v6 = *(a1 + 84);
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[4] = a2[4];
  v8 = *a2;
  v14[1] = a2[1];
  v13[4] = v3;
  v14[0] = v8;
  v9 = *(a2 + 20);
  v10 = *(a2 + 84);
  v11 = specialized static _ColorMatrix.== infix(_:_:)(v13, v14) & (v5 == v9);
  if (v6 == v10)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Material.ForegroundStyle.Contents.VibrantColorMatrix(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v2;
  v3 = *(a1 + 64);
  v4 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v4;
  v5 = *(a1 + 80);
  v6 = *(a1 + 84);
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[4] = a2[4];
  v8 = *a2;
  v14[1] = a2[1];
  v13[4] = v3;
  v14[0] = v8;
  v9 = *(a2 + 20);
  v10 = *(a2 + 84);
  v11 = specialized static _ColorMatrix.== infix(_:_:)(v13, v14) & (v5 == v9);
  if (v6 == v10)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

void Material.ForegroundStyle.contents.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 84);
  v4 = *(v1 + 85);
  if (*(v1 + 85))
  {
    v5 = *(v1 + 16);
    if (v4 == 1)
    {
      LOBYTE(v4) = 0;
    }

    else if ((*(v1 + 84) & 2) != 0 || (v2 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      v6 = *(v1 + 20);
      v7 = *(v1 + 36);
      *v8 = *(v1 + 52);
      *&v8[12] = *(v1 + 64);
      LOBYTE(v4) = 3;
    }

    else
    {
      v6 = *(v1 + 20);
      v7 = *(v1 + 36);
      *v8 = *(v1 + 52);
      *&v8[12] = *(v1 + 64);
      if (*(v1 + 84))
      {
        LOBYTE(v4) = 2;
      }

      else
      {
        LOBYTE(v4) = 1;
      }
    }
  }

  else
  {
    v5 = *(v1 + 85);
  }

  *a1 = *v1;
  *(a1 + 16) = v5;
  *(a1 + 20) = v6;
  *(a1 + 36) = v7;
  *(a1 + 52) = *v8;
  *(a1 + 64) = *&v8[12];
  *(a1 + 80) = v2;
  *(a1 + 84) = v3;
  *(a1 + 85) = v4;
}

uint64_t protocol witness for ColorProvider.resolve(in:) in conformance AdaptiveColorProvider(__int128 *a1)
{
  v2 = *v1;
  v4 = *a1;
  return (*(*v2 + 112))(&v4);
}

uint64_t protocol witness for ColorProvider.opacity(at:environment:) in conformance AdaptiveColorProvider(uint64_t a1, __int128 *a2)
{
  v3 = *v2;
  v5 = *a2;
  return (*(*v3 + 168))(a1, &v5);
}

uint64_t key path getter for EnvironmentValues.materialColorRenderingMode : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt1g5(v3, &v6);

    v5 = v6;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0g5(*a1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 0;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.materialColorRenderingMode : EnvironmentValues(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt2B5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Ttg5(v3, *a2);
  }
}

uint64_t EnvironmentValues.materialColorRenderingMode.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Ttg5(v3, *v2);
  }
}

void (*EnvironmentValues.materialColorRenderingMode.modify(void *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 0;
    }

    *(v4 + 40) = v8;
  }

  return EnvironmentValues.materialColorRenderingMode.modify;
}

void EnvironmentValues.materialColorRenderingMode.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

uint64_t key path setter for EnvironmentValues.systemMaterialDefinition : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA024SystemMaterialDefinitionF033_4075E3A4E56336DD739D990E781CBB12LLVG_Tt2g5(a2, v3, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA024SystemMaterialDefinitionK033_4075E3A4E56336DD739D990E781CBB12LLVG_Ttg5(v5, *a2);
  }
}

uint64_t EnvironmentValues.systemMaterialDefinition.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *v3;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA024SystemMaterialDefinitionF033_4075E3A4E56336DD739D990E781CBB12LLVG_Tt2g5(v3, a1, v5);

  if (v3[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA024SystemMaterialDefinitionK033_4075E3A4E56336DD739D990E781CBB12LLVG_Ttg5(v6, *v3);
  }
}

void (*EnvironmentValues.systemMaterialDefinition.modify(void *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v3[5] = *v1;
  v3[6] = v1[1];
  *v3 = EnvironmentValues.systemMaterialDefinition.getter();
  v4[1] = v5;
  return EnvironmentValues.systemMaterialDefinition.modify;
}

void EnvironmentValues.systemMaterialDefinition.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[6];
  v3 = **a1;
  if (v3)
  {
    v4 = (*a1)[1];
  }

  else
  {
    v4 = 0;
  }

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA024SystemMaterialDefinitionF033_4075E3A4E56336DD739D990E781CBB12LLVG_Tt2g5(v1[4], v3, v4);

  if (v2)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA024SystemMaterialDefinitionK033_4075E3A4E56336DD739D990E781CBB12LLVG_Ttg5(v1[5], *v1[4]);
  }

  free(v1);
}

uint64_t project #1 <A>(_:) in static Material.Layer.SDFLayer.customFill(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12(0, v9);
  (*(v8 + 16))(v11, a1, a2);
  return a5(v11);
}

uint64_t specialized static Material.ForegroundStyle.Storage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v6 = *a1;
  v7 = *(a1 + 4);
  v9 = *(a1 + 8);
  v8 = *(a1 + 12);
  v10 = *a2;
  v11 = *(a2 + 4);
  v13 = *(a2 + 8);
  v12 = *(a2 + 12);
  v14 = *(a2 + 85);
  if (*(a1 + 85))
  {
    v15 = *(a1 + 16);
    v16 = *(a2 + 16);
    if (*(a1 + 85) == 1)
    {
      if (v14 == 1)
      {
        v18 = v7 == v11 && v6 == v10;
        v19 = v18 && v9 == v13;
        if (v8 != v12)
        {
          v19 = 0;
        }

        if (v15 == v16)
        {
          return v19;
        }

        else
        {
          return 0;
        }
      }
    }

    else if (v14 == 2)
    {
      v37 = v5;
      v38 = v4;
      v39 = v2;
      v40 = v3;
      v24 = *(a1 + 80);
      v25 = *(a1 + 84);
      v26 = *(a2 + 80);
      v27 = *(a2 + 84);
      *v29 = v6;
      *&v29[1] = v7;
      *&v29[2] = v9;
      *&v29[3] = v8;
      v29[4] = v15;
      v30 = *(a1 + 20);
      v31 = *(a1 + 36);
      *v32 = *(a1 + 52);
      *&v32[12] = *(a1 + 64);
      *v33 = v10;
      *&v33[1] = v11;
      *&v33[2] = v13;
      *&v33[3] = v12;
      v33[4] = v16;
      v34 = *(a2 + 20);
      v35 = *(a2 + 36);
      *v36 = *(a2 + 52);
      *&v36[12] = *(a2 + 64);
      v28 = specialized static _ColorMatrix.== infix(_:_:)(v29, v33) & (v24 == v26);
      if (v25 == v27)
      {
        return v28;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  if (*(a2 + 85))
  {
    return 0;
  }

  v22 = v7 == v11 && v6 == v10;
  v23 = v22 && v9 == v13;
  if (v8 == v12)
  {
    return v23;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized static Material.ForegroundStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v6 = *a1;
  v7 = *(a1 + 4);
  v9 = *(a1 + 8);
  v8 = *(a1 + 12);
  v10 = *a2;
  v11 = *(a2 + 4);
  v13 = *(a2 + 8);
  v12 = *(a2 + 12);
  v14 = *(a2 + 85);
  if (*(a1 + 85))
  {
    v15 = *(a1 + 16);
    v16 = *(a2 + 16);
    if (*(a1 + 85) == 1)
    {
      v17 = v14 == 1;
      v19 = v7 == v11 && v6 == v10;
      v20 = v19 && v17;
      if (v9 != v13)
      {
        v20 = 0;
      }

      if (v8 != v12)
      {
        v20 = 0;
      }

      if (v15 == v16)
      {
        return v20;
      }

      else
      {
        return 0;
      }
    }

    else if (v14 == 2)
    {
      v38 = v5;
      v39 = v4;
      v40 = v2;
      v41 = v3;
      v25 = *(a1 + 80);
      v26 = *(a1 + 84);
      v27 = *(a2 + 80);
      v28 = *(a2 + 84);
      *v30 = v6;
      *&v30[1] = v7;
      *&v30[2] = v9;
      *&v30[3] = v8;
      v30[4] = v15;
      v31 = *(a1 + 20);
      v32 = *(a1 + 36);
      *v33 = *(a1 + 52);
      *&v33[12] = *(a1 + 64);
      *v34 = v10;
      *&v34[1] = v11;
      *&v34[2] = v13;
      *&v34[3] = v12;
      v34[4] = v16;
      v35 = *(a2 + 20);
      v36 = *(a2 + 36);
      *v37 = *(a2 + 52);
      *&v37[12] = *(a2 + 64);
      v29 = specialized static _ColorMatrix.== infix(_:_:)(v30, v34) & (v25 == v27);
      if (v26 == v28)
      {
        return v29;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v23 = v7 == v11 && v6 == v10;
    v24 = v23 && v14 == 0;
    if (v9 != v13)
    {
      v24 = 0;
    }

    if (v8 == v12)
    {
      return v24;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t specialized static Material.Layer.Glass.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI8MaterialVACE5LayerV6FilterV_Tt1g5(*(a1 + 24), *(a2 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t specialized static Material.Layer.SDFLayer.Contents.GlassKeyFillHighlight.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v27 = *(a1 + 24);
  v28 = *(a1 + 40);
  v6 = *(a1 + 64);
  v23 = *(a1 + 80);
  v24 = *(a1 + 96);
  v7 = *a2;
  v30 = *(a2 + 40);
  v26 = *(a2 + 96);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v29 = *(a2 + 24);
  v10 = *(a1 + 48);
  v12 = *(a2 + 48);
  v11 = *(a2 + 64);
  v25 = *(a2 + 80);
  if (v3 == v7 && ((v4 ^ v8) & 1) == 0 && v5 == v9)
  {
    v19 = v12;
    v20 = v11;
    v21 = v10;
    v22 = v6;
    v17 = *(a1 + 104);
    v18 = *(a1 + 120);
    v15 = *(a2 + 104);
    v16 = *(a2 + 120);
    v13 = specialized static Color.ResolvedHDR.== infix(_:_:)(&v27, &v29);
    v2 = 0;
    if (v13 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v21, v19), vceqq_f64(v22, v20)), xmmword_18DDA9F30)) & 0xF) == 0)
    {
      v2 = specialized static Color.ResolvedHDR.== infix(_:_:)(&v23, &v25) & vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v17, v15), vceqq_f64(v18, v16))));
    }
  }

  return v2 & 1;
}

uint64_t specialized static Material.Layer.SDFLayer.BackdropLayer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (*a1 == *a2 && ((*(a1 + 4) ^ *(a2 + 4)) & 1) == 0 && ((*(a1 + 5) ^ *(a2 + 5)) & 1) == 0 && ((*(a1 + 6) ^ *(a2 + 6)) & 1) == 0 && *(a1 + 8) == *(a2 + 8))
  {
    v2 = *(a2 + 16) ^ *(a1 + 16) ^ 1;
  }

  return v2 & 1;
}

uint64_t specialized static Material.Layer.SDFLayer.GroupLayer.Blend.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (!v4)
  {
    if (!(v3 >> 62))
    {
      outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(*a1);
      outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v3);
      v9 = v2 == v3;
      return v9 & 1;
    }

LABEL_9:
    outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v3);
    outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v2);
    outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v3);
    v9 = 0;
    return v9 & 1;
  }

  if (v4 != 1)
  {
    v10 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
    v15 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    v16 = v10;
    v17 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
    v11 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v13 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v14 = v11;
    if (v3 >> 62 == 2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v5 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
  v15 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
  v16 = v5;
  v17 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
  v6 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v13 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v14 = v6;
  if (v3 >> 62 != 1)
  {
LABEL_8:

    goto LABEL_9;
  }

LABEL_4:
  v7 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
  v18[2] = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
  v18[3] = v7;
  v18[4] = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
  v8 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v18[0] = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v18[1] = v8;
  v9 = specialized static _ColorMatrix.== infix(_:_:)(&v13, v18);
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v3);
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v2);
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v2);
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v3);
  return v9 & 1;
}

uint64_t specialized AdaptiveColorProvider.apply(color:to:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  if (*(a1 + 56))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018BackgroundMaterialI033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5(v4, &v14);

    v5 = v14;
    v6 = v15;
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018BackgroundMaterialS033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(*(a1 + 48));
    if (!v7)
    {
      goto LABEL_11;
    }

    v5 = v7[9];
    v6 = v7[10];
    outlined copy of Material?(v5, v6);
  }

  if (v6 != 0xFF)
  {
    v8 = *(a1 + 56);
    v14 = *(a1 + 48);
    v15 = v8;
    v11 = v5;
    v12 = v6;
    v13 = HIDWORD(v6);

    v9 = EnvironmentValues.materialProvider(for:)(&v11);

    if (v9)
    {
      (*(*v9 + 104))(a2, a1);
      outlined consume of Material?(v5, v6);
    }

    outlined consume of Material?(v5, v6);
  }

LABEL_11:

  return Color._apply(to:)(a1, a2);
}

BOOL specialized static Material.Layer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 36);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 36);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a1 + 32);
  v16 = *(a2 + 32);
  v23 = *a1;
  v24 = v2;
  v25 = v3;
  v26 = v4;
  v27 = v15;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = v16;
  outlined copy of Material.Layer.Storage(v23, v2, v3, v4, v15);
  outlined copy of Material.Layer.Storage(v8, v9, v10, v11, v16);
  LOBYTE(v8) = specialized static Material.Layer.Storage.== infix(_:_:)(&v23, &v18);
  outlined consume of Material.Layer.Storage(v18, v19, v20, v21, v22);
  outlined consume of Material.Layer.Storage(v23, v24, v25, v26, v27);
  result = 0;
  if ((v8 & 1) != 0 && v5 == v12)
  {
    if (v7)
    {
      if (v14)
      {
        outlined copy of GraphicsBlendMode(v13, 1);
        outlined copy of GraphicsBlendMode(v6, 1);
        outlined consume of GraphicsBlendMode(v6, 1);
        outlined consume of GraphicsBlendMode(v13, 1);
        result = 1;
        if (v6 == v13)
        {
          return result;
        }

        return 0;
      }

      swift_unknownObjectRetain_n();
    }

    else if ((v14 & 1) == 0)
    {
      outlined consume of GraphicsBlendMode(v6, 0);
      outlined consume of GraphicsBlendMode(v13, 0);
      return v6 == v13;
    }

    outlined copy of GraphicsBlendMode(v13, v14);
    outlined consume of GraphicsBlendMode(v6, v7);
    outlined consume of GraphicsBlendMode(v13, v14);
    outlined consume of GraphicsBlendMode(v6, v7);
    return 0;
  }

  return result;
}

uint64_t specialized static Material.Layer.SDFLayer.GroupLayer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 44);
  v7 = *(a1 + 48);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v12 = *(a2 + 24);
  v11 = *(a2 + 32);
  v13 = *(a2 + 40);
  v15 = *(a2 + 44);
  v14 = *(a2 + 48);
  if ((static SDFStyle.== infix(_:_:)(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v19 = v9;
  v20 = v2;
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v2);
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v9);
  v16 = specialized static Material.Layer.SDFLayer.GroupLayer.Blend.== infix(_:_:)(&v20, &v19);
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v19);
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v20);
  v17 = v16 & (v3 == v10);
  if (v5 != v12)
  {
    v17 = 0;
  }

  if (v4 != v11)
  {
    v17 = 0;
  }

  if (v6 != v13)
  {
    v17 = 0;
  }

  if (v8 != v15)
  {
    v17 = 0;
  }

  if (v7 == v14)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

BOOL specialized static Material.Layer.Storage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if (v11 == 2)
      {
        outlined copy of Material.Layer.Storage(*a2, *(a2 + 8), v9, v10, 2);
        outlined copy of Material.Layer.Storage(v2, v3, v4, v5, 2);
        outlined copy of Material.Layer.Storage(v8, v7, v9, v10, 2);
        outlined copy of Material.Layer.Storage(v2, v3, v4, v5, 2);
        v16 = static SDFStyle.== infix(_:_:)(v2, v8);
        outlined consume of Material.Layer.Storage(v2, v3, v4, v5, 2);
        outlined consume of Material.Layer.Storage(v8, v7, v9, v10, 2);
        outlined consume of Material.Layer.Storage(v8, v7, v9, v10, 2);
        outlined consume of Material.Layer.Storage(v2, v3, v4, v5, 2);
        if (*(&v3 + 1) == *(&v7 + 1))
        {
          return v16 & (v3 == v7);
        }

        else
        {
          return 0;
        }
      }
    }

    else if (v11 == 3)
    {
      outlined consume of Material.Layer.Storage(*a1, v3, v4, v5, 3);
      outlined consume of Material.Layer.Storage(v8, v7, v9, v10, 3);
      if ((v8 ^ v2))
      {
        return 0;
      }

      else
      {
        return (v2 >> 8) & 1 ^ ((v8 & 0x100) == 0);
      }
    }

LABEL_43:
    outlined copy of Material.Layer.Storage(v8, v7, v9, v10, v11);
    outlined consume of Material.Layer.Storage(v2, v3, v4, v5, v6);
    v21 = v8;
    v22 = v7;
    v23 = v9;
    v24 = v10;
    v25 = v11;
    goto LABEL_44;
  }

  if (!*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      outlined consume of Material.Layer.Storage(v2, v3, v4, v5, 0);
      outlined consume of Material.Layer.Storage(v8, v7, v9, v10, 0);
      v14 = *&v2 == *&v8 && *(&v2 + 1) == *(&v8 + 1) && *&v3 == *&v7 && *(&v3 + 1) == *(&v7 + 1);
      return v14 && *&v4 == *&v9;
    }

    goto LABEL_43;
  }

  if (v11 != 1)
  {

    goto LABEL_43;
  }

  v20 = *&v2 == *&v8 && *(&v2 + 1) == *(&v8 + 1) && *&v3 == *&v7 && *(&v3 + 1) == *(&v7 + 1) && *&v4 == *&v9;
  if (!v20 || *(&v4 + 1) != *(&v9 + 1))
  {
    outlined copy of Material.Layer.Storage(*a2, *(a2 + 8), v9, v10, 1);
    outlined copy of Material.Layer.Storage(v2, v3, v4, v5, 1);
    outlined consume of Material.Layer.Storage(v2, v3, v4, v5, 1);
    v21 = v8;
    v22 = v7;
    v23 = v9;
    v24 = v10;
    v25 = 1;
LABEL_44:
    outlined consume of Material.Layer.Storage(v21, v22, v23, v24, v25);
    return 0;
  }

  outlined copy of Material.Layer.Storage(*a2, *(a2 + 8), v9, v10, 1);
  outlined copy of Material.Layer.Storage(v2, v3, v4, v5, 1);
  outlined copy of Material.Layer.Storage(v8, v7, v9, v10, 1);
  outlined copy of Material.Layer.Storage(v2, v3, v4, v5, 1);
  v26 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI14GraphicsFilterO_Tt1g5(v5, v10);
  outlined consume of Material.Layer.Storage(v2, v3, v4, v5, 1);
  outlined consume of Material.Layer.Storage(v8, v7, v9, v10, 1);
  outlined consume of Material.Layer.Storage(v8, v7, v9, v10, 1);
  outlined consume of Material.Layer.Storage(v2, v3, v4, v5, 1);
  result = 1;
  if ((v26 & 1) == 0)
  {
    return 0;
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Material.Layer.SDFLayer.GroupLayer>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Material.Layer.SDFLayer.GroupLayer>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Material.Layer.SDFLayer.GroupLayer>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Material.Substrate and conformance Material.Substrate()
{
  result = lazy protocol witness table cache variable for type Material.Substrate and conformance Material.Substrate;
  if (!lazy protocol witness table cache variable for type Material.Substrate and conformance Material.Substrate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Material.Substrate and conformance Material.Substrate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Material.Layers and conformance Material.Layers()
{
  result = lazy protocol witness table cache variable for type Material.Layers and conformance Material.Layers;
  if (!lazy protocol witness table cache variable for type Material.Layers and conformance Material.Layers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Material.Layers and conformance Material.Layers);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MaterialProviderBoxBase and conformance MaterialProviderBoxBase()
{
  result = lazy protocol witness table cache variable for type MaterialProviderBoxBase and conformance MaterialProviderBoxBase;
  if (!lazy protocol witness table cache variable for type MaterialProviderBoxBase and conformance MaterialProviderBoxBase)
  {
    type metadata accessor for MaterialProviderBoxBase();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialProviderBoxBase and conformance MaterialProviderBoxBase);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Material.Layer.SDFLayer.GroupLayer.Options and conformance Material.Layer.SDFLayer.GroupLayer.Options()
{
  result = lazy protocol witness table cache variable for type Material.Layer.SDFLayer.GroupLayer.Options and conformance Material.Layer.SDFLayer.GroupLayer.Options;
  if (!lazy protocol witness table cache variable for type Material.Layer.SDFLayer.GroupLayer.Options and conformance Material.Layer.SDFLayer.GroupLayer.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Material.Layer.SDFLayer.GroupLayer.Options and conformance Material.Layer.SDFLayer.GroupLayer.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Material.Layer.SDFLayer.GroupLayer.Options and conformance Material.Layer.SDFLayer.GroupLayer.Options;
  if (!lazy protocol witness table cache variable for type Material.Layer.SDFLayer.GroupLayer.Options and conformance Material.Layer.SDFLayer.GroupLayer.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Material.Layer.SDFLayer.GroupLayer.Options and conformance Material.Layer.SDFLayer.GroupLayer.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Material.Layer.SDFLayer.GroupLayer.Options and conformance Material.Layer.SDFLayer.GroupLayer.Options;
  if (!lazy protocol witness table cache variable for type Material.Layer.SDFLayer.GroupLayer.Options and conformance Material.Layer.SDFLayer.GroupLayer.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Material.Layer.SDFLayer.GroupLayer.Options and conformance Material.Layer.SDFLayer.GroupLayer.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Material.Layer.SDFLayer.GroupLayer.Options and conformance Material.Layer.SDFLayer.GroupLayer.Options;
  if (!lazy protocol witness table cache variable for type Material.Layer.SDFLayer.GroupLayer.Options and conformance Material.Layer.SDFLayer.GroupLayer.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Material.Layer.SDFLayer.GroupLayer.Options and conformance Material.Layer.SDFLayer.GroupLayer.Options);
  }

  return result;
}

uint64_t dispatch thunk of MaterialProvider.resolveAdaptiveColor(_:in:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 4);
  v5 = *(a4 + 32);
  v7 = *a1;
  v8 = v4;
  return v5(&v7);
}

uint64_t initializeWithCopy for Material.Context(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);

  return a1;
}

uint64_t assignWithCopy for Material.Context(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v4 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v4;
  v5 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 48) = v5;
  return a1;
}

uint64_t assignWithTake for Material.Context(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  return a1;
}

uint64_t getEnumTagSinglePayload for Material.Context(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 73))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for Material.Context(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for Material.StatefulContext(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  return a1;
}

uint64_t assignWithCopy for Material.StatefulContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithTake for Material.StatefulContext(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for Material.StatefulContext(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for Material.StatefulContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for Material.Layer(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of Material.Layer.Storage(*a2, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v13 = *(a1 + 32);
  *(a1 + 32) = v8;
  outlined consume of Material.Layer.Storage(v9, v10, v11, v12, v13);
  *(a1 + 36) = *(v2 + 36);
  v14 = *(v2 + 40);
  LOBYTE(v2) = *(v2 + 48);
  outlined copy of GraphicsBlendMode(v14, v2);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  *(a1 + 40) = v14;
  *(a1 + 48) = v2;
  outlined consume of GraphicsBlendMode(v15, v16);
  return a1;
}

uint64_t assignWithTake for Material.Layer(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  v10 = *(a1 + 32);
  *(a1 + 32) = v4;
  outlined consume of Material.Layer.Storage(v5, v6, v7, v8, v10);
  *(a1 + 36) = *(a2 + 36);
  v11 = *(a2 + 48);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v11;
  outlined consume of GraphicsBlendMode(v12, v13);
  return a1;
}

__n128 __swift_memcpy86_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 78) = *(a2 + 78);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t type metadata completion function for MaterialProviderBox()
{
  result = swift_checkMetadataState();
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

void *assignWithCopy for Material.Layer.Glass(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];

  return a1;
}

uint64_t assignWithTake for Material.Layer.Glass(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for Material.Layer.SDFLayer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  return a1;
}

uint64_t assignWithTake for Material.Layer.SDFLayer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  return a1;
}

uint64_t getEnumTagSinglePayload for Material.Layer.SDFLayer.GroupType(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*a1 >> 33) & 0x7F | (*a1 >> 34) & 0x3F80 | (*a1 >> 35) & 0x1FFFC000 | (*(a1 + 16) >> 1 << 29);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for Material.Layer.SDFLayer.GroupType(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *result = (-a2 << 34) & 0xFE0000000000 | ((-a2 & 0x7F) << 33) & 0x1FFFFFFFFFFFFLL | ((-a2 >> 14) << 49);
      *(result + 8) = 0;
      *(result + 16) = (-a2 >> 28) & 0xE;
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Material.Layer.SDFLayer.BackdropLayer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Material.Layer.SDFLayer.BackdropLayer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t assignWithCopy for Material.Layer.SDFLayer.GroupLayer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v4);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for Material.Layer.SDFLayer.GroupLayer(uint64_t a1, uint64_t a2)
{

  v4 = *(a1 + 8);
  *a1 = *a2;
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v4);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

unint64_t *assignWithCopy for Material.Layer.SDFLayer.GroupLayer.Blend(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(*a2);
  v4 = *a1;
  *a1 = v3;
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v4);
  return a1;
}

unint64_t *assignWithTake for Material.Layer.SDFLayer.GroupLayer.Blend(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for Material.Layer.SDFLayer.GroupLayer.Blend(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE && *(a1 + 8))
  {
    return (*a1 + 14);
  }

  v3 = (((*a1 >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*a1 >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Material.Layer.SDFLayer.GroupLayer.Blend(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD)
  {
    *result = a2 - 14;
    if (a3 >= 0xE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t outlined copy of Material.Layer.Contents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3)
  {
  }

  if (a5 == 2 || a5 == 1)
  {
  }

  return result;
}

uint64_t outlined consume of Material.Layer.Contents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3)
  {
  }

  if (a5 == 2 || a5 == 1)
  {
  }

  return result;
}

uint64_t initializeWithCopy for Material.Layer.Contents.Backdrop(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for Material.Layer.Contents.Backdrop(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t outlined copy of Material.Layer.SDFLayer.Contents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{
  v13 = a13 >> 60;
  if ((a13 >> 60) > 7)
  {
    if (v13 != 8)
    {
      if (v13 != 9)
      {
        return result;
      }

      goto LABEL_8;
    }
  }

  else
  {
    if (v13 != 2)
    {
      if (v13 != 4)
      {
        return result;
      }

LABEL_8:
    }
  }
}

uint64_t outlined consume of Material.Layer.SDFLayer.Contents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{
  v13 = a13 >> 60;
  if ((a13 >> 60) > 7)
  {
    if (v13 != 8)
    {
      if (v13 != 9)
      {
        return result;
      }

      goto LABEL_8;
    }
  }

  else
  {
    if (v13 != 2)
    {
      if (v13 != 4)
      {
        return result;
      }

LABEL_8:
    }
  }
}

uint64_t *initializeWithCopy for Material.Layer.SDFLayer.Contents(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  v13 = a2[9];
  v14 = a2[10];
  v15 = a2[11];
  v16 = a2[12];
  v17 = a2[13];
  v18 = a2[14];
  v19 = a2[15];
  v20 = a2[16];
  outlined copy of Material.Layer.SDFLayer.Contents(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16);
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
  a1[13] = v17;
  a1[14] = v18;
  a1[15] = v19;
  a1[16] = v20;
  return a1;
}

uint64_t assignWithCopy for Material.Layer.SDFLayer.Contents(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  v24 = a2[9];
  v25 = a2[10];
  v26 = a2[11];
  v27 = a2[12];
  v28 = a2[13];
  v29 = a2[14];
  v30 = a2[15];
  v31 = a2[16];
  outlined copy of Material.Layer.SDFLayer.Contents(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v24, v25, v26, v27);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v22 = *(a1 + 96);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v24;
  *(a1 + 80) = v25;
  *(a1 + 88) = v26;
  *(a1 + 96) = v27;
  *(a1 + 104) = v28;
  *(a1 + 112) = v29;
  *(a1 + 120) = v30;
  *(a1 + 128) = v31;
  outlined consume of Material.Layer.SDFLayer.Contents(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22);
  return a1;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t assignWithTake for Material.Layer.SDFLayer.Contents(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 128);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 80);
  v14 = *(a1 + 96);
  v15 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v15;
  v16 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v16;
  v17 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v17;
  v18 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v18;
  *(a1 + 128) = v3;
  outlined consume of Material.Layer.SDFLayer.Contents(v4, v6, v5, v7, v8, v9, v10, v11, v12, *(&v12 + 1), v13, *(&v13 + 1), v14);
  return a1;
}

uint64_t getEnumTagSinglePayload for Material.Layer.SDFLayer.Contents(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 100);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 28;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

double storeEnumTagSinglePayload for Material.Layer.SDFLayer.Contents(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 120) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 136) = 1;
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
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      HIDWORD(v4) = -a2;
      LODWORD(v4) = -a2;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 96) = (v4 >> 4) << 32;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      return result;
    }

    *(a1 + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Material.Layer.SDFLayer.Contents.GlassKeyFillHighlight(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 136))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Material.Layer.SDFLayer.Contents.GlassKeyFillHighlight(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void destroy for Material.Layer.Filter.Contents(uint64_t a1)
{
  v1 = *(a1 + 124);
  if (v1 >= 0xD)
  {
    v1 = *a1 + 13;
  }

  if (v1 > 6)
  {
    if (v1 <= 9)
    {
      if (v1 == 7)
      {
        v3 = *(a1 + 16);
        v2 = *(a1 + 24);
        v4 = *(a1 + 32);
        v5 = *(a1 + 40);
        v6 = *(a1 + 48);
        v7 = *(a1 + 56);
        v8 = *(a1 + 64);
        v9 = *(a1 + 72);
        v10 = *(a1 + 80);
        v11 = *(a1 + 96);
        v12 = *(a1 + 112);
        v13 = *(a1 + 120);
        goto LABEL_11;
      }

LABEL_9:
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
      v4 = *(a1 + 24);
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v9 = *(a1 + 64);
      v10 = *(a1 + 72);
      v11 = *(a1 + 88);
      v12 = *(a1 + 104);
      v13 = *(a1 + 112);
LABEL_11:
      outlined consume of VariableBlurStyle.Mask(v3, v2, v4, v5, v6, v7, v8, v9, v10, *(&v10 + 1), v11, *(&v11 + 1), v12, v13);
      return;
    }

    if (v1 == 10)
    {
      return;
    }

    if (v1 == 11)
    {
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t initializeWithCopy for Material.Layer.Filter.Contents(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 124);
  if (v2 >= 0xD)
  {
    v2 = *a2 + 13;
  }

  v3 = 0;
  switch(v2)
  {
    case 1u:
      *result = *a2;
      v3 = 1;
      break;
    case 2u:
      v27 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v27;
      v28 = *(a2 + 48);
      *(result + 32) = *(a2 + 32);
      *(result + 48) = v28;
      v3 = 2;
      break;
    case 3u:
      *result = *a2;
      v3 = 3;
      break;
    case 4u:
      v14 = *(a2 + 48);
      *(result + 32) = *(a2 + 32);
      *(result + 48) = v14;
      *(result + 64) = *(a2 + 64);
      *(result + 80) = *(a2 + 80);
      v15 = *(a2 + 16);
      v3 = 4;
      *result = *a2;
      *(result + 16) = v15;
      break;
    case 5u:
      *result = *a2;
      *(result + 8) = *(a2 + 8);
      v3 = 5;
      break;
    case 6u:
      *result = *a2;
      *(result + 16) = *(a2 + 16);
      v3 = 6;
      break;
    case 7u:
      *result = *a2;
      *(result + 8) = *(a2 + 8);
      v29 = *(a2 + 16);
      v30 = *(a2 + 24);
      v31 = *(a2 + 32);
      v32 = *(a2 + 40);
      v33 = *(a2 + 48);
      v34 = *(a2 + 56);
      v35 = *(a2 + 64);
      v36 = *(a2 + 72);
      v37 = *(a2 + 80);
      v50 = *(a2 + 88);
      v54 = *(a2 + 96);
      v58 = *(a2 + 104);
      v62 = *(a2 + 112);
      v65 = *(a2 + 120);
      v38 = result;
      outlined copy of VariableBlurStyle.Mask(v29, v30, v31, v32, v33, v34, v35, v36, v37, v50, v54, v58, v62, v65);
      result = v38;
      *(v38 + 16) = v29;
      *(v38 + 24) = v30;
      *(v38 + 32) = v31;
      *(v38 + 40) = v32;
      *(v38 + 48) = v33;
      *(v38 + 56) = v34;
      *(v38 + 64) = v35;
      *(v38 + 72) = v36;
      *(v38 + 80) = v37;
      *(v38 + 88) = v50;
      *(v38 + 96) = v54;
      *(v38 + 104) = v58;
      *(v38 + 112) = v62;
      v3 = 7;
      *(v38 + 120) = v65;
      break;
    case 8u:
      v39 = *(a2 + 8);
      *result = *a2;
      v40 = *(a2 + 16);
      v41 = *(a2 + 24);
      v42 = *(a2 + 32);
      v43 = *(a2 + 40);
      v44 = *(a2 + 48);
      v45 = *(a2 + 56);
      v46 = *(a2 + 64);
      v47 = *(a2 + 72);
      v51 = *(a2 + 80);
      v55 = *(a2 + 88);
      v59 = *(a2 + 96);
      v63 = *(a2 + 104);
      v64 = *(a2 + 112);
      v13 = result;
      outlined copy of VariableBlurStyle.Mask(v39, v40, v41, v42, v43, v44, v45, v46, v47, v51, v55, v59, v63, v64);
      result = v13;
      *(v13 + 8) = v39;
      *(v13 + 16) = v40;
      *(v13 + 24) = v41;
      *(v13 + 32) = v42;
      *(v13 + 40) = v43;
      *(v13 + 48) = v44;
      *(v13 + 56) = v45;
      *(v13 + 64) = v46;
      *(v13 + 72) = v47;
      *(v13 + 80) = v51;
      *(v13 + 88) = v55;
      *(v13 + 96) = v59;
      *(v13 + 104) = v63;
      v3 = 8;
      goto LABEL_16;
    case 9u:
      v18 = *(a2 + 8);
      *result = *a2;
      v19 = *(a2 + 16);
      v20 = *(a2 + 24);
      v21 = *(a2 + 32);
      v22 = *(a2 + 40);
      v23 = *(a2 + 48);
      v24 = *(a2 + 56);
      v25 = *(a2 + 64);
      v26 = *(a2 + 72);
      v49 = *(a2 + 80);
      v53 = *(a2 + 88);
      v57 = *(a2 + 96);
      v61 = *(a2 + 104);
      v64 = *(a2 + 112);
      v13 = result;
      outlined copy of VariableBlurStyle.Mask(v18, v19, v20, v21, v22, v23, v24, v25, v26, v49, v53, v57, v61, v64);
      result = v13;
      *(v13 + 8) = v18;
      *(v13 + 16) = v19;
      *(v13 + 24) = v20;
      *(v13 + 32) = v21;
      *(v13 + 40) = v22;
      *(v13 + 48) = v23;
      *(v13 + 56) = v24;
      *(v13 + 64) = v25;
      *(v13 + 72) = v26;
      *(v13 + 80) = v49;
      *(v13 + 88) = v53;
      *(v13 + 96) = v57;
      *(v13 + 104) = v61;
      v3 = 9;
      goto LABEL_16;
    case 0xAu:
      *result = *a2;
      *(result + 8) = *(a2 + 8);
      v3 = 10;
      break;
    case 0xBu:
      v4 = *(a2 + 8);
      *result = *a2;
      v5 = *(a2 + 16);
      v6 = *(a2 + 24);
      v7 = *(a2 + 32);
      v8 = *(a2 + 40);
      v9 = *(a2 + 48);
      v10 = *(a2 + 56);
      v11 = *(a2 + 64);
      v12 = *(a2 + 72);
      v48 = *(a2 + 80);
      v52 = *(a2 + 88);
      v56 = *(a2 + 96);
      v60 = *(a2 + 104);
      v64 = *(a2 + 112);
      v13 = result;
      outlined copy of VariableBlurStyle.Mask(v4, v5, v6, v7, v8, v9, v10, v11, v12, v48, v52, v56, v60, v64);
      result = v13;
      *(v13 + 8) = v4;
      *(v13 + 16) = v5;
      *(v13 + 24) = v6;
      *(v13 + 32) = v7;
      *(v13 + 40) = v8;
      *(v13 + 48) = v9;
      *(v13 + 56) = v10;
      *(v13 + 64) = v11;
      *(v13 + 72) = v12;
      *(v13 + 80) = v48;
      *(v13 + 88) = v52;
      *(v13 + 96) = v56;
      *(v13 + 104) = v60;
      v3 = 11;
LABEL_16:
      *(v13 + 112) = v64;
      break;
    case 0xCu:
      v16 = *(a2 + 24);
      *(result + 24) = v16;
      v17 = result;
      (**(v16 - 8))();
      result = v17;
      v3 = 12;
      break;
    default:
      break;
  }

  *(result + 124) = v3;
  return result;
}

uint64_t assignWithCopy for Material.Layer.Filter.Contents(uint64_t result, __int128 *a2)
{
  if (result != a2)
  {
    v2 = *(result + 124);
    if (v2 >= 0xD)
    {
      v2 = *result + 13;
    }

    if (v2 > 6)
    {
      if (v2 > 9)
      {
        if (v2 != 10)
        {
          v5 = a2;
          v6 = result;
          if (v2 == 11)
          {
            outlined consume of VariableBlurStyle.Mask(*(result + 8), *(result + 16), *(result + 24), *(result + 32), *(result + 40), *(result + 48), *(result + 56), *(result + 64), *(result + 72), *(result + 80), *(result + 88), *(result + 96), *(result + 104), *(result + 112));
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(result);
          }

          result = v6;
          a2 = v5;
        }
      }

      else if (v2 == 7)
      {
        v7 = result;
        v8 = a2;
        outlined consume of VariableBlurStyle.Mask(*(result + 16), *(result + 24), *(result + 32), *(result + 40), *(result + 48), *(result + 56), *(result + 64), *(result + 72), *(result + 80), *(result + 88), *(result + 96), *(result + 104), *(result + 112), *(result + 120));
        a2 = v8;
        result = v7;
      }

      else
      {
        v3 = a2;
        v4 = result;
        outlined consume of VariableBlurStyle.Mask(*(result + 8), *(result + 16), *(result + 24), *(result + 32), *(result + 40), *(result + 48), *(result + 56), *(result + 64), *(result + 72), *(result + 80), *(result + 88), *(result + 96), *(result + 104), *(result + 112));
        result = v4;
        a2 = v3;
      }
    }

    v9 = *(a2 + 124);
    if (v9 >= 0xD)
    {
      v9 = *a2 + 13;
    }

    v10 = 0;
    switch(v9)
    {
      case 1u:
        *result = *a2;
        v10 = 1;
        break;
      case 2u:
        v36 = *a2;
        v37 = a2[1];
        v38 = a2[3];
        *(result + 32) = a2[2];
        *(result + 48) = v38;
        *result = v36;
        *(result + 16) = v37;
        v10 = 2;
        break;
      case 3u:
        *result = *a2;
        v10 = 3;
        break;
      case 4u:
        v21 = a2[1];
        *result = *a2;
        *(result + 16) = v21;
        v22 = a2[2];
        v23 = a2[3];
        v24 = a2[4];
        *(result + 80) = *(a2 + 80);
        *(result + 48) = v23;
        *(result + 64) = v24;
        *(result + 32) = v22;
        v10 = 4;
        break;
      case 5u:
        v49 = *a2;
        *(result + 8) = *(a2 + 4);
        *result = v49;
        v10 = 5;
        break;
      case 6u:
        v50 = *a2;
        *(result + 16) = *(a2 + 4);
        *result = v50;
        v10 = 6;
        break;
      case 7u:
        *result = *a2;
        *(result + 8) = *(a2 + 8);
        *(result + 9) = *(a2 + 9);
        v39 = *(a2 + 2);
        v40 = *(a2 + 3);
        v41 = *(a2 + 4);
        v42 = *(a2 + 5);
        v43 = *(a2 + 6);
        v44 = *(a2 + 7);
        v45 = *(a2 + 8);
        v46 = *(a2 + 9);
        v47 = *(a2 + 10);
        v63 = *(a2 + 11);
        v67 = *(a2 + 12);
        v71 = *(a2 + 13);
        v75 = *(a2 + 14);
        v78 = *(a2 + 30);
        v48 = result;
        outlined copy of VariableBlurStyle.Mask(v39, v40, v41, v42, v43, v44, v45, v46, v47, v63, v67, v71, v75, v78);
        result = v48;
        *(v48 + 16) = v39;
        *(v48 + 24) = v40;
        *(v48 + 32) = v41;
        *(v48 + 40) = v42;
        *(v48 + 48) = v43;
        *(v48 + 56) = v44;
        *(v48 + 64) = v45;
        *(v48 + 72) = v46;
        *(v48 + 80) = v47;
        *(v48 + 88) = v63;
        *(v48 + 96) = v67;
        *(v48 + 104) = v71;
        *(v48 + 112) = v75;
        v10 = 7;
        *(v48 + 120) = v78;
        break;
      case 8u:
        *result = *a2;
        v52 = *(a2 + 1);
        v53 = *(a2 + 2);
        v54 = *(a2 + 3);
        v55 = *(a2 + 4);
        v56 = *(a2 + 5);
        v57 = *(a2 + 6);
        v58 = *(a2 + 7);
        v59 = *(a2 + 8);
        v60 = *(a2 + 9);
        v64 = *(a2 + 10);
        v68 = *(a2 + 11);
        v72 = *(a2 + 12);
        v76 = *(a2 + 13);
        v77 = *(a2 + 28);
        v20 = result;
        outlined copy of VariableBlurStyle.Mask(v52, v53, v54, v55, v56, v57, v58, v59, v60, v64, v68, v72, v76, v77);
        result = v20;
        *(v20 + 8) = v52;
        *(v20 + 16) = v53;
        *(v20 + 24) = v54;
        *(v20 + 32) = v55;
        *(v20 + 40) = v56;
        *(v20 + 48) = v57;
        *(v20 + 56) = v58;
        *(v20 + 64) = v59;
        *(v20 + 72) = v60;
        *(v20 + 80) = v64;
        *(v20 + 88) = v68;
        *(v20 + 96) = v72;
        *(v20 + 104) = v76;
        v10 = 8;
        goto LABEL_29;
      case 9u:
        *result = *a2;
        v27 = *(a2 + 1);
        v28 = *(a2 + 2);
        v29 = *(a2 + 3);
        v30 = *(a2 + 4);
        v31 = *(a2 + 5);
        v32 = *(a2 + 6);
        v33 = *(a2 + 7);
        v34 = *(a2 + 8);
        v35 = *(a2 + 9);
        v62 = *(a2 + 10);
        v66 = *(a2 + 11);
        v70 = *(a2 + 12);
        v74 = *(a2 + 13);
        v77 = *(a2 + 28);
        v20 = result;
        outlined copy of VariableBlurStyle.Mask(v27, v28, v29, v30, v31, v32, v33, v34, v35, v62, v66, v70, v74, v77);
        result = v20;
        *(v20 + 8) = v27;
        *(v20 + 16) = v28;
        *(v20 + 24) = v29;
        *(v20 + 32) = v30;
        *(v20 + 40) = v31;
        *(v20 + 48) = v32;
        *(v20 + 56) = v33;
        *(v20 + 64) = v34;
        *(v20 + 72) = v35;
        *(v20 + 80) = v62;
        *(v20 + 88) = v66;
        *(v20 + 96) = v70;
        *(v20 + 104) = v74;
        v10 = 9;
        goto LABEL_29;
      case 0xAu:
        v51 = *a2;
        *(result + 8) = *(a2 + 4);
        *result = v51;
        v10 = 10;
        break;
      case 0xBu:
        *result = *a2;
        v11 = *(a2 + 1);
        v12 = *(a2 + 2);
        v13 = *(a2 + 3);
        v14 = *(a2 + 4);
        v15 = *(a2 + 5);
        v16 = *(a2 + 6);
        v17 = *(a2 + 7);
        v18 = *(a2 + 8);
        v19 = *(a2 + 9);
        v61 = *(a2 + 10);
        v65 = *(a2 + 11);
        v69 = *(a2 + 12);
        v73 = *(a2 + 13);
        v77 = *(a2 + 28);
        v20 = result;
        outlined copy of VariableBlurStyle.Mask(v11, v12, v13, v14, v15, v16, v17, v18, v19, v61, v65, v69, v73, v77);
        result = v20;
        *(v20 + 8) = v11;
        *(v20 + 16) = v12;
        *(v20 + 24) = v13;
        *(v20 + 32) = v14;
        *(v20 + 40) = v15;
        *(v20 + 48) = v16;
        *(v20 + 56) = v17;
        *(v20 + 64) = v18;
        *(v20 + 72) = v19;
        *(v20 + 80) = v61;
        *(v20 + 88) = v65;
        *(v20 + 96) = v69;
        *(v20 + 104) = v73;
        v10 = 11;
LABEL_29:
        *(v20 + 112) = v77;
        break;
      case 0xCu:
        v25 = *(a2 + 3);
        *(result + 24) = v25;
        *(result + 32) = *(a2 + 4);
        v26 = result;
        (**(v25 - 8))();
        result = v26;
        v10 = 12;
        break;
      default:
        break;
    }

    *(result + 124) = v10;
  }

  return result;
}

__n128 __swift_memcpy125_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for Material.Layer.Filter.Contents(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = *(result + 124);
    if (v2 >= 0xD)
    {
      v2 = *result + 13;
    }

    if (v2 > 6)
    {
      if (v2 > 9)
      {
        if (v2 != 10)
        {
          v5 = a2;
          v6 = result;
          if (v2 == 11)
          {
            outlined consume of VariableBlurStyle.Mask(*(result + 8), *(result + 16), *(result + 24), *(result + 32), *(result + 40), *(result + 48), *(result + 56), *(result + 64), *(result + 72), *(result + 80), *(result + 88), *(result + 96), *(result + 104), *(result + 112));
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(result);
          }

          result = v6;
          a2 = v5;
        }
      }

      else if (v2 == 7)
      {
        v7 = result;
        v8 = a2;
        outlined consume of VariableBlurStyle.Mask(*(result + 16), *(result + 24), *(result + 32), *(result + 40), *(result + 48), *(result + 56), *(result + 64), *(result + 72), *(result + 80), *(result + 88), *(result + 96), *(result + 104), *(result + 112), *(result + 120));
        a2 = v8;
        result = v7;
      }

      else
      {
        v3 = a2;
        v4 = result;
        outlined consume of VariableBlurStyle.Mask(*(result + 8), *(result + 16), *(result + 24), *(result + 32), *(result + 40), *(result + 48), *(result + 56), *(result + 64), *(result + 72), *(result + 80), *(result + 88), *(result + 96), *(result + 104), *(result + 112));
        result = v4;
        a2 = v3;
      }
    }

    v9 = *(a2 + 124);
    if (v9 >= 0xD)
    {
      v9 = *a2 + 13;
    }

    v10 = 0;
    switch(v9)
    {
      case 1u:
        *result = *a2;
        v10 = 1;
        break;
      case 2u:
        v20 = *(a2 + 16);
        *result = *a2;
        *(result + 16) = v20;
        v21 = *(a2 + 48);
        *(result + 32) = *(a2 + 32);
        *(result + 48) = v21;
        v10 = 2;
        break;
      case 3u:
        *result = *a2;
        v10 = 3;
        break;
      case 4u:
        v15 = *(a2 + 48);
        *(result + 32) = *(a2 + 32);
        *(result + 48) = v15;
        *(result + 64) = *(a2 + 64);
        *(result + 80) = *(a2 + 80);
        v16 = *(a2 + 16);
        v10 = 4;
        *result = *a2;
        *(result + 16) = v16;
        break;
      case 5u:
        *result = *a2;
        *(result + 8) = *(a2 + 8);
        v10 = 5;
        break;
      case 6u:
        *result = *a2;
        *(result + 16) = *(a2 + 16);
        v10 = 6;
        break;
      case 7u:
        v22 = *(a2 + 80);
        *(result + 64) = *(a2 + 64);
        *(result + 80) = v22;
        *(result + 96) = *(a2 + 96);
        *(result + 108) = *(a2 + 108);
        v23 = *(a2 + 16);
        *result = *a2;
        *(result + 16) = v23;
        v13 = *(a2 + 32);
        v14 = *(a2 + 48);
        v10 = 7;
        goto LABEL_29;
      case 8u:
        v24 = *(a2 + 80);
        *(result + 64) = *(a2 + 64);
        *(result + 80) = v24;
        *(result + 96) = *(a2 + 96);
        *(result + 112) = *(a2 + 112);
        v25 = *(a2 + 16);
        *result = *a2;
        *(result + 16) = v25;
        v13 = *(a2 + 32);
        v14 = *(a2 + 48);
        v10 = 8;
        goto LABEL_29;
      case 9u:
        v18 = *(a2 + 80);
        *(result + 64) = *(a2 + 64);
        *(result + 80) = v18;
        *(result + 96) = *(a2 + 96);
        *(result + 112) = *(a2 + 112);
        v19 = *(a2 + 16);
        *result = *a2;
        *(result + 16) = v19;
        v13 = *(a2 + 32);
        v14 = *(a2 + 48);
        v10 = 9;
        goto LABEL_29;
      case 0xAu:
        *result = *a2;
        *(result + 8) = *(a2 + 8);
        v10 = 10;
        break;
      case 0xBu:
        v11 = *(a2 + 80);
        *(result + 64) = *(a2 + 64);
        *(result + 80) = v11;
        *(result + 96) = *(a2 + 96);
        *(result + 112) = *(a2 + 112);
        v12 = *(a2 + 16);
        *result = *a2;
        *(result + 16) = v12;
        v13 = *(a2 + 32);
        v14 = *(a2 + 48);
        v10 = 11;
LABEL_29:
        *(result + 32) = v13;
        *(result + 48) = v14;
        break;
      case 0xCu:
        v17 = *(a2 + 16);
        *result = *a2;
        *(result + 16) = v17;
        *(result + 32) = *(a2 + 32);
        v10 = 12;
        break;
      default:
        break;
    }

    *(result + 124) = v10;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Material.Layer.Filter.Contents(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 125))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 124);
  if (v3 >= 0xD)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Material.Layer.Filter.Contents(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 109) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 125) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 125) = 0;
    }

    if (a2)
    {
      *(result + 124) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for Material.Layer.Filter.Contents(uint64_t result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *(result + 108) = 0u;
    v2 = a2 - 13;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 13;
    *result = v2;
  }

  *(result + 124) = a2;
  return result;
}

__n128 __swift_memcpy81_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Material.Layer.Filter.Contents.ColorMatrix(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Material.Layer.Filter.Contents.ColorMatrix(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 1;
    }
  }

  return result;
}

id outlined copy of Material.Layer.Filter.Contents.VariableBlur.Mask(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

void outlined consume of Material.Layer.Filter.Contents.VariableBlur.Mask(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

uint64_t assignWithCopy for Material.Layer.Filter.Contents.VariableBlur.Mask(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of Material.Layer.Filter.Contents.VariableBlur.Mask(*a2, v4);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of Material.Layer.Filter.Contents.VariableBlur.Mask(v5, v6);
  return a1;
}

uint64_t assignWithTake for Material.Layer.Filter.Contents.VariableBlur.Mask(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of Material.Layer.Filter.Contents.VariableBlur.Mask(v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for Material.ForegroundStyle.Contents(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 86))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 85);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Material.ForegroundStyle.Contents(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 84) = 0;
    *(result + 80) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 86) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 86) = 0;
    }

    if (a2)
    {
      *(result + 85) = -a2;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for StatefulMaterialProviderBox.Cache(void *a1, void *a2)
{
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 80);
  *a1 = *a2;
  return  + (((v4 & 0xF8) + 23) & ~(v4 & 0xF8) & 0x1F8);
}

uint64_t destroy for StatefulMaterialProviderBox.Cache(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);

  return swift_weakDestroy();
}

uint64_t initializeWithCopy for StatefulMaterialProviderBox.Cache(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, a2, AssociatedTypeWitness);
  swift_weakCopyInit();
  return a1;
}

uint64_t assignWithCopy for StatefulMaterialProviderBox.Cache(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(a1, a2, AssociatedTypeWitness);
  swift_weakCopyAssign();
  return a1;
}

uint64_t initializeWithTake for StatefulMaterialProviderBox.Cache(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a1, a2, AssociatedTypeWitness);
  swift_weakTakeInit();
  return a1;
}

uint64_t assignWithTake for StatefulMaterialProviderBox.Cache(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(a1, a2, AssociatedTypeWitness);
  swift_weakTakeAssign();
  return a1;
}

uint64_t initializeWithCopy for Material.Layer.Contents(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = *(a2 + 32);
  a4(*a2, v6, v7, v8, v9);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  return a1;
}

uint64_t *assignWithCopy for Material.Layer.Contents(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = *(a2 + 32);
  a4(*a2, v8, v9, v10, v11);
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  *a1 = v7;
  a1[1] = v8;
  a1[2] = v9;
  a1[3] = v10;
  v16 = *(a1 + 32);
  *(a1 + 32) = v11;
  a5(v12, v13, v14, v15, v16);
  return a1;
}

uint64_t *assignWithTake for Material.Layer.Contents(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a2 + 32);
  v7 = *a1;
  v9 = a1[1];
  v8 = a1[2];
  v10 = a1[3];
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 1) = v11;
  v12 = *(a1 + 32);
  *(a1 + 32) = v6;
  a4(v7, v9, v8, v10, v12);
  return a1;
}

uint64_t getEnumTagSinglePayload for Material.Layer.Contents(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Material.Layer.Contents(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MaterialColorRenderingMode.Role and conformance MaterialColorRenderingMode.Role()
{
  result = lazy protocol witness table cache variable for type MaterialColorRenderingMode.Role and conformance MaterialColorRenderingMode.Role;
  if (!lazy protocol witness table cache variable for type MaterialColorRenderingMode.Role and conformance MaterialColorRenderingMode.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialColorRenderingMode.Role and conformance MaterialColorRenderingMode.Role);
  }

  return result;
}

uint64_t _ClipEffect.style.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  if (v2[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return v4 | v3;
}

uint64_t _ClipEffect.style.setter(uint64_t result, uint64_t a2)
{
  v3 = (v2 + *(a2 + 36));
  *v3 = result & 1;
  v3[1] = BYTE1(result) & 1;
  return result;
}

uint64_t _ClipEffect.init(shape:style:)@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for _ClipEffect();
  v7 = (a4 + *(result + 36));
  *v7 = a2 & 1;
  v7[1] = HIBYTE(a2) & 1;
  return result;
}

uint64_t _ClipEffect.animatableData.setter(uint64_t a1, uint64_t a2)
{
  specialized _ClipEffect.animatableData.setter(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

void (*_ClipEffect.animatableData.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v9 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[2] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v7[3] = v11;
  v12 = *(v11 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v7[5] = v13;
  (*(v9 + 24))(v8, v9);
  return _ClipEffect.animatableData.modify;
}

void _ClipEffect.animatableData.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    specialized _ClipEffect.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized _ClipEffect.animatableData.setter((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance _ClipEffect<A>(uint64_t a1, uint64_t a2)
{
  specialized _ClipEffect.animatableData.setter(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

void (*protocol witness for Animatable.animatableData.modify in conformance _ClipEffect<A>(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v6[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[2] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  _ClipEffect.animatableData.getter(a2);
  return protocol witness for Animatable.animatableData.modify in conformance _ClipEffect<A>;
}

void protocol witness for Animatable.animatableData.modify in conformance _ClipEffect<A>(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  v7 = *(*a1 + 8);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 32), v4, v5);
    specialized _ClipEffect.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized _ClipEffect.animatableData.setter(*(*a1 + 40), v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t View.clipped(antialiased:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
  if (a1)
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  return View.clipShape<A>(_:style:)(v6, v7, a2, &type metadata for Rectangle, a3);
}

uint64_t View.cornerRadius(_:antialiased:)(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v10 = 1;
  *v9 = a4;
  *&v9[1] = a4;
  lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle();
  if (a1)
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  return View.clipShape<A>(_:style:)(v9, v7, a2, &type metadata for RoundedRectangle, a3);
}

uint64_t specialized _ClipEffect.animatableData.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return (*(v4 + 32))(v8, v3, v4);
}

uint64_t *initializeBufferWithCopyOfBuffer for _ClipEffect(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (v6 <= 7 && (v5 + 2) <= 0x18 && (*(v4 + 80) & 0x100000) == 0)
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

uint64_t initializeWithTake for _ClipEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *(*(v5 + 32) + a1) = *(*(v5 + 32) + a2);
  return a1;
}

uint64_t assignWithTake for _ClipEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = (v6 + a1);
  v8 = (v6 + a2);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA11_ClipEffectVyAA9RectangleVGGAaBHPxAaBHD1__AiA0C8ModifierHPyHCHCTm(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  type metadata accessor for _ClipEffect<Rectangle>(255, a2, a3);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

void type metadata accessor for _ClipEffect<Rectangle>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for _ClipEffect();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t closure #1 in ItemIDTransform.updateValue()(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a2)
  {
    v4 = *result;
    v5 = *(*result + 16);
    if (v5)
    {
      v18 = result;
      v9 = ~(a3 << 32) + a3;

      v10 = 0;
      v11 = 0;
      while (1)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
          v4 = result;
        }

        if (v11 >= *(v4 + 16))
        {
          break;
        }

        v12 = v4 + v10;
        *(v12 + 40) = a2;
        *(v12 + 48) = a4;

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_18;
        }

        v13 = *(v12 + 152);
        if (v13 != -1 && a3)
        {
          v14 = a3;
          if (v13)
          {
            v14 = a3;
            if (a3 != -1)
            {
              v15 = (v9 + (v13 << 32)) ^ ((v9 + (v13 << 32)) >> 22);
              v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
              v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
              v14 = (v17 >> 31) ^ v17;
            }
          }

          *(v12 + 152) = v14;
        }

        ++v11;
        v10 += 656;
        if (v5 == v11)
        {

          *v18 = v4;
          return result;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }
  }

  return result;
}

void *assignWithTake for GlassEffectIDModifier(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

unint64_t instantiation function for generic protocol witness table for ItemIDTransform(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ItemIDTransform and conformance ItemIDTransform();
  *(a1 + 8) = result;
  return result;
}

uint64_t static TupleDescriptor.tupleDescription(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = (*(a3 + 16))(a2, a3);
  v16 = a1;
  v9 = *(a3 + 8);
  v10 = type metadata accessor for TupleTypeDescription();
  MEMORY[0x193ABE750](v15, &v16, v8, MEMORY[0x1E69E5FE0], v10, MEMORY[0x1E69E5FE8]);

  v12 = v15[0];
  if (!v15[0])
  {
    TupleTypeDescription.init(_:)(a1, a2, v9, v15);
    v12 = v15[0];
    v15[4] = a1;
    v16 = v15[0];
    v13 = *(a3 + 32);

    v14 = v13(v15, a2, a3);
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    result = v14(v15, 0);
  }

  *a4 = v12;
  return result;
}

uint64_t _ViewInputs.geometryTransaction()()
{
  v1 = *(v0 + 28);
  v2 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5Tf4n_g(*v0);
  if (*(v2 + 16))
  {
    return *(v2 + 32);
  }

  return v1;
}

uint64_t View.animation(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v6[0] = partial apply for closure #1 in View.animation(_:);
  v6[1] = v4;
  View.modifier<A>(_:)(v6, a2, &type metadata for _TransactionModifier);
}

uint64_t ViewModifier.animation(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  ViewModifier.transaction(_:)(partial apply for closure #1 in ViewModifier.animation(_:), v6, a2, a3);
}

void *closure #1 in View.animation(_:)(uint64_t *a1, uint64_t a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(*a1);
  if (!result || (result[9] & 1) == 0)
  {
    swift_retain_n();

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a1, a2);
  }

  return result;
}

uint64_t static PlaceholderContentView.withPlaceholderContent<A>(result:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = PlaceholderContentView.init()(v10, v7);
  a1(v11);
  return (*(v6 + 32))(a3, v9, a2);
}

uint64_t key path setter for _TransactionModifier.transform : _TransactionModifier(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout CGRect) -> (@out ());
  a2[1] = v5;
  return result;
}

uint64_t _TransactionModifier.transform.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static _TransactionModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2)
{
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ChildTransaction and conformance ChildTransaction();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(a2 + 28) = result;
  return result;
}

uint64_t key path setter for _ValueTransactionModifier.transform : <A>_ValueTransactionModifier<A>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (a2 + *(type metadata accessor for _ValueTransactionModifier() + 36));

  *v6 = thunk for @escaping @callee_guaranteed (@inout Transaction) -> (@out ())partial apply;
  v6[1] = v5;
  return result;
}

uint64_t _ValueTransactionModifier.transform.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 36));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t _ViewInputs.savedTransactions.getter()
{
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5Tf4n_g(*v0);
}

uint64_t _ViewInputs.savedTransactions.setter(uint64_t a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5(v1, a1);
}

uint64_t protocol witness for Rule.value.getter in conformance ChildTransaction@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = *AGGraphGetValue();

  result = specialized Attribute.syncMainIfReferences<A>(do:)(v4, v4 | (v3 << 32), &v6);
  *a1 = v6;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance ChildValueTransaction@<X0>(uint64_t *a1@<X8>)
{
  result = ChildValueTransaction.value.getter(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t _GraphInputs.savedTransactions.getter()
{
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5Tf4n_g(*v0);
}

uint64_t key path setter for _GraphInputs.savedTransactions : _GraphInputs(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5(a2, v3);
}

uint64_t _GraphInputs.savedTransactions.setter(uint64_t a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5(v1, a1);
}

uint64_t (*_GraphInputs.savedTransactions.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  v4[4] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5Tf4n_g(v5);
  v4[5] = 0;
  *v4 = v6;

  return _GraphInputs.savedTransactions.modify;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.SavedTransactionKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static _GraphInputs.SavedTransactionKey.defaultValue;
}

uint64_t (*_ViewInputs.savedTransactions.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  v4[4] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5Tf4n_g(v5);
  v4[5] = 0;
  *v4 = v6;

  return _ViewInputs.savedTransactions.modify;
}

void _GraphInputs.savedTransactions.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;

  v5 = v3[3];
  if (a2)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5(v5, v4);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5(v3[3], v4);
  }

  free(v3);
}

unint64_t instantiation function for generic protocol witness table for ChildValueTransaction(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ChildValueTransaction and conformance ChildValueTransaction();
  *(a1 + 8) = result;
  return result;
}

uint64_t ViewGraphGeometryObservers.Observer.init(callback:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewGraphGeometryObservers.Observer.Storage();
  swift_storeEnumTagMultiPayload();
  v5 = (v2 + *(*v2 + 104));
  *v5 = a1;
  v5[1] = a2;
  return v2;
}

uint64_t ViewGraphGeometryObservers.Observer.reset()()
{
  v1 = type metadata accessor for ViewGraphGeometryObservers.Observer.Storage();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - v3;
  swift_storeEnumTagMultiPayload();
  v5 = *(*v0 + 96);
  swift_beginAccess();
  (*(v2 + 40))(v0 + v5, v4, v1);
  swift_endAccess();
  return 1;
}

uint64_t ViewGraphGeometryObservers.Observer.deinit()
{
  v1 = *(*v0 + 96);
  v2 = type metadata accessor for ViewGraphGeometryObservers.Observer.Storage();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ViewGraphGeometryObservers.Observer.__deallocating_deinit()
{
  ViewGraphGeometryObservers.Observer.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for ViewGraphGeometryObservers.Observer()
{
  result = type metadata accessor for ViewGraphGeometryObservers.Observer.Storage();
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

uint64_t type metadata completion function for ViewGraphGeometryObservers.Observer.Storage()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    v2[4] = *(result - 8) + 64;
    swift_getTupleTypeLayout2();
    v2[5] = v2;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ViewGraphGeometryObservers.Observer.Storage(void *a1, unsigned __int8 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = ~v7;
  v9 = v6 + v7;
  if ((v9 & v8) + v6 <= v6)
  {
    v10 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v10 = ((v6 + v7) & ~v7) + v6;
  }

  v11 = v10 + 1;
  if (v7 > 7u || (v7 & 0x100000) != 0 || v11 > 0x18)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v7 + 16) & v8));

    return a1;
  }

  v15 = a2[v10];
  v16 = v15 - 2;
  if (v15 >= 2)
  {
    if (v10 <= 3)
    {
      v17 = v10;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_27;
      }

      v18 = *a2;
    }

    else if (v17 == 2)
    {
      v18 = *a2;
    }

    else if (v17 == 3)
    {
      v18 = *a2 | (a2[2] << 16);
    }

    else
    {
      v18 = *a2;
    }

    v19 = (v18 | (v16 << (8 * v10))) + 2;
    v15 = v18 + 2;
    if (v10 < 4)
    {
      v15 = v19;
    }
  }

LABEL_27:
  if (v15 == 1)
  {
    v20 = *(v5 + 16);
    v21 = AssociatedTypeWitness;
    v20(a1, a2, AssociatedTypeWitness);
    v20(((a1 + v9) & v8), (&a2[v9] & v8), v21);
    *(a1 + v10) = 1;
    return a1;
  }

  if (!v15)
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    *(a1 + v10) = 0;
    return a1;
  }

  return memcpy(a1, a2, v11);
}

uint64_t destroy for ViewGraphGeometryObservers.Observer.Storage(unsigned __int8 *a1)
{
  result = swift_getAssociatedTypeWitness();
  v3 = result;
  v4 = *(result - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  v7 = v5 + v6;
  if (((v5 + v6) & ~v6) + v5 > v5)
  {
    v5 += (v5 + v6) & ~v6;
  }

  v8 = a1[v5];
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    if (v5 <= 3)
    {
      v10 = v5;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_17;
      }

      v11 = *a1;
    }

    else if (v10 == 2)
    {
      v11 = *a1;
    }

    else if (v10 == 3)
    {
      v11 = *a1 | (a1[2] << 16);
    }

    else
    {
      v11 = *a1;
    }

    v12 = (v11 | (v9 << (8 * v5))) + 2;
    v8 = v11 + 2;
    if (v5 < 4)
    {
      v8 = v12;
    }
  }

LABEL_17:
  if (v8 == 1)
  {
    v16 = ~v6;
    v17 = *(v4 + 8);
    v17(a1, result);
    v14 = (&a1[v7] & v16);
    v15 = v3;
    v13 = v17;
  }

  else
  {
    if (v8)
    {
      return result;
    }

    v13 = *(v4 + 8);
    v14 = a1;
    v15 = v3;
  }

  return v13(v14, v15);
}

_BYTE *initializeWithCopy for ViewGraphGeometryObservers.Observer.Storage(_BYTE *a1, unsigned __int8 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  if (((v6 + v7) & ~v7) + v6 <= v6)
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v9 = ((v6 + v7) & ~v7) + v6;
  }

  v10 = a2[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
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
        goto LABEL_18;
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

    v14 = (v13 | (v11 << (8 * v9))) + 2;
    v10 = v13 + 2;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_18:
  if (v10 == 1)
  {
    v15 = ~v7;
    v16 = *(v5 + 16);
    v16(a1, a2, AssociatedTypeWitness);
    v16((&a1[v8] & v15), (&a2[v8] & v15), AssociatedTypeWitness);
    a1[v9] = 1;
    return a1;
  }

  if (!v10)
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    a1[v9] = 0;
    return a1;
  }

  return memcpy(a1, a2, v9 + 1);
}

unsigned __int8 *assignWithCopy for ViewGraphGeometryObservers.Observer.Storage(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  if (((v6 + v7) & ~v7) + v6 <= v6)
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v9 = ((v6 + v7) & ~v7) + v6;
  }

  v10 = 8 * v9;
  v11 = a1[v9];
  v12 = v11 - 2;
  if (v11 >= 2)
  {
    if (v9 <= 3)
    {
      v13 = v9;
    }

    else
    {
      v13 = 4;
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        goto LABEL_19;
      }

      v14 = *a1;
    }

    else if (v13 == 2)
    {
      v14 = *a1;
    }

    else if (v13 == 3)
    {
      v14 = *a1 | (a1[2] << 16);
    }

    else
    {
      v14 = *a1;
    }

    v15 = (v14 | (v12 << v10)) + 2;
    v11 = v14 + 2;
    if (v9 < 4)
    {
      v11 = v15;
    }
  }

LABEL_19:
  v16 = ~v7;
  if (v11 == 1)
  {
    v17 = *(v5 + 8);
    v17(a1, AssociatedTypeWitness);
    v17((&a1[v8] & v16), AssociatedTypeWitness);
  }

  else if (!v11)
  {
    (*(v5 + 8))(a1, AssociatedTypeWitness);
  }

  v18 = a2[v9];
  v19 = v18 - 2;
  if (v18 >= 2)
  {
    if (v9 <= 3)
    {
      v20 = v9;
    }

    else
    {
      v20 = 4;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_37;
      }

      v21 = *a2;
    }

    else if (v20 == 2)
    {
      v21 = *a2;
    }

    else if (v20 == 3)
    {
      v21 = *a2 | (a2[2] << 16);
    }

    else
    {
      v21 = *a2;
    }

    v22 = (v21 | (v19 << v10)) + 2;
    v18 = v21 + 2;
    if (v9 < 4)
    {
      v18 = v22;
    }
  }

LABEL_37:
  if (v18 == 1)
  {
    v23 = *(v5 + 16);
    v23(a1, a2, AssociatedTypeWitness);
    v23((&a1[v8] & v16), (&a2[v8] & v16), AssociatedTypeWitness);
    a1[v9] = 1;
    return a1;
  }

  if (!v18)
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    a1[v9] = 0;
    return a1;
  }

  return memcpy(a1, a2, v9 + 1);
}

_BYTE *initializeWithTake for ViewGraphGeometryObservers.Observer.Storage(_BYTE *a1, unsigned __int8 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  if (((v6 + v7) & ~v7) + v6 <= v6)
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v9 = ((v6 + v7) & ~v7) + v6;
  }

  v10 = a2[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
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
        goto LABEL_18;
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

    v14 = (v13 | (v11 << (8 * v9))) + 2;
    v10 = v13 + 2;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_18:
  if (v10 == 1)
  {
    v15 = ~v7;
    v16 = *(v5 + 32);
    v16(a1, a2, AssociatedTypeWitness);
    v16((&a1[v8] & v15), (&a2[v8] & v15), AssociatedTypeWitness);
    a1[v9] = 1;
    return a1;
  }

  if (!v10)
  {
    (*(v5 + 32))(a1, a2, AssociatedTypeWitness);
    a1[v9] = 0;
    return a1;
  }

  return memcpy(a1, a2, v9 + 1);
}

unsigned __int8 *assignWithTake for ViewGraphGeometryObservers.Observer.Storage(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  if (((v6 + v7) & ~v7) + v6 <= v6)
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v9 = ((v6 + v7) & ~v7) + v6;
  }

  v10 = 8 * v9;
  v11 = a1[v9];
  v12 = v11 - 2;
  if (v11 >= 2)
  {
    if (v9 <= 3)
    {
      v13 = v9;
    }

    else
    {
      v13 = 4;
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        goto LABEL_19;
      }

      v14 = *a1;
    }

    else if (v13 == 2)
    {
      v14 = *a1;
    }

    else if (v13 == 3)
    {
      v14 = *a1 | (a1[2] << 16);
    }

    else
    {
      v14 = *a1;
    }

    v15 = (v14 | (v12 << v10)) + 2;
    v11 = v14 + 2;
    if (v9 < 4)
    {
      v11 = v15;
    }
  }

LABEL_19:
  v16 = ~v7;
  if (v11 == 1)
  {
    v17 = *(v5 + 8);
    v17(a1, AssociatedTypeWitness);
    v17((&a1[v8] & v16), AssociatedTypeWitness);
  }

  else if (!v11)
  {
    (*(v5 + 8))(a1, AssociatedTypeWitness);
  }

  v18 = a2[v9];
  v19 = v18 - 2;
  if (v18 >= 2)
  {
    if (v9 <= 3)
    {
      v20 = v9;
    }

    else
    {
      v20 = 4;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_37;
      }

      v21 = *a2;
    }

    else if (v20 == 2)
    {
      v21 = *a2;
    }

    else if (v20 == 3)
    {
      v21 = *a2 | (a2[2] << 16);
    }

    else
    {
      v21 = *a2;
    }

    v22 = (v21 | (v19 << v10)) + 2;
    v18 = v21 + 2;
    if (v9 < 4)
    {
      v18 = v22;
    }
  }

LABEL_37:
  if (v18 == 1)
  {
    v23 = *(v5 + 32);
    v23(a1, a2, AssociatedTypeWitness);
    v23((&a1[v8] & v16), (&a2[v8] & v16), AssociatedTypeWitness);
    a1[v9] = 1;
    return a1;
  }

  if (!v18)
  {
    (*(v5 + 32))(a1, a2, AssociatedTypeWitness);
    a1[v9] = 0;
    return a1;
  }

  return memcpy(a1, a2, v9 + 1);
}

uint64_t getEnumTagSinglePayload for ViewGraphGeometryObservers.Observer.Storage(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 64);
  v6 = ((v5 + *(v4 + 80)) & ~*(v4 + 80)) + v5;
  if (v6 <= v5)
  {
    v6 = v5;
  }

  v7 = (1u >> (8 * v6)) ^ 0xFD;
  if (v6 > 3)
  {
    v7 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_27;
  }

  v8 = v6 + 1;
  v9 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v12 = ((~(-1 << v9) + a2 - v7) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v12 < 2)
    {
LABEL_27:
      v14 = *(a1 + v6);
      if (v7 <= (v14 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v14);
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_27;
  }

LABEL_16:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v7 + (v8 | v13) + 1;
}