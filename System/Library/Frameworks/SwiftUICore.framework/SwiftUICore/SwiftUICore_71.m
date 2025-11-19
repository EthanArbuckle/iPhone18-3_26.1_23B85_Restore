uint64_t Text.Style.resolveAccessibilityTextAttributes(into:environment:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  if (EnvironmentValues.accessibilityTextAttributeResolver.getter())
  {
    v9 = v4;
    v10 = v5;
    (*(v6 + 16))(a1, v2, &v9);
  }

  v9 = v4;
  v10 = v5;
  result = EnvironmentValues.accessibilityTextAttributeResolver.getter();
  if (result)
  {
    return (*(v8 + 8))(a1, result, v8);
  }

  return result;
}

NSAttributedString __swiftcall NSAttributedString.init(axAttributedString:)(Swift::String axAttributedString)
{
  object = axAttributedString._object;
  countAndFlagsBits = axAttributedString._countAndFlagsBits;
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = MEMORY[0x193ABEC20](countAndFlagsBits, object);

  v5 = AXAttributedStringConvert(v4);

  v6 = [v3 initWithAttributedString_];
  return v6;
}

id static NSAttributedStringKey.coreAXLabel.getter()
{
  if (one-time initialization token for coreAXLabel != -1)
  {
    swift_once();
  }

  v1 = static NSAttributedStringKey.coreAXLabel;

  return v1;
}

void specialized Text.Storage.resolve<A>(into:in:with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v14 = type metadata accessor for Text.Resolved(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a7)
  {
    v35 = a2;
    v36 = a3;
    v34 = a4;
    (*(*a5 + 80))(a1, &v35, &v34, v14, &protocol witness table for Text.Resolved, v15);
    return;
  }

  if (a3)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(a2, &v35);

    v18 = v35;
LABEL_7:
    v32 = v18;
    goto LABEL_8;
  }

  v19 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(a2);
  if (v19)
  {
    v18 = v19[9];
    goto LABEL_7;
  }

  v32 = 0;
LABEL_8:
  v35 = a5;
  v36 = a6;

  v20 = String.init<A>(_:)();
  v35 = a2;
  v36 = a3;
  v22 = String.caseConvertedIfNeeded(_:)(&v35, v20, v21);
  v33 = v22;
  v24 = v23;

  outlined init with copy of (key: NSAttributedStringKey, value: Any)(a1, v17, type metadata accessor for Text.Resolved);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  *(v25 + 24) = v24;
  v26 = a1 + v14[8];
  v35 = a2;
  v36 = a3;
  v27 = v17[v14[6]];
  v34 = a4;

  v28 = Text.Style.nsAttributes(content:environment:includeDefaultAttributes:with:properties:)(partial apply for closure #1 in Text.Resolved.append<A>(_:in:with:isUniqueSizeVariant:), v25, &v35, v27, &v34, v26);

  outlined destroy of Text.ResolvedString(v17, type metadata accessor for Text.Resolved);
  v35 = a2;
  v36 = a3;
  Text.Resolved.append(_:with:in:)(v33, v24, v28, &v35);
  v29 = *(a1 + v14[5]);
  if (v29)
  {
    if ([v29 isEmptyOrTerminatedByParagraphSeparator])
    {
      v30 = [v29 length];

      v35 = a2;
      v36 = a3;
      Text.ResolvedProperties.markParagraphBoundary(at:in:environment:)(v30, v29, &v35);
    }

    else
    {
    }

    *(v26 + 32) |= (v32 == 0) << 8;
  }

  else
  {
    __break(1u);
  }
}

void type metadata accessor for EnvironmentPropertyKey<TextSuffixKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<TextSuffixKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSuffixKey>);
    }
  }
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ResolvableStringResolutionContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvableStringResolutionContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in static ResolvableTextSegmentAttribute.update(_:in:)(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for ResolvableStringResolutionContext(0) - 8);
  v10 = *(v4 + 16);
  v11 = (v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80)));

  return closure #1 in static ResolvableTextSegmentAttribute.update(_:in:)(a1, a2, a3, a4, v10, v11);
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    type metadata accessor for [String](255, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityCore.TextResolutionOptions and conformance AccessibilityCore.TextResolutionOptions()
{
  result = lazy protocol witness table cache variable for type AccessibilityCore.TextResolutionOptions and conformance AccessibilityCore.TextResolutionOptions;
  if (!lazy protocol witness table cache variable for type AccessibilityCore.TextResolutionOptions and conformance AccessibilityCore.TextResolutionOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCore.TextResolutionOptions and conformance AccessibilityCore.TextResolutionOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCore.TextResolutionOptions and conformance AccessibilityCore.TextResolutionOptions;
  if (!lazy protocol witness table cache variable for type AccessibilityCore.TextResolutionOptions and conformance AccessibilityCore.TextResolutionOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCore.TextResolutionOptions and conformance AccessibilityCore.TextResolutionOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCore.TextResolutionOptions and conformance AccessibilityCore.TextResolutionOptions;
  if (!lazy protocol witness table cache variable for type AccessibilityCore.TextResolutionOptions and conformance AccessibilityCore.TextResolutionOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCore.TextResolutionOptions and conformance AccessibilityCore.TextResolutionOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCore.TextResolutionOptions and conformance AccessibilityCore.TextResolutionOptions;
  if (!lazy protocol witness table cache variable for type AccessibilityCore.TextResolutionOptions and conformance AccessibilityCore.TextResolutionOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCore.TextResolutionOptions and conformance AccessibilityCore.TextResolutionOptions);
  }

  return result;
}

void type metadata accessor for [String](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t type metadata accessor for NSTextAttachment()
{
  result = lazy cache variable for type metadata for NSTextAttachment;
  if (!lazy cache variable for type metadata for NSTextAttachment)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSTextAttachment);
  }

  return result;
}

uint64_t ScrollPosition.isPositionedByUser.setter(char a1)
{
  outlined init with copy of ScrollPosition.Storage(v1, v8);
  if (v12 == 5)
  {
    v3 = vorrq_s8(v9, v10);
    v4 = *&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) | v8[2] | v8[1];
    v5 = !v11 && v8[0] == 1;
    if (v5 && v4 == 0)
    {
      return outlined destroy of ScrollPosition.Storage(v8);
    }
  }

  result = outlined destroy of ScrollPosition.Storage(v8);
  if (a1)
  {
    result = outlined destroy of ScrollPosition.Storage(v1);
    *v1 = 1;
    *(v1 + 8) = 0u;
    *(v1 + 24) = 0u;
    *(v1 + 40) = 0u;
    *(v1 + 56) = 1280;
  }

  return result;
}

uint64_t ScrollPosition.wantsUpdate(toPosition:)(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  outlined init with copy of ScrollPosition.Storage(v1, v12);
  outlined init with copy of ScrollPosition.Storage(a1, v13);
  if (v12[57])
  {
    goto LABEL_4;
  }

  outlined init with copy of ScrollPosition.Storage(v12, v10);
  if (v15)
  {
    outlined destroy of ScrollPosition.ViewID(v10);
LABEL_4:
    outlined destroy of (ScrollPosition.Storage, ScrollPosition.Storage)(v12, type metadata accessor for (ScrollPosition.Storage, ScrollPosition.Storage));
    return 1;
  }

  v8[0] = v10[0];
  v8[1] = v10[1];
  v9[0] = v11[0];
  *(v9 + 9) = *(v11 + 9);
  v6[0] = v13[0];
  v6[1] = v13[1];
  v7[0] = *v14;
  *(v7 + 9) = *&v14[9];
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v4 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v4)
    {
      goto LABEL_11;
    }

LABEL_13:
    type metadata accessor for Hashable & Sendable();
    v5 = AGCompareValues() ^ 1;
    goto LABEL_14;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_13;
  }

LABEL_11:
  v5 = 1;
LABEL_14:
  outlined destroy of ScrollPosition.ViewID(v6);
  outlined destroy of ScrollPosition.ViewID(v8);
  outlined destroy of ScrollPosition.Storage(v12);
  return v5;
}

uint64_t static ScrollPosition.ViewID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    if ((*(a2 + 56) & 1) == 0 && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
    {
      goto LABEL_10;
    }

    return 0;
  }

  if ((*(a2 + 56) & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(a2 + 24);
  v9 = __swift_project_boxed_opaque_existential_1(a2, v8);

  return project #1 <A, B>(lhs:rhs:) in static ScrollPosition.ViewID.== infix(_:_:)(v7, v9, v5, v8, v6);
}

uint64_t ScrollPosition.ViewID.id.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return outlined init with take of AnyTrackedValue(a1, v1);
}

uint64_t ScrollPosition.ViewID.anchor.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 40) = result;
  *(v3 + 48) = a2;
  *(v3 + 56) = a3 & 1;
  return result;
}

uint64_t ScrollPosition.idType.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2;
  return result;
}

__n128 ScrollPosition.init<A>(idType:storage:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 16);
  *a4 = *a2;
  *(a4 + 16) = v4;
  *(a4 + 32) = *(a2 + 32);
  result = *(a2 + 42);
  *(a4 + 42) = result;
  *(a4 + 64) = a1;
  *(a4 + 72) = a3;
  *(a4 + 80) = 0;
  return result;
}

double ScrollPosition.init<A>(idType:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = 0.0;
  *(a3 + 41) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  *(a3 + 57) = 5;
  *(a3 + 64) = a1;
  *(a3 + 72) = a2;
  *(a3 + 80) = 0;
  return result;
}

uint64_t ScrollPosition.init<A>(idType:edge:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = a2;
  *(a4 + 57) = 1;
  *(a4 + 64) = result;
  *(a4 + 72) = a3;
  *(a4 + 80) = 0;
  return result;
}

uint64_t ScrollPosition.init<A>(idType:x:y:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 57) = 2;
  *(a3 + 64) = result;
  *(a3 + 72) = a2;
  *(a3 + 80) = 0;
  return result;
}

uint64_t ScrollPosition.init<A>(idType:x:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  *(a3 + 57) = 3;
  *(a3 + 64) = result;
  *(a3 + 72) = a2;
  *(a3 + 80) = 0;
  return result;
}

uint64_t ScrollPosition.init<A>(idType:y:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  *(a3 + 57) = 4;
  *(a3 + 64) = result;
  *(a3 + 72) = a2;
  *(a3 + 80) = 0;
  return result;
}

Swift::Void __swiftcall ScrollPosition.scrollTo(edge:)(SwiftUI::Edge edge)
{
  outlined destroy of ScrollPosition.Storage(v1);
  *v1 = edge;
  *(v1 + 57) = 1;
  if (one-time initialization token for v6_4 != -1)
  {
    swift_once();
  }

  v3 = static Semantics.v6_4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v3)
    {
      return;
    }

    goto LABEL_9;
  }

  if (dyld_program_sdk_at_least())
  {
LABEL_9:
    ++*(v1 + 80);
  }
}

uint64_t ScrollPosition.scrollTo(point:)(double a1, double a2)
{
  outlined destroy of ScrollPosition.Storage(v2);
  *v2 = a1;
  *(v2 + 8) = a2;
  *(v2 + 57) = 2;
  if (one-time initialization token for v6_4 != -1)
  {
    swift_once();
  }

  v5 = static Semantics.v6_4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v5)
    {
      return result;
    }

    goto LABEL_9;
  }

  result = dyld_program_sdk_at_least();
  if (result)
  {
LABEL_9:
    ++*(v2 + 80);
  }

  return result;
}

uint64_t ScrollPosition.scrollTo(x:)(char a1, double a2)
{
  outlined destroy of ScrollPosition.Storage(v2);
  *v2 = a2;
  *(v2 + 57) = a1;
  if (one-time initialization token for v6_4 != -1)
  {
    swift_once();
  }

  v5 = static Semantics.v6_4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v5)
    {
      return result;
    }

    goto LABEL_9;
  }

  result = dyld_program_sdk_at_least();
  if (result)
  {
LABEL_9:
    ++*(v2 + 80);
  }

  return result;
}

BOOL ScrollPosition.isPositionedByUser.getter()
{
  outlined init with copy of ScrollPosition.Storage(v0, v7);
  v5 = 0;
  if (v11 == 5)
  {
    v1 = vorrq_s8(v8, v9);
    v2 = *&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | v7[2] | v7[1];
    v3 = !v10 && v7[0] == 1;
    if (v3 && v2 == 0)
    {
      v5 = 1;
    }
  }

  outlined destroy of ScrollPosition.Storage(v7);
  return v5;
}

uint64_t key path getter for ScrollPosition.isPositionedByUser : ScrollPosition@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  outlined init with copy of ScrollPosition.Storage(a1, v9);
  v7 = 0;
  if (v13 == 5)
  {
    v3 = vorrq_s8(v10, v11);
    v4 = *&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) | v9[2] | v9[1];
    v5 = !v12 && v9[0] == 1;
    if (v5 && v4 == 0)
    {
      v7 = 1;
    }
  }

  result = outlined destroy of ScrollPosition.Storage(v9);
  *a2 = v7;
  return result;
}

uint64_t key path setter for ScrollPosition.isPositionedByUser : ScrollPosition(char *a1, uint64_t a2)
{
  v3 = *a1;
  outlined init with copy of ScrollPosition.Storage(a2, v9);
  if (v13 == 5)
  {
    v4 = vorrq_s8(v10, v11);
    v5 = *&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | v9[2] | v9[1];
    v6 = !v12 && v9[0] == 1;
    if (v6 && v5 == 0)
    {
      return outlined destroy of ScrollPosition.Storage(v9);
    }
  }

  result = outlined destroy of ScrollPosition.Storage(v9);
  if (v3)
  {
    result = outlined destroy of ScrollPosition.Storage(a2);
    *a2 = 1;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 1280;
  }

  return result;
}

void (*ScrollPosition.isPositionedByUser.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  outlined init with copy of ScrollPosition.Storage(v2, v4);
  v10 = 0;
  if (*(v5 + 57) == 5)
  {
    v6 = vorrq_s8(*(v5 + 24), *(v5 + 40));
    v7 = *&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | *(v5 + 16) | *(v5 + 8);
    v8 = !*(v5 + 56) && *v5 == 1;
    if (v8 && v7 == 0)
    {
      v10 = 1;
    }
  }

  outlined destroy of ScrollPosition.Storage(v5);
  *(v5 + 58) = v10;
  return ScrollPosition.isPositionedByUser.modify;
}

void ScrollPosition.isPositionedByUser.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 58);
  outlined init with copy of ScrollPosition.Storage(*(*a1 + 64), *a1);
  v5 = v3[57];
  if ((a2 & 1) == 0)
  {
    if (v5 != 5 || ((v10 = vorrq_s8(*(v3 + 24), *(v3 + 40)), v11 = *&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) | *(v3 + 2) | *(v3 + 1), !v3[56]) ? (v12 = *v3 == 1) : (v12 = 0), v12 ? (v13 = v11 == 0) : (v13 = 0), !v13))
    {
      outlined destroy of ScrollPosition.Storage(v3);
      if (!v4)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

LABEL_22:
    outlined destroy of ScrollPosition.Storage(v3);
    goto LABEL_23;
  }

  if (v5 == 5)
  {
    v6 = vorrq_s8(*(v3 + 24), *(v3 + 40));
    v7 = *&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | *(v3 + 2) | *(v3 + 1);
    v8 = !v3[56] && *v3 == 1;
    if (v8 && v7 == 0)
    {
      goto LABEL_22;
    }
  }

  outlined destroy of ScrollPosition.Storage(v3);
  if (v4)
  {
LABEL_21:
    v14 = *(v3 + 8);
    outlined destroy of ScrollPosition.Storage(v14);
    *v14 = 1;
    *(v14 + 8) = 0u;
    *(v14 + 24) = 0u;
    *(v14 + 40) = 0u;
    *(v14 + 56) = 1280;
  }

LABEL_23:

  free(v3);
}

uint64_t ScrollPosition.edge.getter()
{
  outlined init with copy of ScrollPosition.Storage(v0, v2);
  if (v2[57] == 1)
  {
    return v2[0];
  }

  outlined destroy of ScrollPosition.Storage(v2);
  return 4;
}

uint64_t ScrollPosition.point.getter()
{
  outlined init with copy of ScrollPosition.Storage(v0, &v2);
  if (v3 == 2)
  {
    return v2;
  }

  outlined destroy of ScrollPosition.Storage(&v2);
  return 0;
}

uint64_t ScrollPosition.x.getter()
{
  outlined init with copy of ScrollPosition.Storage(v0, v2);
  if (v3 == 3)
  {
    return v2[0];
  }

  outlined destroy of ScrollPosition.Storage(v2);
  return 0;
}

uint64_t ScrollPosition.y.getter()
{
  outlined init with copy of ScrollPosition.Storage(v0, v2);
  if (v3 == 4)
  {
    return v2[0];
  }

  outlined destroy of ScrollPosition.Storage(v2);
  return 0;
}

uint64_t ScrollPosition.viewID.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of ScrollPosition.Storage(v1, v4);
  if (v6)
  {
    result = outlined destroy of ScrollPosition.Storage(v4);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    v7[0] = v4[0];
    v7[1] = v4[1];
    v8[0] = *v5;
    *(v8 + 9) = *&v5[9];
    return outlined init with take of AnyTrackedValue(v7, a1);
  }

  return result;
}

uint64_t ScrollPosition.viewID<A>(type:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  outlined init with copy of ScrollPosition.Storage(v4, &v12);
  if (v15)
  {
    v8 = outlined destroy of ScrollPosition.Storage(&v12);
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
  }

  else
  {
    v16[0] = v12;
    v16[1] = v13;
    v17[0] = *v14;
    *(v17 + 9) = *&v14[9];
    v8 = outlined init with take of AnyTrackedValue(v16, &v18);
  }

  v12 = v18;
  v13 = v19;
  *v14 = v20;
  MEMORY[0x1EEE9AC00](v8);
  v11[2] = a1;
  v11[3] = a2;
  type metadata accessor for (Hashable & Sendable)?();
  _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in ScrollPosition.viewID<A>(type:), v11, MEMORY[0x1E69E73E0], a1, v9, a3);
  return outlined destroy of (ScrollPosition.Storage, ScrollPosition.Storage)(&v12, type metadata accessor for (Hashable & Sendable)?);
}

uint64_t project #1 <A><A1>(_:) in ScrollPosition.viewID<A>(type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v8 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v8 ^ 1u, 1, a2);
}

uint64_t _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v27 = a5;
  v28 = a2;
  v29 = a1;
  v26 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v23, v19);
  if ((*(v14 + 48))(v21, 1, v13) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v14 + 32))(v17, v21, v13);
  v29(v17, v11);
  result = (*(v14 + 8))(v17, v13);
  if (v6)
  {
    return (*(v26 + 32))(v27, v11, a3);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ScrollPosition.ViewID(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    if ((*(a2 + 56) & 1) == 0 && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
    {
      goto LABEL_10;
    }

    return 0;
  }

  if ((*(a2 + 56) & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(a2 + 24);
  v9 = __swift_project_boxed_opaque_existential_1(a2, v8);

  return project #1 <A, B>(lhs:rhs:) in static ScrollPosition.ViewID.== infix(_:_:)(v7, v9, v5, v8, v6);
}

uint64_t ScrollPositionToValue.anchor.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  return result;
}

uint64_t ScrollPositionToValue.set(base:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v21 = a1;
  v5 = *(a3 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  v10 = *(v5 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + 8);
  v19 = *v3;
  v16 = *(v3 + 16);
  (*(v7 + 16))(v9, a2, v6, v12);
  if ((*(v10 + 48))(v9, 1, v5) == 1)
  {
    return (*(v7 + 8))(v9, v6);
  }

  (*(v10 + 32))(v14, v9, v5);
  ScrollPosition.scrollTo<A>(id:anchor:)(v14, v19, v15, v16, v5, *(v20 + 24));
  return (*(v10 + 8))(v14, v5);
}

uint64_t ScrollPositionToValue.init(_:anchor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  type metadata accessor for Optional();
  v10 = type metadata accessor for Binding();
  result = (*(*(v10 - 8) + 8))(a1, v10);
  *a5 = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4 & 1;
  return result;
}

Swift::Int ScrollPositionToValue.hashValue.getter(uint64_t a1, void (*a2)(_BYTE *))
{
  v4 = *(v2 + 16);
  v7 = *v2;
  v8 = v4;
  Hasher.init(_seed:)();
  a2(v6);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ScrollPositionToValue<A>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

void type metadata accessor for (ScrollPosition.Storage, ScrollPosition.Storage)()
{
  if (!lazy cache variable for type metadata for (ScrollPosition.Storage, ScrollPosition.Storage))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ScrollPosition.Storage, ScrollPosition.Storage));
    }
  }
}

unint64_t type metadata accessor for Hashable & Sendable()
{
  result = lazy cache variable for type metadata for Hashable & Sendable;
  if (!lazy cache variable for type metadata for Hashable & Sendable)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Hashable & Sendable);
  }

  return result;
}

uint64_t partial apply for closure #1 in ScrollPosition.viewID<A>(type:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return project #1 <A><A1>(_:) in ScrollPosition.viewID<A>(type:)(v5, v4, a2);
}

void type metadata accessor for (Hashable & Sendable)?()
{
  if (!lazy cache variable for type metadata for (Hashable & Sendable)?)
  {
    type metadata accessor for Hashable & Sendable();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (Hashable & Sendable)?);
    }
  }
}

uint64_t outlined destroy of (ScrollPosition.Storage, ScrollPosition.Storage)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized ValueToScrollPosition.set(base:newValue:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a1;
  v27 = type metadata accessor for Optional();
  v6 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  ScrollPosition.viewID<A>(type:)(a3, a4, v11);
  v16 = *(v12 + 48);
  v17 = v16(v11, 1, a3);
  v18 = *(v6 + 8);
  if (v17 == 1)
  {
    v19 = v27;
    v18(v11, v27);
    v20 = v28;
    (*(v6 + 16))(v8, v28, v19);
    v21 = v16(v8, 1, a3);
    result = (v18)(v8, v19);
    if (v21 == 1)
    {
      return result;
    }

    v18(v20, v19);
    v23 = 1;
  }

  else
  {
    v24 = v28;
    v18(v28, v27);
    v25 = *(v12 + 32);
    v26 = v11;
    v20 = v24;
    v25(v15, v26, a3);
    v25(v24, v15, a3);
    v23 = 0;
  }

  return (*(v12 + 56))(v20, v23, 1, a3);
}

uint64_t instantiation function for generic protocol witness table for ScrollPositionToValue<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t assignWithCopy for ScrollPosition(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of ScrollPosition.Storage(a1);
    if (*(a2 + 57))
    {
      v4 = *a2;
      v5 = a2[1];
      v6 = a2[2];
      *(a1 + 42) = *(a2 + 42);
      *(a1 + 16) = v5;
      *(a1 + 32) = v6;
      *a1 = v4;
    }

    else
    {
      v7 = *(a2 + 3);
      *(a1 + 24) = v7;
      *(a1 + 32) = *(a2 + 4);
      (**(v7 - 8))(a1, a2);
      v8 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v8;
    }
  }

  *(a1 + 64) = a2[4];
  *(a1 + 80) = *(a2 + 10);
  return a1;
}

__n128 assignWithCopy for ScrollPosition.Storage(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 57);
    if (v2 >= 5)
    {
      v2 = *a1 + 5;
    }

    if (!v2)
    {
      v3 = a1;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(a1);
      a2 = v4;
      a1 = v3;
    }

    v6 = *(a2 + 57);
    if (v6 >= 5)
    {
      v6 = *a2 + 5;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        v7 = *(a2 + 24);
        *(a1 + 24) = v7;
        *(a1 + 32) = *(a2 + 32);
        v8 = a1;
        v9 = a2;
        (**(v7 - 8))();
        v10 = *(v9 + 56);
        result = *(v9 + 40);
        *(v8 + 40) = result;
        *(v8 + 56) = v10;
        return result;
      }

      if (v6 == 1)
      {
        *a1 = *a2;
        *(a1 + 57) = 1;
        return result;
      }
    }

    else
    {
      switch(v6)
      {
        case 2:
          result = *a2;
          *a1 = *a2;
          *(a1 + 57) = 2;
          return result;
        case 3:
          *a1 = *a2;
          *(a1 + 57) = 3;
          return result;
        case 4:
          *a1 = *a2;
          *(a1 + 57) = 4;
          return result;
      }
    }

    result = *a2;
    v11 = *(a2 + 16);
    v12 = *(a2 + 32);
    *(a1 + 42) = *(a2 + 42);
    *(a1 + 16) = v11;
    *(a1 + 32) = v12;
    *a1 = result;
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ScrollPosition.Storage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 58))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 57);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScrollPosition.Storage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 42) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for ScrollPosition.Storage(uint64_t a1)
{
  result = *(a1 + 57);
  if (result >= 5)
  {
    return (*a1 + 5);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ScrollPosition.Storage(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 57) = a2;
  return result;
}

uint64_t initializeWithCopy for ScrollPosition.ViewID(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithCopy for ScrollPosition.ViewID(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  return a1;
}

uint64_t assignWithTake for ScrollPosition.ViewID(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollPosition.ViewID(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for ScrollPosition.ViewID(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

SwiftUI::VerticalDirection_optional __swiftcall VerticalDirection.init(rawValue:)(Swift::Int8 rawValue)
{
  if (rawValue == 1)
  {
    v1.value = SwiftUI_VerticalDirection_down;
  }

  else
  {
    v1.value = SwiftUI_VerticalDirection_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type HorizontalDirection.Set and conformance HorizontalDirection.Set()
{
  result = lazy protocol witness table cache variable for type HorizontalDirection.Set and conformance HorizontalDirection.Set;
  if (!lazy protocol witness table cache variable for type HorizontalDirection.Set and conformance HorizontalDirection.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HorizontalDirection.Set and conformance HorizontalDirection.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HorizontalDirection.Set and conformance HorizontalDirection.Set;
  if (!lazy protocol witness table cache variable for type HorizontalDirection.Set and conformance HorizontalDirection.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HorizontalDirection.Set and conformance HorizontalDirection.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HorizontalDirection.Set and conformance HorizontalDirection.Set;
  if (!lazy protocol witness table cache variable for type HorizontalDirection.Set and conformance HorizontalDirection.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HorizontalDirection.Set and conformance HorizontalDirection.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HorizontalDirection.Set and conformance HorizontalDirection.Set;
  if (!lazy protocol witness table cache variable for type HorizontalDirection.Set and conformance HorizontalDirection.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HorizontalDirection.Set and conformance HorizontalDirection.Set);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HorizontalDirection and conformance HorizontalDirection()
{
  result = lazy protocol witness table cache variable for type HorizontalDirection and conformance HorizontalDirection;
  if (!lazy protocol witness table cache variable for type HorizontalDirection and conformance HorizontalDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HorizontalDirection and conformance HorizontalDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HorizontalDirection and conformance HorizontalDirection;
  if (!lazy protocol witness table cache variable for type HorizontalDirection and conformance HorizontalDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HorizontalDirection and conformance HorizontalDirection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VerticalDirection.Set and conformance VerticalDirection.Set()
{
  result = lazy protocol witness table cache variable for type VerticalDirection.Set and conformance VerticalDirection.Set;
  if (!lazy protocol witness table cache variable for type VerticalDirection.Set and conformance VerticalDirection.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerticalDirection.Set and conformance VerticalDirection.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VerticalDirection.Set and conformance VerticalDirection.Set;
  if (!lazy protocol witness table cache variable for type VerticalDirection.Set and conformance VerticalDirection.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerticalDirection.Set and conformance VerticalDirection.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VerticalDirection.Set and conformance VerticalDirection.Set;
  if (!lazy protocol witness table cache variable for type VerticalDirection.Set and conformance VerticalDirection.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerticalDirection.Set and conformance VerticalDirection.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VerticalDirection.Set and conformance VerticalDirection.Set;
  if (!lazy protocol witness table cache variable for type VerticalDirection.Set and conformance VerticalDirection.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerticalDirection.Set and conformance VerticalDirection.Set);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VerticalDirection and conformance VerticalDirection()
{
  result = lazy protocol witness table cache variable for type VerticalDirection and conformance VerticalDirection;
  if (!lazy protocol witness table cache variable for type VerticalDirection and conformance VerticalDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerticalDirection and conformance VerticalDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VerticalDirection and conformance VerticalDirection;
  if (!lazy protocol witness table cache variable for type VerticalDirection and conformance VerticalDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerticalDirection and conformance VerticalDirection);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [HorizontalDirection] and conformance [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for [HorizontalDirection](255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for [HorizontalDirection](uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Array();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t GestureGraph.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 200) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*GestureGraph.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 200);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return GestureGraph.delegate.modify;
}

void GestureGraph.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 200) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t GestureGraph.__allocating_init(rootResponder:)(uint64_t *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *a1;

  return specialized GestureGraph.init(rootResponder:)(a1, v4, v5, a2);
}

uint64_t GestureGraph.description.getter()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6[0] = (*(*(*(v0 + 184) + 8) + 32))(*Strong);
    type metadata accessor for Any.Type();
    v2 = String.init<A>(describing:)();
    v4 = v3;
  }

  else
  {
    v4 = 0xE300000000000000;
    v2 = 7104878;
  }

  strcpy(v6, "GestureGraph<");
  MEMORY[0x193ABEDD0](v2, v4);

  MEMORY[0x193ABEDD0](8254, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();

  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  return v6[0];
}

Swift::Void __swiftcall GestureGraph.instantiateOutputs()()
{
  v1 = v0;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = v0[23];
  v5 = *Strong;
  (*(*&v4 + 16))(&v48, *Strong, v4);
  v6 = (*(*(*&v4 + 8) + 8))(v5);
  LODWORD(v5) = v1[27].i32[1];
  swift_beginAccess();
  v7 = v1[33].i32[0];
  DWORD1(v53) = v1[5].i32[1];
  *&v54[16] = vrev64_s32(v1[28]);
  v8 = MEMORY[0x1E69E7CC0];
  *(&v53 + 1) = v6;
  *v54 = MEMORY[0x1E69E7CC0];
  *&v54[8] = v7;
  *&v54[12] = v5;
  *&v54[24] = 20;
  if (one-time initialization token for _eventDebugTriggers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if ((_eventDebugTriggers.rawValue & 0x20) != 0)
  {
    *&v54[24] = 28;
  }

  *&v46[0] = v8;
  v9 = PreferenceKeys._index(of:)(&type metadata for GestureLabelKey);

  v10 = *(v8 + 2);
  if (v9 == v10)
  {
    goto LABEL_9;
  }

  if (v9 >= v10)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (*&v8[16 * v9 + 32] != &type metadata for GestureLabelKey)
  {
LABEL_9:
    if (v10 < v9)
    {
      __break(1u);
      goto LABEL_56;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v54 = v8;
    if (!isUniquelyReferenced_nonNull_native || v10 >= *(v8 + 3) >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10 + 1, 1, MEMORY[0x1E69E7CC0]);
      *v54 = v8;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v9, v9, 1, &type metadata for GestureLabelKey, &protocol witness table for GestureLabelKey);
    *v54 = v8;
  }

  *&v46[0] = v8;
  v12 = PreferenceKeys._index(of:)(&type metadata for IsCancellableGestureKey);

  v13 = *(v8 + 2);
  if (v12 == v13)
  {
    goto LABEL_17;
  }

  if (v12 >= v13)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (*&v8[16 * v12 + 32] != &type metadata for IsCancellableGestureKey)
  {
LABEL_17:
    if (v13 >= v12)
    {
      v14 = swift_isUniquelyReferenced_nonNull_native();
      if (!v14 || v13 >= *(v8 + 3) >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v14, v13 + 1, 1, v8);
        *v54 = v8;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v12, v12, 1, &type metadata for IsCancellableGestureKey, &protocol witness table for IsCancellableGestureKey);
      *v54 = v8;
      goto LABEL_22;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_22:
  *&v46[0] = v8;
  v15 = PreferenceKeys._index(of:)(&type metadata for RequiredTapCountKey);

  v16 = *(v8 + 2);
  if (v15 == v16)
  {
    goto LABEL_25;
  }

  if (v15 >= v16)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (*&v8[16 * v15 + 32] != &type metadata for RequiredTapCountKey)
  {
LABEL_25:
    if (v16 >= v15)
    {
      v17 = swift_isUniquelyReferenced_nonNull_native();
      if (!v17 || v16 >= *(v8 + 3) >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v17, v16 + 1, 1, v8);
        *v54 = v8;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v15, v15, 1, &type metadata for RequiredTapCountKey, &protocol witness table for RequiredTapCountKey);
      *v54 = v8;
      goto LABEL_30;
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_30:
  *&v46[0] = v8;
  v18 = PreferenceKeys._index(of:)(&type metadata for GestureDependency.Key);

  v19 = *(v8 + 2);
  if (v18 == v19)
  {
    goto LABEL_33;
  }

  if (v18 >= v19)
  {
LABEL_62:
    __break(1u);
    return;
  }

  if (*&v8[16 * v18 + 32] != &type metadata for GestureDependency.Key)
  {
LABEL_33:
    if (v19 >= v18)
    {
      v20 = swift_isUniquelyReferenced_nonNull_native();
      if (!v20 || v19 >= *(v8 + 3) >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v20, v19 + 1, 1, v8);
        *v54 = v8;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v18, v18, 1, &type metadata for GestureDependency.Key, &protocol witness table for GestureDependency.Key);
      *v54 = v8;
      goto LABEL_38;
    }

    goto LABEL_58;
  }

LABEL_38:
  v21 = *&v1[4];
  AGGraphClearUpdate();
  v22 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v44[4] = v52;
  v44[5] = v53;
  v45[0] = *v54;
  *(v45 + 12) = *&v54[12];
  v44[0] = v48;
  v44[1] = v49;
  v44[2] = v50;
  v44[3] = v51;
  v40 = v52;
  v41 = v53;
  v42[0] = *v54;
  *(v42 + 12) = *&v54[12];
  v36 = v48;
  v37 = v49;
  v38 = v50;
  v39 = v51;
  v23 = *(*v3 + 112);
  outlined init with copy of _GestureInputs(v44, v46);
  v23(v43, &v36);
  v46[4] = v40;
  v46[5] = v41;
  v47[0] = v42[0];
  *(v47 + 12) = *(v42 + 12);
  v46[0] = v36;
  v46[1] = v37;
  v46[2] = v38;
  v46[3] = v39;
  outlined destroy of _GestureInputs(v46);
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v24 = v43[1];
  v25 = *MEMORY[0x1E698D3F8];
  v1[29] = v43[0];
  v26 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA15GestureCategoryV0I0V_TtB5(v24);
  if ((v26 & 0x100000000) != 0)
  {
    v27 = v25;
  }

  else
  {
    v27 = v26;
  }

  v1[30].i32[0] = v27;
  v28 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA012GestureLabelI0V_TtB5(v24);
  if ((v28 & 0x100000000) != 0)
  {
    v29 = v25;
  }

  else
  {
    v29 = v28;
  }

  v1[30].i32[1] = v29;
  IsCancellableGestureI0V_TtB5 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA020IsCancellableGestureI0V_TtB5(v24);
  if ((IsCancellableGestureI0V_TtB5 & 0x100000000) != 0)
  {
    v31 = v25;
  }

  else
  {
    v31 = IsCancellableGestureI0V_TtB5;
  }

  v1[31].i32[0] = v31;
  v32 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA016RequiredTapCountI0V_TtB5(v24);
  if ((v32 & 0x100000000) != 0)
  {
    v33 = v25;
  }

  else
  {
    v33 = v32;
  }

  v1[31].i32[1] = v33;
  v34 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA17GestureDependencyO0I0V_TtB5(v24);

  if ((v34 & 0x100000000) != 0)
  {
    v35 = v25;
  }

  else
  {
    v35 = v34;
  }

  v1[32].i32[0] = v35;
  v40 = v52;
  v41 = v53;
  v42[0] = *v54;
  *(v42 + 12) = *&v54[12];
  v36 = v48;
  v37 = v49;
  v38 = v50;
  v39 = v51;
  outlined destroy of _GestureInputs(&v36);
}

Swift::Void __swiftcall GestureGraph.uninstantiateOutputs()()
{
  *(v0 + 232) = *MEMORY[0x1E698D3F8];
  type metadata accessor for [EventID : EventType]();
  AGGraphGetValue();
  AGGraphSetValue();
  AGGraphSetValue();
  AGGraphSetValue();
  AGGraphSetValue();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 120))(Strong);
  }
}

uint64_t GestureGraph.focusedResponder.getter()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = *(v1 + 24);

    if (Strong && (v4 = swift_getObjectType(), v5 = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for EventGraphHost), (*(v3 + 16))(v9, v5, v5, v4, v3), swift_unknownObjectRelease(), v9[0]))
    {
      v6 = v9[1];
      ObjectType = swift_getObjectType();
      v8 = (*(v6 + 24))(ObjectType, v6);
      swift_unknownObjectRelease();
      return v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double GestureGraph.nextGestureUpdateTime.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 272);
  *a1 = result;
  return result;
}

void *GestureGraph.sendEvents(_:rootNode:at:)@<X0>(uint64_t a1@<X0>, double *a2@<X2>, _BYTE *a3@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_20;
  }

  v26 = *(*(v3 + 184) + 8);
  v27 = *result;
  v25 = *(v26 + 40);
  if (((v25)(*result) & 1) == 0)
  {

LABEL_20:
    v17 = 0;
    v18 = 3;
    goto LABEL_22;
  }

  v20 = a3;
  GraphHost.instantiateIfNeeded()();
  *(v3 + 152) = 1;
  swift_beginAccess();
  LODWORD(v28[0]) = *AGGraphGetValue() + 1;
  AGGraphSetValue();
  if (*AGGraphGetValue() != v5)
  {
    *v28 = v5;
    AGGraphSetValue();
    LODWORD(v28[0]) = *AGGraphGetValue() + 1;
    AGGraphSetValue();
    *(v3 + 272) = 0x7FF0000000000000;
  }

  v28[0] = a1;
  type metadata accessor for [EventID : EventType]();
  AGGraphSetValue();
  v7 = *(v3 + 24);
  swift_beginAccess();
  v8 = 0;
  v23 = 0;
  v21 = *MEMORY[0x1E698D3F8];
  v22 = 3;
  do
  {
    v10 = *(v3 + 160);
    *(v3 + 160) = MEMORY[0x1E69E7CC0];
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = v10 + 32;
      do
      {
        outlined init with copy of AnyTrackedValue(v12, v28);
        v14 = v29;
        v13 = v30;
        __swift_project_boxed_opaque_existential_1(v28, v29);
        (*(v13 + 8))(v14, v13);
        __swift_destroy_boxed_opaque_existential_1(v28);
        v12 += 40;
        --v11;
      }

      while (v11);
    }

    AGSubgraphUpdate();
    v15 = *(*(v3 + 160) + 16);
    if (v25(v27, v26))
    {
      if (v15)
      {
        if (*(a1 + 16))
        {
          v28[0] = MEMORY[0x1E69E7CC8];
          AGGraphSetValue();
        }
      }

      else
      {
        if (*(v3 + 232) == v21)
        {
          __break(1u);
        }

        type metadata accessor for GesturePhase<()>(0, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
        Value = AGGraphGetValue();
        v22 = Value[1];
        v23 = *Value;
      }
    }

    ++v8;
    if (*(*(v3 + 160) + 16))
    {
      v9 = v8 == 8;
    }

    else
    {
      v9 = 1;
    }
  }

  while (!v9);

  *(v3 + 152) = 0;

  specialized printGestures(data:host:)(v19, v3);

  a3 = v20;
  v18 = v22;
  v17 = v23;
LABEL_22:
  *a3 = v17;
  a3[1] = v18;
  return result;
}

uint64_t GestureGraph.enqueueAction(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 200);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(a1, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

SwiftUI::GestureCategory_optional __swiftcall GestureGraph.gestureCategory()()
{
  v2 = v0;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  if (((*(*(*(v1 + 184) + 8) + 40))(*Strong) & 1) == 0)
  {

LABEL_6:
    *v2 = 0;
    *(v2 + 8) = 1;
    goto LABEL_11;
  }

  specialized static Update.begin()();
  GraphHost.instantiateIfNeeded()();
  v5 = *(v1 + 240);
  v6 = *MEMORY[0x1E698D3F8];
  if (v5 == *MEMORY[0x1E698D3F8])
  {
    v7 = 0;
  }

  else
  {
    v7 = *AGGraphGetValue();
  }

  *v2 = v7;
  *(v2 + 8) = v5 == v6;
  static Update.end()();

LABEL_11:
  result.value.rawValue = Strong;
  result.is_nil = v4;
  return result;
}

uint64_t GestureGraph.__ivar_destroyer()
{
  outlined destroy of weak AnyGestureResponder?(v0 + 176);
  outlined destroy of weak GestureGraphDelegate?(v0 + 192);
}

uint64_t GestureGraph.deinit()
{
  GraphHost.invalidate()();
  if (one-time initialization token for blockedGraphHosts != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v1 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&blockedGraphHosts, v0);

  v2 = *(blockedGraphHosts._rawValue + 2);
  if (v2 < v1)
  {
    __break(1u);
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    specialized Array.replaceSubrange<A>(_:with:)(v1, v2);
    swift_endAccess();
    v3 = *(v0 + 96);
    v7[4] = *(v0 + 80);
    v7[5] = v3;
    v8 = *(v0 + 112);
    v4 = *(v0 + 32);
    v7[0] = *(v0 + 16);
    v7[1] = v4;
    v5 = *(v0 + 64);
    v7[2] = *(v0 + 48);
    v7[3] = v5;
    outlined destroy of GraphHost.Data(v7);

    outlined destroy of weak AnyGestureResponder?(v0 + 176);
    outlined destroy of weak GestureGraphDelegate?(v0 + 192);

    return v0;
  }

  return result;
}

uint64_t GestureGraph.__deallocating_deinit()
{
  GraphHost.invalidate()();
  if (one-time initialization token for blockedGraphHosts != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v1 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&blockedGraphHosts, v0);

  v2 = *(blockedGraphHosts._rawValue + 2);
  if (v2 < v1)
  {
    __break(1u);
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    specialized Array.replaceSubrange<A>(_:with:)(v1, v2);
    swift_endAccess();
    v3 = *(v0 + 96);
    v7[4] = *(v0 + 80);
    v7[5] = v3;
    v8 = *(v0 + 112);
    v4 = *(v0 + 32);
    v7[0] = *(v0 + 16);
    v7[1] = v4;
    v5 = *(v0 + 64);
    v7[2] = *(v0 + 48);
    v7[3] = v5;
    outlined destroy of GraphHost.Data(v7);

    outlined destroy of weak AnyGestureResponder?(v0 + 176);
    outlined destroy of weak GestureGraphDelegate?(v0 + 192);

    return swift_deallocClassInstance();
  }

  return result;
}

double protocol witness for EventGraphHost.nextGestureUpdateTime.getter in conformance GestureGraph@<D0>(double *a1@<X8>)
{
  result = *(v1 + 272);
  *a1 = result;
  return result;
}

uint64_t static GestureGraph.current.getter()
{
  specialized static GraphHost.currentHost.getter();

  return swift_dynamicCastClassUnconditional();
}

void *specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1);

      objc_setAssociatedObject(v2, MEMORY[0x1E69E7CC0], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    if (result)
    {
      type metadata accessor for TextAttributeModifierBase();
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq57SwiftUI25TextAttributeModifierBaseC_ytTg5073_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_7i4UI25klmN7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_n(int64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  AssociatedObject = specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(a1);
  v4 = AssociatedObject[2];

  return a2(AssociatedObject + 4, v4);
}

uint64_t specialized GestureGraph.init(rootResponder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  *(a2 + 184) = 0;
  swift_weakInit();
  *(a2 + 200) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for EventBindingManager();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 48) = MEMORY[0x1E69E7CC8];
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 56) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(a2 + 208) = v6;
  v8 = MEMORY[0x1E698D3F8];
  v9 = vld1q_dup_f32(v8);
  *(a2 + 232) = v9;
  *(a2 + 248) = v9;
  *(a2 + 272) = 0x7FF0000000000000;
  if (specialized static GestureContainerFeature.isEnabled.getter())
  {
    *(a2 + 184) = a4;
    swift_weakAssign();
    GraphHost.Data.init()(v19);
    v10 = AGSubgraphGetCurrent();
    v11 = *(&v19[0] + 1);
    AGSubgraphSetCurrent();
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
    {
      __break(1u);
    }

    if (*(static CustomEventTrace.enabledCategories + 99))
    {
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 16963;
        *&v17[0] = v11;
        type metadata accessor for AGSubgraphRef(0);
        AGGraphAddTraceEvent();
      }
    }

    *(a2 + 216) = Attribute.init<A>(body:value:flags:update:)();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(v7);
    type metadata accessor for [EventID : EventType]();
    v12 = Attribute.init<A>(body:value:flags:update:)();

    *(a2 + 220) = v12;
    *(a2 + 224) = Attribute.init<A>(body:value:flags:update:)();
    *(a2 + 228) = Attribute.init<A>(body:value:flags:update:)();
    *(a2 + 264) = Attribute.init<A>(body:value:flags:update:)();
    v17[4] = v19[4];
    v17[5] = v19[5];
    v18 = v20;
    v17[0] = v19[0];
    v17[1] = v19[1];
    v17[2] = v19[2];
    v17[3] = v19[3];
    outlined init with copy of GraphHost.Data(v19, v16);
    v13 = GraphHost.init(data:)(v17);
    v14 = *(v13 + 208);
    swift_beginAccess();
    *(v14 + 24) = &protocol witness table for GestureGraph;
    swift_unknownObjectWeakAssign();

    $defer #1 () in GestureGraph.init(rootResponder:)();

    outlined destroy of GraphHost.Data(v19);

    return v13;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for TextAttributeModifierBase();
  v13 = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    v16 = v15 - v7;
    if (!__OFSUB__(v15, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v20 = __CocoaSet.count.getter();
  v16 = v20 - v7;
  if (__OFSUB__(v20, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v17 = (v6 + 8 * v8);
  v18 = &v9[v7];
  if (v17 != v18 || v17 >= &v18[8 * v16])
  {
    memmove(v17, v18, 8 * v16);
  }

  if (v10)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_28;
  }

  v5[2] = v13 + v11;
LABEL_17:
  if (v8 < 1)
  {
    return;
  }

  MEMORY[0x1EEE9AC00](v13);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_29:
    _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq57SwiftUI25TextAttributeModifierBaseC_ytTg5073_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_7i4UI25klmN7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_n(v4, partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
    return;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for CAMediaTimingFunction(0, a4);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = __CocoaSet.count.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for AXCustomContent);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = __CocoaSet.count.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a3 - v8;
  if (__OFSUB__(a3, v8))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = *v7;
  v11 = (v10 + 32 + 4 * result);
  if (!v9)
  {
    goto LABEL_13;
  }

  v12 = *(v10 + 16);
  v13 = __OFSUB__(v12, a2);
  v14 = v12 - a2;
  if (v13)
  {
    goto LABEL_22;
  }

  result = v11 + 4 * a3;
  v15 = (v10 + 32 + 4 * a2);
  if (result != v15 || result >= v15 + 4 * v14)
  {
    v17 = a3;
    v18 = a6;
    v19 = a5;
    v20 = a7;
    result = memmove(result, v15, 4 * v14);
    a7 = v20;
    a5 = v19;
    a6 = v18;
    a3 = v17;
  }

  v21 = *(v10 + 16);
  v13 = __OFADD__(v21, v9);
  v22 = v21 + v9;
  if (v13)
  {
    goto LABEL_23;
  }

  *(v10 + 16) = v22;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (__OFSUB__(a7 >> 1, a6))
  {
    goto LABEL_24;
  }

  if ((a7 >> 1) - a6 != a3)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v23 = 4 * a3;

  return memcpy(v11, (a5 + 4 * a6), v23);
}

void type metadata accessor for AnimatorState<Double>.Fork(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for CollectionOfOne<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>()
{
  if (!lazy cache variable for type metadata for CollectionOfOne<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>)
  {
    type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)();
    v0 = type metadata accessor for CollectionOfOne();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CollectionOfOne<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>);
    }
  }
}

void type metadata accessor for AnimatorState<CGFloat>.Fork(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for AnimatorState.Fork();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _GraphInputs.scrollPositionAnchor(kind:)(char *a1)
{
  v2 = *a1;
  v3 = *v1;
  if (v2)
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(v3);
  }

  else
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020ScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(v3);
  }
}

uint64_t ScrollPositionBindingModifier.anchor.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 104) = result;
  *(v3 + 112) = a2;
  *(v3 + 120) = a3 & 1;
  return result;
}

__n128 ScrollPositionBindingModifier.init(binding:anchor:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 80);
  *(a5 + 64) = *(a1 + 64);
  *(a5 + 80) = v5;
  v6 = *(a1 + 96);
  v7 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v7;
  result = *(a1 + 48);
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 48) = result;
  *(a5 + 96) = v6;
  *(a5 + 104) = a2;
  *(a5 + 112) = a3;
  *(a5 + 120) = a4 & 1;
  return result;
}

uint64_t _GraphInputs.setScrollPositionAnchor(_:kind:)(int a1, char *a2)
{
  v3 = v2;
  v5 = *a2;

  if (v5)
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(v3, a1);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020ScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(v3, a1);
  }
}

uint64_t _GraphInputs.setScrollPosition(storage:kind:)(unsigned int *a1, char *a2)
{
  v3 = *a1 | (*(a1 + 4) << 32);
  v4 = *a2;

  if (v4)
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(v2, v3);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE014ScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(v2, v3);
  }
}

uint64_t ScrollPositionBindingModifier.AdjustedAnchor.value.getter()
{
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v0 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_11;
    }
  }

  else if (static Semantics.forced >= v0)
  {
    goto LABEL_11;
  }

  _s7SwiftUI7BindingVyAA14ScrollPositionVGMaTm_0(0, &lazy cache variable for type metadata for UnitPoint?, &type metadata for UnitPoint, MEMORY[0x1E69E6720]);
  if (*(AGGraphGetValue() + 16))
  {
    return 0;
  }

LABEL_11:
  _s7SwiftUI7BindingVyAA14ScrollPositionVGMaTm_0(0, &lazy cache variable for type metadata for UnitPoint?, &type metadata for UnitPoint, MEMORY[0x1E69E6720]);
  return *AGGraphGetValue();
}

void protocol witness for static Rule.initialValue.getter in conformance ScrollPositionBindingModifier.AdjustedAnchor(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
}

uint64_t protocol witness for Rule.value.getter in conformance ScrollPositionBindingModifier.AdjustedAnchor@<X0>(uint64_t a1@<X8>)
{
  result = ScrollPositionBindingModifier.AdjustedAnchor.value.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

double protocol witness for static StatefulRule.initialValue.getter in conformance ScrollPositionBindingModifier.MakeRequest@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 1;
  *(a1 + 24) = xmmword_18DD85500;
  return result;
}

__n128 ScrollValueModifier.init(value:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  return result;
}

Swift::Int ScrollStateInputKind.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t _GraphInputs.scrollPositionValue()()
{
  v1 = *v0;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollPositionKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014ScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v1, v5);
  if (!v2)
  {
    return *MEMORY[0x1E698D3F8];
  }

  if (*(v2 + 76) == 255 || ((*(v2 + 76) << 32) & 0x100000000) == 0)
  {
    return *MEMORY[0x1E698D3F8];
  }

  else
  {
    return *(v2 + 72);
  }
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.ScrollPositionAnchorKey@<X0>(void *a1@<X2>, _DWORD *a2@<X3>, _DWORD *a3@<X8>)
{
  if (*a1 != -1)
  {
    v3 = a2;
    v4 = a3;
    result = swift_once();
    a3 = v4;
    a2 = v3;
  }

  *a3 = *a2;
  return result;
}

uint64_t specialized static ScrollValueModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t *a2)
{
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE014ScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(a2, 0xFF00000000);

  v4 = *MEMORY[0x1E698D3F8];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020ScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(a2, v4);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE014ScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(a2, OffsetAttribute2 | 0x100000000);
}

unint64_t lazy protocol witness table accessor for type ScrollStateInputKind and conformance ScrollStateInputKind()
{
  result = lazy protocol witness table cache variable for type ScrollStateInputKind and conformance ScrollStateInputKind;
  if (!lazy protocol witness table cache variable for type ScrollStateInputKind and conformance ScrollStateInputKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollStateInputKind and conformance ScrollStateInputKind);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t assignWithTake for ScrollPositionBindingModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  if (a1 != a2)
  {
    outlined destroy of ScrollPosition.Storage(a1 + 16);
    v4 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v4;
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 58) = *(a2 + 58);
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollPositionBindingModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
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

uint64_t storeEnumTagSinglePayload for ScrollPositionBindingModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for ScrollPositionBindingModifier.MakeRequest(uint64_t result)
{
  if (*(result + 80))
  {
    if (!*(result + 73))
    {
      return __swift_destroy_boxed_opaque_existential_1(result + 16);
    }
  }

  return result;
}

__n128 assignWithCopy for ScrollPositionBindingModifier.MakeRequest(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 80);
  if (!*(a1 + 80))
  {
    if (!v3)
    {
      v16 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v16;
      result = *(a2 + 48);
      v17 = *(a2 + 64);
      v18 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 64) = v17;
      *(a1 + 80) = v18;
      *(a1 + 48) = result;
      return result;
    }

    if (*(a2 + 73))
    {
      v8 = *(a2 + 16);
      v9 = *(a2 + 32);
      v10 = *(a2 + 48);
      *(a1 + 58) = *(a2 + 58);
      *(a1 + 32) = v9;
      *(a1 + 48) = v10;
      *(a1 + 16) = v8;
      goto LABEL_14;
    }

    v20 = *(a2 + 40);
    *(a1 + 40) = v20;
    *(a1 + 48) = *(a2 + 48);
    v4 = a1;
    (**(v20 - 8))(a1 + 16, a2 + 16);
LABEL_13:
    a1 = v4;
    v21 = *(a2 + 72);
    *(v4 + 56) = *(a2 + 56);
    *(v4 + 72) = v21;
    goto LABEL_14;
  }

  if (!v3)
  {
    v11 = a1;
    outlined destroy of ScrollPosition(a1 + 16);
    v12 = *(a2 + 32);
    *(v11 + 16) = *(a2 + 16);
    *(v11 + 32) = v12;
    v14 = *(a2 + 64);
    result = *(a2 + 80);
    v15 = *(a2 + 48);
    *(v11 + 96) = *(a2 + 96);
    *(v11 + 64) = v14;
    *(v11 + 80) = result;
    *(v11 + 48) = v15;
    return result;
  }

  if (a1 == a2)
  {
    goto LABEL_14;
  }

  v4 = a1;
  outlined destroy of ScrollPosition.Storage(a1 + 16);
  if (!*(a2 + 73))
  {
    v19 = *(a2 + 40);
    *(v4 + 40) = v19;
    *(v4 + 48) = *(a2 + 48);
    (**(v19 - 8))(v4 + 16, a2 + 16);
    goto LABEL_13;
  }

  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  a1 = v4;
  *(v4 + 58) = *(a2 + 58);
  *(v4 + 32) = v6;
  *(v4 + 48) = v7;
  *(v4 + 16) = v5;
LABEL_14:
  result = *(a2 + 80);
  *(a1 + 80) = result;
  *(a1 + 96) = *(a2 + 96);
  return result;
}

__n128 assignWithTake for ScrollPositionBindingModifier.MakeRequest(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  if (*(a1 + 80))
  {
    v4 = *(a2 + 80);
    if (v4)
    {
      if (a1 != a2)
      {
        v5 = a1;
        outlined destroy of ScrollPosition.Storage(a1 + 16);
        a1 = v5;
        v6 = *(a2 + 32);
        *(v5 + 16) = *(a2 + 16);
        *(v5 + 32) = v6;
        *(v5 + 48) = *(a2 + 48);
        result = *(a2 + 58);
        *(v5 + 58) = result;
        v4 = *(a2 + 80);
      }

      v7 = *(a2 + 88);
      v8 = *(a2 + 96);
      *(a1 + 80) = v4;
      *(a1 + 88) = v7;
      *(a1 + 96) = v8;
    }

    else
    {
      v11 = a1;
      outlined destroy of ScrollPosition(a1 + 16);
      v12 = *(a2 + 64);
      *(v11 + 48) = *(a2 + 48);
      *(v11 + 64) = v12;
      *(v11 + 80) = *(a2 + 80);
      *(v11 + 96) = *(a2 + 96);
      result = *(a2 + 16);
      v13 = *(a2 + 32);
      *(v11 + 16) = result;
      *(v11 + 32) = v13;
    }
  }

  else
  {
    v9 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v9;
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    result = *(a2 + 16);
    v10 = *(a2 + 32);
    *(a1 + 16) = result;
    *(a1 + 32) = v10;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrollPositionBindingModifier.MakeRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 80);
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

uint64_t storeEnumTagSinglePayload for ScrollPositionBindingModifier.MakeRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ModifierTransition(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = ~v7;
  v9 = v6 + v7;
  v10 = ((v6 + v7) & ~v7) + v6;
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v10 > 0x18)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v7 + 16) & v8));
  }

  else
  {
    v14 = *(v5 + 16);
    v14(a1, a2, v4);
    v14(((v3 + v9) & v8), ((a2 + v9) & v8), v4);
  }

  return v3;
}

uint64_t destroy for ModifierTransition(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v6 = *(v3 - 8) + 8;
  v7 = *v6;
  (*v6)(a1, v3);
  v4 = (*(v6 + 56) + a1 + *(v6 + 72)) & ~*(v6 + 72);

  return v7(v4, v3);
}

unint64_t initializeWithCopy for ModifierTransition(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(a1, a2, v5);
  v7((*(v8 + 48) + *(v8 + 64) + a1) & ~*(v8 + 64), (*(v8 + 48) + *(v8 + 64) + a2) & ~*(v8 + 64), v5);
  return a1;
}

unint64_t assignWithCopy for ModifierTransition(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v8 = v6 + 24;
  v7(a1, a2, v5);
  v7((*(v8 + 40) + *(v8 + 56) + a1) & ~*(v8 + 56), (*(v8 + 40) + *(v8 + 56) + a2) & ~*(v8 + 56), v5);
  return a1;
}

unint64_t initializeWithTake for ModifierTransition(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v8 = v6 + 32;
  v7(a1, a2, v5);
  v7((*(v8 + 32) + *(v8 + 48) + a1) & ~*(v8 + 48), (*(v8 + 32) + *(v8 + 48) + a2) & ~*(v8 + 48), v5);
  return a1;
}

unint64_t assignWithTake for ModifierTransition(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v8 = v6 + 40;
  v7(a1, a2, v5);
  v7((*(v8 + 24) + *(v8 + 40) + a1) & ~*(v8 + 40), (*(v8 + 24) + *(v8 + 40) + a2) & ~*(v8 + 40), v5);
  return a1;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1, uint64_t a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, a2);
  *a1 = v4;
  return result;
}

uint64_t View.safeAreaInsetPreferenceValue<A, each B>(_:edge:spacing:alignment:insetLayoutBehavior:_:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = *a6;
  *&v22 = 1;
  *(&v22 + 1) = a3;
  LOBYTE(v23) = a4 & 1;
  BYTE1(v23) = specialized Edge.init(rawValue:)(2 * (a2 & 1u));
  *(&v23 + 1) = a5;
  *&v24 = a7;
  *(&v24 + 1) = a8;
  v25 = v17;
  *&v26 = a9;
  *(&v26 + 1) = a11;
  *&v27 = a12;
  *(&v27 + 1) = a14;
  *&v28 = a15;
  v18 = type metadata accessor for _InsetPreferenceModifier();
  View.modifier<A>(_:)(&v22, a10, v18);
  v26 = v22;
  v27 = v23;
  v28 = v24;
  v29 = v25;
  v19 = *(*(v18 - 8) + 8);

  return v19(&v26, v18);
}

{
  v17 = *a6;
  *&v22 = 1;
  *(&v22 + 1) = a3;
  LOBYTE(v23) = a4 & 1;
  BYTE1(v23) = specialized Edge.init(rawValue:)((2 * (a2 & 1)) | 1u);
  *(&v23 + 1) = a5;
  *&v24 = a7;
  *(&v24 + 1) = a8;
  v25 = v17;
  *&v26 = a9;
  *(&v26 + 1) = a11;
  *&v27 = a12;
  *(&v27 + 1) = a14;
  *&v28 = a15;
  v18 = type metadata accessor for _InsetPreferenceModifier();
  View.modifier<A>(_:)(&v22, a10, v18);
  v26 = v22;
  v27 = v23;
  v28 = v24;
  v29 = v25;
  v19 = *(*(v18 - 8) + 8);

  return v19(&v26, v18);
}

uint64_t _InsetPreferenceModifier.init(transform:edge:regions:spacing:alignmentKey:insetLayoutBehavior:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *a8;
  *a9 = a4;
  *(a9 + 8) = a5;
  *(a9 + 16) = a6 & 1;
  *(a9 + 17) = a3;
  *(a9 + 24) = a7;
  *(a9 + 32) = result;
  *(a9 + 40) = a2;
  *(a9 + 48) = v9;
  return result;
}

uint64_t View.safeAreaInsetPreferenceValue<A, each B>(_:edge:spacing:alignmentKey:insetLayoutBehavior:_:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v15 = *a6;
  *&v19 = 1;
  *(&v19 + 1) = a3;
  LOBYTE(v20) = a4 & 1;
  BYTE1(v20) = a2;
  *(&v20 + 1) = a5;
  *&v21 = a7;
  *(&v21 + 1) = a8;
  v22 = v15;
  *&v23 = a9;
  *(&v23 + 1) = a11;
  *&v24 = a12;
  *(&v24 + 1) = a14;
  *&v25 = a15;
  v16 = type metadata accessor for _InsetPreferenceModifier();
  View.modifier<A>(_:)(&v19, a10, v16);
  v23 = v19;
  v24 = v20;
  v25 = v21;
  v26 = v22;
  v17 = *(*(v16 - 8) + 8);

  return v17(&v23, v16);
}

uint64_t static _InsetPreferenceModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v10 = a5;
  v104 = a3;
  v13 = a10;
  v195 = *MEMORY[0x1E69E9840];
  v118 = a6;
  v120 = a5;
  v111 = a9;
  v112 = a10;
  v113 = a7;
  v116 = a8;
  v103 = 8 * a5;
  v106 = a4;
  if (a5 == 1)
  {
    v14 = a8;
    v15 = a7;
    v16 = a6;
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata = type metadata accessor for WeakAttribute();
  }

  else
  {
    v119 = &v97;
    MEMORY[0x1EEE9AC00](a1);
    if (v10)
    {
      v19 = v118 & 0xFFFFFFFFFFFFFFFELL;
      v20 = v116 & 0xFFFFFFFFFFFFFFFELL;
      v21 = (&v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      v22 = v120;
      do
      {
        v19 += 8;
        v20 += 8;
        swift_getAssociatedTypeWitness();
        *v21++ = type metadata accessor for WeakAttribute();
        --v22;
      }

      while (v22);
    }

    v10 = v120;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v16 = v118;
    v13 = v112;
    v15 = v113;
    v14 = v116;
  }

  v110 = &v97;
  v102 = TupleTypeMetadata;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v119 = (&v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v189 = v10;
  *(&v189 + 1) = v16;
  *&v190 = v15;
  *(&v190 + 1) = v14;
  *&v191 = v13;
  v108 = type metadata accessor for SafeAreaSecondaryChild();
  v109 = &v97;
  MEMORY[0x1EEE9AC00](v108);
  v107 = (&v97 - v24);
  v25 = a2[1];
  v191 = a2[2];
  v26 = a2[2];
  v192 = a2[3];
  v27 = a2[3];
  v193 = a2[4];
  v28 = a2[1];
  v189 = *a2;
  v29 = *a2;
  v190 = v28;
  v185 = v26;
  v186 = v27;
  v187 = a2[4];
  v115 = *a1;
  v194 = *(a2 + 20);
  v188 = *(a2 + 20);
  v183 = v29;
  v184 = v25;
  if (v10)
  {
    outlined init with copy of _ViewInputs(&v189, &v177);
    v30 = (v16 & 0xFFFFFFFFFFFFFFFELL);
    v31 = (v14 & 0xFFFFFFFFFFFFFFFELL);
    do
    {
      v33 = *v30++;
      v32 = v33;
      v34 = *v31++;
      PreferencesInputs.add<A>(_:)(v32, v32, v34);
      --v10;
    }

    while (v10);
  }

  else
  {
    outlined init with copy of _ViewInputs(&v189, &v177);
  }

  v35 = BYTE4(v191);
  if ((WORD2(v191) & 0x100) != 0)
  {
    specialized _GraphInputs.pushScope<A>(id:)(0);
    v179 = v191;
    v180 = v192;
    v181 = v193;
    v182 = v194;
    v177 = v189;
    v178 = v190;
    outlined init with copy of _ViewInputs(&v189, &v171);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(&v177, &type metadata for _ZStackLayout, &protocol witness table for _ZStackLayout);

    specialized _GraphInputs.pushScope<A>(id:)(1);
  }

  else
  {
    v179 = v191;
    v180 = v192;
    v181 = v193;
    v182 = v194;
    v177 = v189;
    v178 = v190;
    outlined init with copy of _ViewInputs(&v189, &v171);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(&v177, &type metadata for _ZStackLayout, &protocol witness table for _ZStackLayout);
  }

  v36 = v118;
  if ((v35 & 0x22) == 0)
  {
    v114 = 0;
    v101 = 0;
    v117 = 1;
    v105 = 1;
    goto LABEL_24;
  }

  v105 = (v35 & 0x20) == 0;
  v114 = v193;
  v117 = DWORD2(v193);
  v37 = v120;
  closure #1 in static _InsetPreferenceModifier._makeView(modifier:inputs:body:)(1, v120, v118, v15, v14, v13);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v38 = v36;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v39 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v40 = specialized CachedEnvironment.attribute<A>(id:_:)(v39);
  swift_endAccess();
  closure #2 in static _InsetPreferenceModifier._makeView(modifier:inputs:body:)(1, v37, v38, v15, v14, v13);
  v41 = AGGraphCreateOffsetAttribute2();
  v42 = *MEMORY[0x1E698D3F8];
  v98 = v40;
  v99 = v41;
  if ((v35 & 0x20) != 0)
  {
    v43 = v41;
    v97 = AGMakeUniqueID();
    v44 = v114;
    *&v171 = __PAIR64__(v117, v114);
    v45 = OffsetAttribute2;
    *(&v171 + 1) = __PAIR64__(v40, OffsetAttribute2);
    *&v172 = __PAIR64__(v42, v43);
    DWORD2(v172) = v42;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for (ViewGeometry, ViewGeometry)();
    lazy protocol witness table accessor for type InsetChildGeometry and conformance InsetChildGeometry();
    v46 = Attribute.init<A>(body:value:flags:update:)();
    LODWORD(v187) = AGGraphCreateOffsetAttribute2();
    HIDWORD(v101) = v185;
    DWORD2(v187) = AGGraphCreateOffsetAttribute2();
    *&v171 = __PAIR64__(v117, v44);
    v47 = v117;
    *(&v171 + 1) = __PAIR64__(v40, v45);
    *&v172 = __PAIR64__(v42, v43);
    *(&v172 + 1) = __PAIR64__(HIDWORD(v193), v42);
    v48 = v97;
    *&v173 = v97;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type InsetPrimarySafeAreas and conformance InsetPrimarySafeAreas();
    LODWORD(v101) = Attribute.init<A>(body:value:flags:update:)();
    HIDWORD(v187) = v101;
    *&v171 = __PAIR64__(v47, v44);
    DWORD2(v171) = HIDWORD(v192);
    *&v172 = v48;
    v13 = v112;
    v15 = v113;
    v14 = v116;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type InsetPrimaryTransform and conformance InsetPrimaryTransform();
    HIDWORD(v186) = Attribute.init<A>(body:value:flags:update:)();
    LODWORD(v185) = HIDWORD(v101) | 0x1C;
    LODWORD(v181) = AGGraphCreateOffsetAttribute2();
    v49 = v179;
    HIDWORD(v101) = v46;
    DWORD2(v181) = AGGraphCreateOffsetAttribute2();
    LODWORD(v179) = v49 | 0x18;
    if ((v35 & 2) != 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    v114 = 0;
    v117 = 1;
    goto LABEL_23;
  }

  v101 = 0;
  if ((v35 & 2) == 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  *&v171 = __PAIR64__(v117, v114);
  *(&v171 + 1) = __PAIR64__(v98, OffsetAttribute2);
  *&v172 = __PAIR64__(v42, v99);
  DWORD2(v172) = v42;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type InsetLayoutComputer and conformance InsetLayoutComputer();
  v114 = Attribute.init<A>(body:value:flags:update:)();
  v117 = 0;
LABEL_23:
  v36 = v118;
LABEL_24:
  v169[2] = v185;
  v169[3] = v186;
  v169[4] = v187;
  v170 = v188;
  v169[0] = v183;
  v169[1] = v184;
  v165 = v185;
  v166 = v186;
  v167 = v187;
  v168 = v188;
  v163 = v183;
  v164 = v184;
  v50 = outlined init with copy of _ViewInputs(v169, &v171);
  v104(&v125, v50, &v163);
  v173 = v165;
  v174 = v166;
  v175 = v167;
  v176 = v168;
  v171 = v163;
  v172 = v164;
  outlined destroy of _ViewInputs(&v171);
  if (v120)
  {
    v51 = 0;
    v165 = v185;
    v166 = v186;
    v167 = v187;
    v168 = v188;
    v52 = v36 & 0xFFFFFFFFFFFFFFFELL;
    v53 = v14 & 0xFFFFFFFFFFFFFFFELL;
    v163 = v183;
    v164 = v184;
    v54 = v120;
    do
    {
      v55 = *(v52 + 8 * v51);
      v56 = *(v53 + 8 * v51);
      v153 = v165;
      v154 = v166;
      v155 = v167;
      v156 = v168;
      v151 = v163;
      v152 = v164;
      outlined init with copy of _ViewInputs(&v163, &v157);
      static PreferenceRewriter.rewritePreferenceKey<A>(_:_:_:)(v55, &v151, &v125, v55, v56);
      v159 = v153;
      v160 = v154;
      v161 = v155;
      v162 = v156;
      v157 = v151;
      v158 = v152;
      v57 = outlined destroy of _ViewInputs(&v157);
      ++v51;
    }

    while (v54 != v51);
    v106 = &v97;
    MEMORY[0x1EEE9AC00](v57);
    v59 = (&v97 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
    v60 = 0;
    v61 = (v102 + 32);
    do
    {
      _ViewOutputs.subscript.getter(*(v52 + 8 * v60), *(v52 + 8 * v60), *(v53 + 8 * v60));
      if (v54 == 1)
      {
        v62 = 0;
      }

      else
      {
        v62 = *v61;
      }

      v63 = v119;
      *(v63 + v62) = AGCreateWeakAttribute();
      v59[v60++] = v63 + v62;
      v61 += 4;
      v54 = v120;
    }

    while (v120 != v60);
    v13 = v112;
    v15 = v113;
    v14 = v116;
    v36 = v118;
  }

  else
  {
    v106 = &v97;
    v59 = &v134;
  }

  v64 = v107;
  SafeAreaSecondaryChild.init(modifier:preferenceValues:)(v115, v59, v120, v36, v15, v14, v13, v107);
  v65 = v108;
  WitnessTable = swift_getWitnessTable();
  _GraphValue.init<A>(_:)(v64, v15, v65, WitnessTable, &v121);
  v67 = v121;
  v165 = v179;
  v166 = v180;
  v167 = v181;
  v168 = v182;
  v163 = v177;
  v164 = v178;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v147 = v165;
  v148 = v166;
  v149 = v167;
  v150 = v168;
  v145 = v163;
  v146 = v164;
  v69 = v165;
  LODWORD(v147) = 0;
  LODWORD(v137[0]) = v67;
  v151 = v163;
  v152 = v164;
  v156 = v168;
  v154 = v166;
  v155 = v167;
  v153 = v147;
  v141 = v147;
  v142 = v166;
  v143 = v167;
  v144 = v168;
  v139 = v163;
  v140 = v164;
  v70 = *(v13 + 24);
  outlined init with copy of _ViewInputs(&v163, &v157);
  outlined init with copy of _ViewInputs(&v151, &v157);
  v70(&v122, v137, &v139, v15, v13);
  v159 = v141;
  v160 = v142;
  v161 = v143;
  v162 = v144;
  v157 = v139;
  v158 = v140;
  outlined destroy of _ViewInputs(&v157);
  LODWORD(v147) = v69;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(&v122, &v145);
    AGSubgraphEndTreeElement();
  }

  v141 = v147;
  v142 = v148;
  v143 = v149;
  v144 = v150;
  v139 = v145;
  v140 = v146;
  v71 = outlined destroy of _ViewInputs(&v139);
  v72 = v122;
  v73 = v123;
  v74 = v127;
  v75 = *MEMORY[0x1E698D3F8];
  if (v127 == *MEMORY[0x1E698D3F8])
  {
    v76 = 0;
  }

  else
  {
    v76 = v127;
  }

  if (v124 == v75)
  {
    v77 = 0;
  }

  else
  {
    v77 = v124;
  }

  if (!v105)
  {
    LODWORD(v120) = v123;
    v78 = v124 == v75;
    v79 = v122;
    MEMORY[0x1EEE9AC00](v71);
    *(&v97 - 4) = v76;
    *(&v97 - 12) = v74 == v75;
    *(&v97 - 2) = v77;
    *(&v97 - 4) = v78;
    MEMORY[0x1EEE9AC00](v80);
    *(&v97 - 2) = partial apply for closure #7 in static _InsetPreferenceModifier._makeView(modifier:inputs:body:);
    *(&v97 - 1) = v81;
    v82 = AGGraphMutateAttribute();
    MEMORY[0x1EEE9AC00](v82);
    *(&v97 - 4) = v76;
    *(&v97 - 12) = v74 == v75;
    v72 = v79;
    *(&v97 - 2) = v77;
    *(&v97 - 4) = v78;
    MEMORY[0x1EEE9AC00](v83);
    *(&v97 - 2) = partial apply for closure #8 in static _InsetPreferenceModifier._makeView(modifier:inputs:body:);
    *(&v97 - 1) = v84;
    v71 = AGGraphMutateAttribute();
    v73 = v120;
  }

  if ((v117 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v71);
    *(&v97 - 4) = v76;
    *(&v97 - 12) = v85;
    *(&v97 - 2) = v77;
    *(&v97 - 4) = v86;
    MEMORY[0x1EEE9AC00](v87);
    *(&v97 - 2) = partial apply for closure #9 in static _InsetPreferenceModifier._makeView(modifier:inputs:body:);
    *(&v97 - 1) = v88;
    AGGraphMutateAttribute();
  }

  v132 = MEMORY[0x1E69E7CC0];
  v133 = 0;
  v128 = v125;
  v129 = v126;
  v130 = v72;
  v131 = v73;
  v89 = v192;
  v90 = *(v192 + 16);
  if (v90)
  {

    v91 = (v89 + 40);
    do
    {
      static PreferenceKey.visitKey<A>(_:)(&v128, *(v91 - 1), &type metadata for PairwisePreferenceCombinerVisitor, *v91, &protocol witness table for PairwisePreferenceCombinerVisitor);
      v91 += 2;
      --v90;
    }

    while (v90);
  }

  else
  {
  }

  v92 = v114;
  if (v117)
  {
    v92 = v75;
  }

  v93 = v111;
  *(v111 + 12) = v92;
  v135[2] = v179;
  v135[3] = v180;
  v135[4] = v181;
  v136 = v182;
  v135[0] = v177;
  v135[1] = v178;
  outlined destroy of _ViewInputs(v135);
  v137[2] = v185;
  v137[3] = v186;
  v137[4] = v187;
  v138 = v188;
  v137[0] = v183;
  v137[1] = v184;
  outlined destroy of _ViewInputs(v137);
  v94 = v132;
  v95 = v133;

  *v93 = v94;
  *(v93 + 8) = v95;
  return result;
}

uint64_t closure #1 in static _InsetPreferenceModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v12[2] = type metadata accessor for _InsetPreferenceModifier();
  type metadata accessor for (regions: SafeAreaRegions, spacing: CGFloat?, edge: Edge, alignmentKey: AlignmentKey)(0);
  v8 = v7;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v12, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

uint64_t closure #2 in static _InsetPreferenceModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v10[2] = type metadata accessor for _InsetPreferenceModifier();
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 48, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_1, v10, &type metadata for SafeAreaInsetLayoutBehavior, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11;
}

void *SafeAreaSecondaryChild.init(modifier:preferenceValues:)@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _DWORD *a8@<X8>)
{
  v8 = a7;
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v14 = a1;
  if (a3 == 1)
  {
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata = type metadata accessor for WeakAttribute();
  }

  else
  {
    v31 = a1;
    v34 = a4;
    v35 = a6;
    v32 = a5;
    v33 = a7;
    v30[1] = v30;
    MEMORY[0x1EEE9AC00](a1);
    if (a3)
    {
      v18 = v34 & 0xFFFFFFFFFFFFFFFELL;
      v19 = v35 & 0xFFFFFFFFFFFFFFFELL;
      v20 = (v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      v21 = a3;
      do
      {
        v18 += 8;
        v19 += 8;
        swift_getAssociatedTypeWitness();
        *v20++ = type metadata accessor for WeakAttribute();
        --v21;
      }

      while (v21);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v10 = v32;
    v8 = v33;
    v11 = v34;
    v9 = v35;
    v14 = v31;
  }

  v22 = *(*(TupleTypeMetadata - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  if (a3)
  {
    v24 = (v23 + 32);
    v25 = a3;
    do
    {
      if (a3 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v27 = *a2++;
      *(v30 + v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0)) = *v27;
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  *a8 = v14;
  v36 = a3;
  v37 = v11;
  v38 = v10;
  v39 = v9;
  v40 = v8;
  v28 = type metadata accessor for SafeAreaSecondaryChild();
  return memcpy(a8 + *(v28 + 60), v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
}

uint64_t SafeAreaSecondaryChild.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v77 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for ObservationTracking._AccessList();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v56 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v56 - v11;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v60 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v65 = &v56 - v19;
  v20 = *(*(a1 + 32) - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v66 = v26;
  v67 = &v56 - v25;
  v27 = *(a1 + 24);
  v70 = *(a1 + 16);
  v71 = v27;
  v72 = v26;
  v73 = *(a1 + 40);
  v74 = v2;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v28 = static ObservationCenter._current;
  swift_beginAccess();
  v29 = pthread_getspecific(*(v28 + 2));
  v30 = v20;
  if (!v29)
  {
    v31 = swift_slowAlloc();
    pthread_setspecific(*(v28 + 2), v31);
    v76 = type metadata accessor for ObservationCenter();
    *&v75 = *(v28 + 3);
    outlined init with take of Any(&v75, v31);
    v30 = v20;

    v29 = v31;
  }

  outlined init with copy of Any(v29, &v75);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v32 = v68;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
    *(v32 + 24) = v28;
    goto LABEL_9;
  }

  v57 = v7;
  v58 = CurrentAttribute;
  swift_beginAccess();
  v59 = *(v32 + 24);
  *(v32 + 24) = MEMORY[0x1E69E7CC0];
  v34 = (*(v5 + 56))(v17, 1, 1, v4);
  MEMORY[0x1EEE9AC00](v34);
  v35 = v66;
  *(&v56 - 4) = v66;
  *(&v56 - 3) = partial apply for closure #1 in SafeAreaSecondaryChild.value.getter;
  *(&v56 - 2) = &v69;
  v36 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Error);
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v17, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), (&v56 - 6), v60, v36, v35, MEMORY[0x1E69E7288], &v68);
  v7 = *(v30 + 32);
  (v7)(v67, v23, v35);
  v37 = v65;
  outlined init with take of ObservationTracking._AccessList?(v17, v65);
  outlined init with copy of ObservationTracking._AccessList?(v37, v14, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v38 = (*(v5 + 48))(v14, 1, v4);
  v64 = v4;
  if (v38 == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v37, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v39 = v14;
    v40 = v63;
    goto LABEL_12;
  }

  v41 = v62;
  v60 = *(v5 + 32);
  v60(v62, v14, v4);
  (*(v5 + 16))(v61, v41, v4);
  v28 = *(v32 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v32 + 24) = v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v44 = *(v28 + 2);
  v43 = *(v28 + 3);
  if (v44 >= v43 >> 1)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1, v28);
  }

  *(v28 + 2) = v44 + 1;
  v45 = v64;
  v60(&v28[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v44], v61, v64);
  *(v32 + 24) = v28;
  (*(v5 + 8))(v62, v45);
  v40 = v63;
  v35 = v66;
  v39 = v65;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v39, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  (v7)(v40, v67, v35);
  v46 = *(v32 + 24);
  v47 = *(v46 + 16);
  if (v47)
  {
    v49 = *(v5 + 16);
    v48 = v5 + 16;
    v66 = *(v32 + 24);
    v67 = v49;
    v50 = v46 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
    v51 = *(v48 + 56);

    v52 = v58;
    v53 = v64;
    v54 = v57;
    do
    {
      (v67)(v54, v50, v53);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v52, v54);
      (*(v48 - 8))(v54, v53);
      v50 += v51;
      --v47;
    }

    while (v47);
  }

  *(v32 + 24) = v59;
}

uint64_t closure #1 in SafeAreaSecondaryChild.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  type metadata accessor for SafeAreaSecondaryChild();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  v16[6] = a6;
  v16[7] = a1;
  v16[9] = a2;
  v16[10] = a3;
  v16[11] = a4;
  v16[12] = a5;
  v16[13] = a6;
  v14 = type metadata accessor for _InsetPreferenceModifier();
  return Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #1 in closure #1 in SafeAreaSecondaryChild.value.getter, v16, v14, a4, a7);
}

uint64_t closure #1 in closure #1 in SafeAreaSecondaryChild.value.getter@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a3;
  v117 = a3;
  v102 = a4;
  v100 = 8 * a3;
  v99 = a8;
  v115 = a7;
  v116 = a2;
  v112 = a1;
  v113 = a5;
  if (a3 == 1)
  {
    v10 = a4;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v9)
    {
      v13 = v102 & 0xFFFFFFFFFFFFFFFELL;
      v14 = a6 & 0xFFFFFFFFFFFFFFFELL;
      v15 = (&v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      v16 = v117;
      do
      {
        v13 += 8;
        v14 += 8;
        *v15++ = swift_getAssociatedTypeWitness();
        --v16;
      }

      while (v16);
    }

    v9 = v117;
    AssociatedTypeWitness = swift_getTupleTypeMetadata();
    v10 = v102;
  }

  v103 = AssociatedTypeWitness;
  v101 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v109 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v106 = &v90 - v19;
  v97 = &v90;
  MEMORY[0x1EEE9AC00](v20);
  v108 = &v90 - v22;
  v98 = &v90;
  if (v9 == 1)
  {
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata = type metadata accessor for WeakAttribute();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v21);
    if (v9)
    {
      v25 = v102 & 0xFFFFFFFFFFFFFFFELL;
      v26 = a6 & 0xFFFFFFFFFFFFFFFELL;
      v27 = (&v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      v28 = v117;
      do
      {
        v25 += 8;
        v26 += 8;
        swift_getAssociatedTypeWitness();
        *v27++ = type metadata accessor for WeakAttribute();
        --v28;
      }

      while (v28);
    }

    v9 = v117;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v10 = v102;
  }

  v114 = TupleTypeMetadata;
  v29 = *(*(TupleTypeMetadata - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v96 = v31;
  if (v9 == 1)
  {
    swift_getAssociatedTypeWitness();
    v32 = type metadata accessor for Optional();
    v33 = v32;
  }

  else
  {
    v34 = a6;
    v111 = &v90;
    MEMORY[0x1EEE9AC00](v30);
    if (v9)
    {
      v36 = v102 & 0xFFFFFFFFFFFFFFFELL;
      v37 = a6 & 0xFFFFFFFFFFFFFFFELL;
      v38 = (&v90 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
      v39 = v117;
      do
      {
        v36 += 8;
        v37 += 8;
        swift_getAssociatedTypeWitness();
        *v38++ = type metadata accessor for Optional();
        --v39;
      }

      while (v39);
    }

    v9 = v117;
    v32 = swift_getTupleTypeMetadata();
    v33 = v32;
    a6 = v34;
    v10 = v102;
  }

  v95 = &v90;
  v40 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v42 = &v90 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = &v90;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v90 - v44;
  v46 = *(v112 + 40);
  v93 = *(v112 + 32);
  v92 = v46;
  v118 = v9;
  v119 = v10;
  v120 = v113;
  v121 = a6;
  v122 = v115;
  v47 = type metadata accessor for SafeAreaSecondaryChild();
  memcpy(&v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), &v116[*(v47 + 60)], v29);
  v104 = v33;
  v107 = v45;
  v91 = a6;
  if (v9)
  {
    v105 = v42;
    v110 = v40;
    v48 = v10 & 0xFFFFFFFFFFFFFFFELL;
    v49 = a6 & 0xFFFFFFFFFFFFFFFELL;
    v50 = 32;
    v115 = (a6 & 0xFFFFFFFFFFFFFFFELL);
    v116 = v48;
    v51 = v9;
    do
    {
      v53 = v9 == 1;
      v54 = v107;
      if (!v53)
      {
        v54 = &v107[*(v104 + v50)];
      }

      v55 = swift_getAssociatedTypeWitness();
      WeakValue = AGGraphGetWeakValue();
      v57 = *(v55 - 8);
      if (WeakValue)
      {
        (*(v57 + 16))(v54, WeakValue, v55);
        v52 = 0;
      }

      else
      {
        v52 = 1;
      }

      (*(v57 + 56))(v54, v52, 1, v55);
      v50 += 16;
      v49 += 8;
      v48 += 8;
      --v51;
      v9 = v117;
    }

    while (v51);
    v58 = v104;
    v42 = v105;
    (*(v110 + 16))(v105, v107, v104);
    v59 = (v58 + 32);
    v60 = (v103 + 32);
    v61 = v9;
    v63 = v115;
    v62 = v116;
    do
    {
      if (v9 == 1)
      {
        v64 = 0;
        v113 = v108;
      }

      else
      {
        v113 = &v108[*v60];
        v64 = *v59;
      }

      v115 = v63;
      v116 = v62;
      v65 = *v63;
      v112 = *v62;
      v66 = swift_getAssociatedTypeWitness();
      v67 = type metadata accessor for Optional();
      v114 = &v90;
      v68 = MEMORY[0x1EEE9AC00](v67);
      v70 = &v90 - v69;
      v111 = v71;
      (*(v71 + 16))(&v90 - v69, &v42[v64], v67, v68);
      v72 = *(v66 - 8);
      v73 = *(v72 + 48);
      if (v73(v70, 1, v66) == 1)
      {
        (*(v65 + 16))();
        if (v73(v70, 1, v66) != 1)
        {
          (v111[1])(v70, v67);
        }
      }

      else
      {
        (*(v72 + 32))(v113, v70, v66);
      }

      v59 += 4;
      v60 += 4;
      v63 = v115 + 1;
      v9 = v117;
      v62 = v116 + 8;
      --v61;
      v40 = v110;
      v42 = v105;
    }

    while (v61);
  }

  else
  {
    (*(v40 + 16))(v42, v45, v33);
  }

  v74 = *(v40 + 8);
  v110 = v40 + 8;
  v116 = v74;
  v75 = (v74)(v42, v104);
  v115 = &v90;
  v76 = MEMORY[0x1EEE9AC00](v75);
  v78 = (&v90 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v101 + 16))(v109, v108, v103, v76);
  if (v9)
  {
    v79 = v102 & 0xFFFFFFFFFFFFFFFELL;
    v80 = v91 & 0xFFFFFFFFFFFFFFFELL;
    v81 = (v103 + 32);
    v82 = v78;
    v83 = v9;
    do
    {
      if (v9 == 1)
      {
        v84 = 0;
        v85 = v106;
      }

      else
      {
        v84 = *v81;
        v85 = &v106[v84];
      }

      v79 += 8;
      v80 += 8;
      v86 = swift_getAssociatedTypeWitness();
      (*(*(v86 - 8) + 16))(v85, &v109[v84], v86);
      *v82++ = v85;
      v81 += 4;
      --v83;
      v9 = v117;
    }

    while (v83);
  }

  v93(v78);
  v87 = *(v101 + 8);
  v88 = v103;
  v87(v106, v103);
  v87(v109, v88);
  v87(v108, v88);
  return (v116)(v107, v104);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance SafeAreaSecondaryChild<Pack{repeat A}, B>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

double _s7SwiftUI32_DisplayList_StableIdentityScopeV2id6parentACx_ACtcAA16StronglyHashableRzlufCAA10StrongHashV_Tt2B5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  data[0] = a1;
  data[1] = a2;
  v10 = a3;
  *(a5 + 32) = MEMORY[0x1E69E7CC8];
  *(a5 + 40) = 0;
  *a5 = *a4;
  memset(&c, 0, sizeof(c));

  CC_SHA1_Init(&c);
  v12 = c;
  CC_SHA1_Update(&v12, data, 0x14u);
  *&c.h0 = *(a4 + 8);
  c.h4 = *(a4 + 24);
  CC_SHA1_Update(&v12, &c, 0x14u);
  outlined destroy of _DisplayList_StableIdentityScope(a4);
  memset(&c, 0, 20);
  CC_SHA1_Final(&c, &v12);
  h4 = c.h4;
  result = *&c.h0;
  *(a5 + 8) = *&c.h0;
  *(a5 + 24) = h4;
  return result;
}

uint64_t specialized _GraphInputs.pushScope<A>(id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = *v3;
  v8 = 0;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(*v3);
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    Value = AGGraphGetValue();
    v10 = *(Value + 28);
    v11 = Value[1];
    v18 = *Value;
    v19[0] = v11;
    *(v19 + 12) = v10;
    outlined init with copy of _DisplayList_StableIdentityScope(&v18, &v16);
    outlined init with copy of _DisplayList_StableIdentityScope(&v18, &v16);
    _s7SwiftUI32_DisplayList_StableIdentityScopeV2id6parentACx_ACtcAA16StronglyHashableRzlufCAA10StrongHashV_Tt2B5(a1, a2, a3, &v18, &v16);
    v19[2] = v16;
    v20[0] = v17[0];
    *(v20 + 12) = *(v17 + 12);
    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of _DisplayList_StableIdentityScope(&v16);
    a3 = AGCreateWeakAttribute();

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(v3, a3);

    v8 = v18;
    swift_beginAccess();
    v7 = *(v8 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + 16) = v7;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
  *(v8 + 16) = v7;
LABEL_3:
  v14 = *(v7 + 16);
  v13 = *(v7 + 24);
  if (v14 >= v13 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v7);
  }

  *(v7 + 16) = v14 + 1;
  *(v7 + 8 * v14 + 32) = a3;
  *(v8 + 16) = v7;
  return outlined destroy of _DisplayList_StableIdentityScope(&v18);
}

uint64_t specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(void *a1)
{
  v50 = a1;
  v71[1] = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v57 = v1;
  v58 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v59 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v49 - v5;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v6 = static Signpost.bodyInvoke;
    v7 = word_1ED539040;
    v8 = HIBYTE(word_1ED539040);
    v9 = byte_1ED539042;
    v10 = static os_signpost_type_t.begin.getter();
    v66 = v6;
    LOBYTE(v67) = v7;
    BYTE1(v67) = v8;
    BYTE2(v67) = v9;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v60 = *(&v6 + 1);
    LODWORD(v61) = v10;
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScheduledAnimationModifier);
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_18DDAB4C0;
    v12 = AGTypeID.description.getter();
    v14 = v13;
    v15 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    v16 = lazy protocol witness table accessor for type String and conformance String();
    *(v11 + 64) = v16;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    v17 = specialized static Tracing.libraryName(defining:)();
    *(v11 + 96) = v15;
    *(v11 + 104) = v16;
    *(v11 + 72) = v17;
    *(v11 + 80) = v18;
    v62 = v11;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v8)
    {
      v65 = v61;
      v71[0] = &dword_18D018000;
      v64 = _signpostLog;
      *&v66 = v6;
      *(&v66 + 1) = v60;
      LOBYTE(v67) = v7;
      v69[0] = "%{public}@.body [in %{public}@]";
      v69[1] = 31;
      v70 = 2;
      v63 = v62;
      v19 = v51;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v58 + 8))(v19, v57);
LABEL_34:

      break;
    }

    if (v6 == 20)
    {
      v20 = 3;
    }

    else
    {
      v20 = 4;
    }

    v21 = bswap32(v6) | (4 * WORD1(v6));
    v22 = v61;
    v23 = v58 + 16;
    v52 = *(v58 + 16);
    v24 = v52(v59, v51, v57);
    v25 = 0;
    LOBYTE(v69[0]) = 1;
    v61 = v20;
    v58 = v23;
    v55 = 16 * v20;
    v56 = (v23 - 8);
    v54 = v62 + 32;
    v53 = v6;
LABEL_11:
    v60 = &v49;
    MEMORY[0x1EEE9AC00](v24);
    v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = v27 + 8;
    v29 = v61;
    v30 = v27 + 8;
    do
    {
      *(v30 - 1) = 0;
      *v30 = 0;
      v30 += 16;
      --v29;
    }

    while (v29);
    v31 = v54 + 40 * v25;
    v32 = v61;
    while (1)
    {
      v33 = *(v62 + 16);
      if (v25 == v33)
      {
        LOBYTE(v69[0]) = 0;
LABEL_19:
        v36 = v53;
        if (v53 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v27[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v27[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v27[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v36 != 20 && v27[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v37 = v57;
        v38 = *v56;
        v39 = v59;
        (*v56)(v59, v57);
        v40 = __swift_project_value_buffer(v37, static OSSignpostID.continuation);
        v24 = v52(v39, v40, v37);
        if ((v69[0] & 1) == 0)
        {
          v41 = v57;
          v38(v59, v57);
          v38(v51, v41);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v25 >= v33)
      {
        break;
      }

      ++v25;
      outlined init with copy of AnyTrackedValue(v31, &v66);
      v34 = v68;
      __swift_project_boxed_opaque_existential_1(&v66, v68);
      *(v28 - 1) = CVarArg.kdebugValue(_:)(v21 | v22, v34);
      *v28 = v35 & 1;
      v28 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v66);
      v31 += 40;
      if (!--v32)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v42 = v50;
  v43 = *v50;
  v44 = v50[4];
  v46 = v50[6];
  v69[0] = v50[5];
  v45 = v69[0];
  v71[0] = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = v43;
  *(v47 + 24) = *(v42 + 1);
  *(v47 + 40) = v42[3];
  *(v47 + 48) = v44;
  *(v47 + 56) = v45;
  *(v47 + 64) = v46;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v69, &v66, type metadata accessor for Task<(), Error>?);
  outlined init with copy of ObservationTracking._AccessList?(v71, &v66, &lazy cache variable for type metadata for AnyLocation<Task<(), Error>?>?, type metadata accessor for AnyLocation<Task<(), Error>?>, MEMORY[0x1E69E6720]);
  *&v66 = v43;
  *(&v66 + 1) = partial apply for specialized closure #1 in ScheduledAnimationModifier.body(content:);
  v67 = v47;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<_ViewModifier_Content<ScheduledAnimationModifier<Int>>, _ValueActionModifier2<Int>>();
  AGGraphSetOutputValue();
}

uint64_t specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(CGFloat a1, CGFloat a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v45 - v8;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v9 = static Signpost.bodyInvoke;
    v10 = word_1ED539040;
    v11 = HIBYTE(word_1ED539040);
    v12 = byte_1ED539042;
    v13 = static os_signpost_type_t.begin.getter();
    *&v65.a = v9;
    LOBYTE(v65.c) = v10;
    BYTE1(v65.c) = v11;
    BYTE2(v65.c) = v12;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v52 = *(&v9 + 1);
    LODWORD(v56) = v13;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18DDAB4C0;
    v15 = AGTypeID.description.getter();
    v17 = v16;
    v18 = MEMORY[0x1E69E6158];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    v19 = lazy protocol witness table accessor for type String and conformance String();
    *(v14 + 64) = v19;
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    v20 = specialized static Tracing.libraryName(defining:)();
    *(v14 + 96) = v18;
    *(v14 + 104) = v19;
    *(v14 + 72) = v20;
    *(v14 + 80) = v21;
    v57 = v14;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v11)
    {
      v64 = v56;
      v62 = _signpostLog;
      v63 = &dword_18D018000;
      *&v65.a = v9;
      *&v65.b = v52;
      LOBYTE(v65.c) = v10;
      v59 = "%{public}@.body [in %{public}@]";
      v60 = 31;
      v61 = 2;
      v58 = v57;
      v22 = v46;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v54 + 8))(v22, v53);
LABEL_34:

      break;
    }

    if (v9 == 20)
    {
      v23 = 3;
    }

    else
    {
      v23 = 4;
    }

    v24 = bswap32(v9) | (4 * WORD1(v9));
    v25 = v56;
    v26 = v54 + 16;
    v47 = *(v54 + 16);
    v27 = v47(v55, v46, v53);
    v28 = 0;
    LOBYTE(v59) = 1;
    v51 = 16 * *(&v9 + 1);
    v54 = v26;
    v52 = (v26 - 8);
    v50 = v57 + 32;
    v49 = v9;
    v48 = *(&v9 + 1);
LABEL_11:
    v56 = &v45;
    MEMORY[0x1EEE9AC00](v27);
    v30 = &v45 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = v30 + 8;
    v32 = v23;
    v33 = v30 + 8;
    do
    {
      *(v33 - 1) = 0;
      *v33 = 0;
      v33 += 16;
      --v32;
    }

    while (v32);
    v34 = v50 + 40 * v28;
    while (1)
    {
      v35 = *(v57 + 16);
      if (v28 == v35)
      {
        LOBYTE(v59) = 0;
LABEL_19:
        v38 = v49;
        if (v49 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v30[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v30[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v30[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v38 != 20 && v30[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v39 = *v52;
        v40 = v55;
        v41 = v53;
        (*v52)(v55, v53);
        v42 = __swift_project_value_buffer(v41, static OSSignpostID.continuation);
        v27 = v47(v40, v42, v41);
        v23 = v48;
        if ((v59 & 1) == 0)
        {
          v43 = v53;
          v39(v55, v53);
          v39(v46, v43);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v28 >= v35)
      {
        break;
      }

      ++v28;
      outlined init with copy of AnyTrackedValue(v34, &v65);
      v36 = *&v65.d;
      __swift_project_boxed_opaque_existential_1(&v65, *&v65.d);
      *(v31 - 1) = CVarArg.kdebugValue(_:)(v24 | v25, v36);
      *v31 = v37 & 1;
      v31 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v65);
      v34 += 40;
      if (!--v23)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  CGAffineTransformMakeTranslation(&v65, a1, a2);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<_ViewModifier_Content<KickModifier>, _TransformEffect>();
  return AGGraphSetOutputValue();
}

uint64_t specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(char *a1)
{
  v78 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v53 = v2;
  v54 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v55 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - v6;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v8 = static Signpost.bodyInvoke;
    v9 = word_1ED539040;
    v10 = HIBYTE(word_1ED539040);
    v11 = byte_1ED539042;
    v12 = static os_signpost_type_t.begin.getter();
    v57 = v8;
    v70 = v8;
    LODWORD(v56) = v9;
    LOBYTE(v71) = v9;
    v59 = v10;
    BYTE1(v71) = v10;
    BYTE2(v71) = v11;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v51 = *(&v8 + 1);
    LODWORD(v52) = v12;
    v46 = a1;
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for TranslationKickModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for TranslationKickModifier);
    v47 = v7;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18DDAB4C0;
    v14 = AGTypeID.description.getter();
    v16 = v15;
    v17 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    v18 = lazy protocol witness table accessor for type String and conformance String();
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v19 = specialized static Tracing.libraryName(defining:)();
    *(v13 + 96) = v17;
    *(v13 + 104) = v18;
    *(v13 + 72) = v19;
    *(v13 + 80) = v20;
    v58 = v13;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v59)
    {
      v62 = v52;
      *&v63[0] = &dword_18D018000;
      *&v70 = v57;
      *(&v70 + 1) = v51;
      LOBYTE(v71) = v56;
      *&v65 = "%{public}@.body [in %{public}@]";
      *(&v65 + 1) = 31;
      LOBYTE(v66) = 2;
      v60 = v58;
      v61 = _signpostLog;
      v21 = v47;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v54 + 8))(v21, v53);
LABEL_34:

      a1 = v46;
      break;
    }

    v22 = v57;
    if (v57 == 20)
    {
      v7 = 3;
    }

    else
    {
      v7 = 4;
    }

    v23 = bswap32(v57) | (4 * WORD1(v57));
    v59 = v52;
    v24 = v54 + 16;
    v48 = *(v54 + 16);
    v25 = v48(v55, v47, v53);
    v26 = 0;
    LOBYTE(v65) = 1;
    v57 = v7;
    v54 = v24;
    v51 = 16 * v7;
    v52 = (v24 - 8);
    v49 = v22;
    v50 = v58 + 32;
LABEL_11:
    v56 = &v46;
    MEMORY[0x1EEE9AC00](v25);
    v28 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    a1 = v28 + 8;
    v29 = v57;
    v30 = v28 + 8;
    do
    {
      *(v30 - 1) = 0;
      *v30 = 0;
      v30 += 16;
      --v29;
    }

    while (v29);
    v31 = v50 + 40 * v26;
    v32 = v57;
    while (1)
    {
      v33 = *(v58 + 16);
      if (v26 == v33)
      {
        LOBYTE(v65) = 0;
LABEL_19:
        v36 = v49;
        if (v49 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v28[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v36 != 20 && v28[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v7 = v53;
        v37 = *v52;
        v38 = v55;
        (*v52)(v55, v53);
        v39 = __swift_project_value_buffer(v7, static OSSignpostID.continuation);
        v25 = v48(v38, v39, v7);
        if ((v65 & 1) == 0)
        {
          v40 = v53;
          v37(v55, v53);
          v37(v47, v40);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v26 >= v33)
      {
        break;
      }

      ++v26;
      outlined init with copy of AnyTrackedValue(v31, &v70);
      v34 = *(&v71 + 1);
      v7 = v72;
      __swift_project_boxed_opaque_existential_1(&v70, *(&v71 + 1));
      *(a1 - 1) = CVarArg.kdebugValue(_:)(v23 | v59, v34);
      *a1 = v35 & 1;
      a1 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v70);
      v31 += 40;
      if (!--v32)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v41 = *(a1 + 5);
  v74 = *(a1 + 4);
  v75 = v41;
  v42 = *(a1 + 7);
  v76 = *(a1 + 6);
  v77 = v42;
  v43 = *(a1 + 1);
  v70 = *a1;
  v71 = v43;
  v44 = *(a1 + 3);
  v72 = *(a1 + 2);
  v73 = v44;
  specialized TranslationKickModifier.body(content:)(&v65);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<TranslationKickModifier<Int>>, KickModifier>, ScheduledAnimationModifier<Int>>();
  AGGraphSetOutputValue();
  v63[2] = v67;
  v63[3] = v68;
  v64 = v69;
  v63[0] = v65;
  v63[1] = v66;
  return outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v63, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<TranslationKickModifier<Int>>, KickModifier>, ScheduledAnimationModifier<Int>>);
}

{
  v84 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v56 = v2;
  v57 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v58 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v49 - v6;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v8 = static Signpost.bodyInvoke;
    v9 = word_1ED539040;
    v10 = HIBYTE(word_1ED539040);
    v11 = byte_1ED539042;
    v12 = static os_signpost_type_t.begin.getter();
    v60 = v8;
    *v67 = v8;
    LODWORD(v59) = v9;
    v67[16] = v9;
    v62 = v10;
    v67[17] = v10;
    v67[18] = v11;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v54 = *(&v8 + 1);
    LODWORD(v55) = v12;
    v49 = a1;
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for ScalePulseModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScalePulseModifier);
    v50 = v7;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18DDAB4C0;
    v14 = AGTypeID.description.getter();
    v16 = v15;
    v17 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    v18 = lazy protocol witness table accessor for type String and conformance String();
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v19 = specialized static Tracing.libraryName(defining:)();
    *(v13 + 96) = v17;
    *(v13 + 104) = v18;
    *(v13 + 72) = v19;
    *(v13 + 80) = v20;
    v61 = v13;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v62)
    {
      v65 = v55;
      *&v68 = &dword_18D018000;
      *v67 = v60;
      *&v67[8] = v54;
      v67[16] = v59;
      v66[0] = "%{public}@.body [in %{public}@]";
      v66[1] = 31;
      LOBYTE(v66[2]) = 2;
      v63 = v61;
      v64 = _signpostLog;
      v21 = v50;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v57 + 8))(v21, v56);
LABEL_34:

      a1 = v49;
      break;
    }

    v22 = v60;
    if (v60 == 20)
    {
      v7 = 3;
    }

    else
    {
      v7 = 4;
    }

    v23 = bswap32(v60) | (4 * WORD1(v60));
    v62 = v55;
    v24 = v57 + 16;
    v51 = *(v57 + 16);
    v25 = v51(v58, v50, v56);
    v26 = 0;
    LOBYTE(v66[0]) = 1;
    v60 = v7;
    v57 = v24;
    v54 = 16 * v7;
    v55 = (v24 - 8);
    v52 = v22;
    v53 = v61 + 32;
LABEL_11:
    v59 = &v49;
    MEMORY[0x1EEE9AC00](v25);
    v28 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    a1 = v28 + 8;
    v29 = v60;
    v30 = v28 + 8;
    do
    {
      *(v30 - 1) = 0;
      *v30 = 0;
      v30 += 16;
      --v29;
    }

    while (v29);
    v31 = v53 + 40 * v26;
    v32 = v60;
    while (1)
    {
      v33 = *(v61 + 16);
      if (v26 == v33)
      {
        LOBYTE(v66[0]) = 0;
LABEL_19:
        v36 = v52;
        if (v52 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v28[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v28[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v36 != 20 && v28[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v7 = v56;
        v37 = *v55;
        v38 = v58;
        (*v55)(v58, v56);
        v39 = __swift_project_value_buffer(v7, static OSSignpostID.continuation);
        v25 = v51(v38, v39, v7);
        if ((v66[0] & 1) == 0)
        {
          v40 = v56;
          v37(v58, v56);
          v37(v50, v40);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v26 >= v33)
      {
        break;
      }

      ++v26;
      outlined init with copy of AnyTrackedValue(v31, v67);
      v34 = *&v67[24];
      v7 = *&v67[32];
      __swift_project_boxed_opaque_existential_1(v67, *&v67[24]);
      *(a1 - 1) = CVarArg.kdebugValue(_:)(v23 | v62, v34);
      *a1 = v35 & 1;
      a1 += 16;
      __swift_destroy_boxed_opaque_existential_1(v67);
      v31 += 40;
      if (!--v32)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v41 = *(a1 + 13);
  v80 = *(a1 + 12);
  v81 = v41;
  v82 = *(a1 + 14);
  v83 = *(a1 + 30);
  v42 = *(a1 + 9);
  v76 = *(a1 + 8);
  v77 = v42;
  v43 = *(a1 + 11);
  v78 = *(a1 + 10);
  v79 = v43;
  v44 = *(a1 + 5);
  v72 = *(a1 + 4);
  v73 = v44;
  v45 = *(a1 + 7);
  v74 = *(a1 + 6);
  v75 = v45;
  v46 = *(a1 + 1);
  v68 = *a1;
  v69 = v46;
  v47 = *(a1 + 3);
  v70 = *(a1 + 2);
  v71 = v47;
  specialized ScalePulseModifier.body(content:)(v67);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _BlurEffect>, ScheduledAnimationModifier<Int>>();
  AGGraphSetOutputValue();
  memcpy(v66, v67, sizeof(v66));
  return outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v66, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _BlurEffect>, ScheduledAnimationModifier<Int>>);
}

uint64_t specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(const void *a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v54 = v2;
  v55 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v56 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - v6;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v8 = static Signpost.bodyInvoke;
  v9 = word_1ED539040;
  v10 = HIBYTE(word_1ED539040);
  v11 = byte_1ED539042;
  v12 = static os_signpost_type_t.begin.getter();
  v60 = v8;
  v66[0] = v8;
  LODWORD(v58) = v9;
  LOBYTE(v66[1]) = v9;
  BYTE1(v66[1]) = v10;
  BYTE2(v66[1]) = v11;
  if (Signpost.isEnabled.getter())
  {
    v53 = *(&v8 + 1);
    LODWORD(v57) = v12;
    v47 = a1;
    v48 = v7;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18DDAB4C0;
    v14 = AGTypeID.description.getter();
    v16 = v15;
    v17 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    v18 = lazy protocol witness table accessor for type String and conformance String();
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v19 = specialized static Tracing.libraryName(defining:)();
    *(v13 + 96) = v17;
    *(v13 + 104) = v18;
    *(v13 + 72) = v19;
    *(v13 + 80) = v20;
    v59 = v13;
    if (one-time initialization token for _signpostLog == -1)
    {
      v21 = v53;
      if (v10)
      {
LABEL_6:
        v64 = v57;
        v62 = _signpostLog;
        v63 = &dword_18D018000;
        *&v66[0] = v60;
        *(&v66[0] + 1) = v21;
        LOBYTE(v66[1]) = v58;
        v65[0] = "%{public}@.body [in %{public}@]";
        v65[1] = 31;
        LOBYTE(v65[2]) = 2;
        v61 = v59;
        v22 = v48;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        (*(v55 + 8))(v22, v54);
LABEL_35:

        a1 = v47;
        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      v21 = v53;
      if (v10)
      {
        goto LABEL_6;
      }
    }

    v23 = v60;
    if (v60 == 20)
    {
      v24 = 3;
    }

    else
    {
      v24 = 4;
    }

    v25 = bswap32(v60) | (4 * WORD1(v60));
    LODWORD(v60) = v57;
    v26 = v55 + 16;
    v49 = *(v55 + 16);
    v27 = v49(v56, v48, v54);
    v28 = 0;
    LOBYTE(v65[0]) = 1;
    v58 = v24;
    v55 = v26;
    v52 = 16 * v24;
    v53 = (v26 - 8);
    v50 = v23;
    v51 = v59 + 32;
    do
    {
      v57 = &v46;
      MEMORY[0x1EEE9AC00](v27);
      v30 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = v30 + 8;
      v32 = v58;
      v33 = v30 + 8;
      do
      {
        *(v33 - 1) = 0;
        *v33 = 0;
        v33 += 16;
        --v32;
      }

      while (v32);
      v34 = v51 + 40 * v28;
      v35 = v58;
      while (1)
      {
        v36 = *(v59 + 16);
        if (v28 == v36)
        {
          break;
        }

        if (v28 >= v36)
        {
          __break(1u);
        }

        ++v28;
        outlined init with copy of AnyTrackedValue(v34, v66);
        v37 = *(&v66[1] + 1);
        __swift_project_boxed_opaque_existential_1(v66, *(&v66[1] + 1));
        *(v31 - 1) = CVarArg.kdebugValue(_:)(v25 | v60, v37);
        *v31 = v38 & 1;
        v31 += 16;
        __swift_destroy_boxed_opaque_existential_1(v66);
        v34 += 40;
        if (!--v35)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v65[0]) = 0;
LABEL_20:
      v39 = v50;
      if (v50 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v30[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v30[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v30[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v39 != 20 && v30[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v40 = v54;
      v41 = *v53;
      v42 = v56;
      (*v53)(v56, v54);
      v43 = __swift_project_value_buffer(v40, static OSSignpostID.continuation);
      v27 = v49(v42, v43, v40);
    }

    while ((v65[0] & 1) != 0);
    v44 = v54;
    v41(v56, v54);
    v41(v48, v44);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  memcpy(v65, a1, 0x180uLL);
  GlassTransitionStateModifier.body(content:)(v66);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>, TranslationKickModifier<Int>>();
  AGGraphSetOutputValue();
  memcpy(v65, v66, sizeof(v65));
  return outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v65, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>, TranslationKickModifier<Int>>);
}

uint64_t specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(_BYTE *a1)
{
  v74[43] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v59 = v2;
  v60 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v61 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v51 - v6;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v9 = *(&static Signpost.bodyInvoke + 1);
  v8 = static Signpost.bodyInvoke;
  v10 = word_1ED539040;
  v11 = HIBYTE(word_1ED539040);
  v12 = byte_1ED539042;
  v13 = static os_signpost_type_t.begin.getter();
  v65 = v8;
  v74[0] = v8;
  v14 = v11;
  v74[1] = v9;
  LODWORD(v63) = v10;
  LOBYTE(v74[2]) = v10;
  BYTE1(v74[2]) = v11;
  BYTE2(v74[2]) = v12;
  v15 = a1;
  if ((Signpost.isEnabled.getter() & 1) == 0)
  {
    goto LABEL_36;
  }

  v58 = v9;
  LODWORD(v62) = v13;
  v52 = a1;
  v53 = v7;
  static OSSignpostID.exclusive.getter();
  type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_18DDAB4C0;
  v17 = AGTypeID.description.getter();
  v19 = v18;
  v20 = MEMORY[0x1E69E6158];
  *(v16 + 56) = MEMORY[0x1E69E6158];
  v21 = lazy protocol witness table accessor for type String and conformance String();
  *(v16 + 64) = v21;
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  v22 = specialized static Tracing.libraryName(defining:)();
  *(v16 + 96) = v20;
  *(v16 + 104) = v21;
  *(v16 + 72) = v22;
  *(v16 + 80) = v23;
  v64 = v16;
  if (one-time initialization token for _signpostLog == -1)
  {
    v24 = v58;
    if (v14)
    {
      goto LABEL_6;
    }

LABEL_8:
    v26 = v65;
    if (v65 == 20)
    {
      v27 = 3;
    }

    else
    {
      v27 = 4;
    }

    v28 = bswap32(v65) | (4 * WORD1(v65));
    LODWORD(v65) = v62;
    v29 = v60 + 16;
    v54 = *(v60 + 16);
    v30 = v54(v61, v53, v59);
    v31 = 0;
    LOBYTE(v72[0]) = 1;
    v63 = v27;
    v60 = v29;
    v57 = 16 * v27;
    v58 = (v29 - 8);
    v55 = v26;
    v56 = v64 + 32;
LABEL_12:
    v62 = &v51;
    MEMORY[0x1EEE9AC00](v30);
    v33 = &v51 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = v33 + 8;
    v34 = v63;
    v35 = v33 + 8;
    do
    {
      *(v35 - 1) = 0;
      *v35 = 0;
      v35 += 16;
      --v34;
    }

    while (v34);
    v36 = v56 + 40 * v31;
    v37 = v63;
    while (1)
    {
      v38 = *(v64 + 16);
      if (v31 == v38)
      {
        LOBYTE(v72[0]) = 0;
LABEL_20:
        v41 = v55;
        if (v55 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v33[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v33[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v33[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v41 != 20 && v33[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v42 = v59;
        v43 = *v58;
        v44 = v61;
        (*v58)(v61, v59);
        v45 = __swift_project_value_buffer(v42, static OSSignpostID.continuation);
        v30 = v54(v44, v45, v42);
        if ((v72[0] & 1) == 0)
        {
          v46 = v59;
          v43(v61, v59);
          v43(v53, v46);
          goto LABEL_35;
        }

        goto LABEL_12;
      }

      if (v31 >= v38)
      {
        break;
      }

      ++v31;
      outlined init with copy of AnyTrackedValue(v36, v74);
      v39 = v74[3];
      __swift_project_boxed_opaque_existential_1(v74, v74[3]);
      *(v15 - 1) = CVarArg.kdebugValue(_:)(v28 | v65, v39);
      *v15 = v40 & 1;
      v15 += 16;
      __swift_destroy_boxed_opaque_existential_1(v74);
      v36 += 40;
      if (!--v37)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  swift_once();
  v24 = v58;
  if ((v14 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v68 = v62;
  v69 = &dword_18D018000;
  v74[0] = v65;
  v74[1] = v24;
  LOBYTE(v74[2]) = v63;
  v72[0] = "%{public}@.body [in %{public}@]";
  v72[1] = 31;
  v73 = 2;
  v66 = v64;
  v67 = _signpostLog;
  v25 = v53;
  specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
  (*(v60 + 8))(v25, v59);
LABEL_35:

  v15 = v52;
LABEL_36:
  AGGraphClearUpdate();
  memcpy(v74, v15, 0x154uLL);
  if (one-time initialization token for one != -1)
  {
LABEL_39:
    swift_once();
  }

  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for AnchorBox<UnitRect>, &type metadata for UnitRect, &protocol witness table for UnitRect, type metadata accessor for AnchorBox);
  v47 = swift_allocObject();
  v48 = xmmword_1ED52E568;
  *(v47 + 16) = static UnitRect.one;
  *(v47 + 32) = v48;
  v49 = swift_allocObject();
  memcpy((v49 + 16), v74, 0x154uLL);
  v69 = v47;
  v70 = partial apply for closure #1 in GlassEffectShapeModifier.body(content:);
  v71 = v49;
  outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(v15, v72, &lazy cache variable for type metadata for UncheckedSendable<GlassEffectShapeModifier>, &type metadata for GlassEffectShapeModifier, type metadata accessor for UncheckedSendable);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectShapeModifier>, _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>>();
  AGGraphSetOutputValue();
}

uint64_t specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(int a1)
{
  v44 = a1;
  v69 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v51 = v1;
  v52 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v53 = &v43[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v43[-v5];
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v6 = static Signpost.bodyInvoke;
    v7 = word_1ED539040;
    v8 = HIBYTE(word_1ED539040);
    v9 = byte_1ED539042;
    v10 = static os_signpost_type_t.begin.getter();
    v64 = v6;
    v65 = v7;
    v66 = v8;
    v67 = v9;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v54 = *(&v6 + 1);
    LODWORD(v55) = v10;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_18DDAB4C0;
    v12 = AGTypeID.description.getter();
    v14 = v13;
    v15 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    v16 = lazy protocol witness table accessor for type String and conformance String();
    *(v11 + 64) = v16;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    v17 = specialized static Tracing.libraryName(defining:)();
    *(v11 + 96) = v15;
    *(v11 + 104) = v16;
    *(v11 + 72) = v17;
    *(v11 + 80) = v18;
    v56 = v11;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v8)
    {
      v63 = v55;
      v61 = _signpostLog;
      v62 = &dword_18D018000;
      *&v64 = v6;
      *(&v64 + 1) = v54;
      v65 = v7;
      v58 = "%{public}@.body [in %{public}@]";
      v59 = 31;
      v60 = 2;
      v57 = v56;
      v19 = v45;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v52 + 8))(v19, v51);
LABEL_34:

      break;
    }

    if (v6 == 20)
    {
      v20 = 3;
    }

    else
    {
      v20 = 4;
    }

    v21 = bswap32(v6) | (4 * WORD1(v6));
    v22 = v55;
    v23 = v52 + 16;
    v46 = *(v52 + 16);
    v24 = v46(v53, v45, v51);
    v25 = 0;
    LOBYTE(v58) = 1;
    v55 = v20;
    v52 = v23;
    v49 = 16 * v20;
    v50 = (v23 - 8);
    v48 = v56 + 32;
    v47 = v6;
LABEL_11:
    v54 = v43;
    MEMORY[0x1EEE9AC00](v24);
    v27 = &v43[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v28 = v27 + 8;
    v29 = v55;
    v30 = v27 + 8;
    do
    {
      *(v30 - 1) = 0;
      *v30 = 0;
      v30 += 16;
      --v29;
    }

    while (v29);
    v31 = v48 + 40 * v25;
    v32 = v55;
    while (1)
    {
      v33 = *(v56 + 16);
      if (v25 == v33)
      {
        LOBYTE(v58) = 0;
LABEL_19:
        v36 = v47;
        if (v47 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v27[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v27[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v27[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v36 != 20 && v27[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v37 = v51;
        v38 = *v50;
        v39 = v53;
        (*v50)(v53, v51);
        v40 = __swift_project_value_buffer(v37, static OSSignpostID.continuation);
        v24 = v46(v39, v40, v37);
        if ((v58 & 1) == 0)
        {
          v41 = v51;
          v38(v53, v51);
          v38(v45, v41);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v25 >= v33)
      {
        break;
      }

      ++v25;
      outlined init with copy of AnyTrackedValue(v31, &v64);
      v34 = v68;
      __swift_project_boxed_opaque_existential_1(&v64, v68);
      *(v28 - 1) = CVarArg.kdebugValue(_:)(v21 | v22, v34);
      *v28 = v35 & 1;
      v28 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v64);
      v31 += 40;
      if (!--v32)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  LOBYTE(v64) = v44 & 1;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<_ViewModifier_Content<ContentCaptureProtectionViewModifier>, ContentCaptureProtectionPreferenceWriter>();
  return AGGraphSetOutputValue();
}

uint64_t specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(uint64_t a1, int a2)
{
  v77 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v60 = v4;
  v61 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50[-v8];
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v10 = static Signpost.bodyInvoke;
  v11 = word_1ED539040;
  v12 = HIBYTE(word_1ED539040);
  v13 = byte_1ED539042;
  v14 = static os_signpost_type_t.begin.getter();
  v63 = v10;
  v72 = v10;
  v59 = *(&v10 + 1);
  v15 = v11;
  v73 = v11;
  v74 = v12;
  v75 = v13;
  if (Signpost.isEnabled.getter())
  {
    LODWORD(v58) = v14;
    v51 = a2;
    v52 = a1;
    v53 = v9;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_18DDAB4C0;
    v17 = AGTypeID.description.getter();
    v19 = v18;
    v20 = MEMORY[0x1E69E6158];
    *(v16 + 56) = MEMORY[0x1E69E6158];
    v21 = lazy protocol witness table accessor for type String and conformance String();
    *(v16 + 64) = v21;
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    v22 = specialized static Tracing.libraryName(defining:)();
    *(v16 + 96) = v20;
    *(v16 + 104) = v21;
    *(v16 + 72) = v22;
    *(v16 + 80) = v23;
    v64 = v16;
    if (one-time initialization token for _signpostLog == -1)
    {
      v24 = v58;
      if (v12)
      {
LABEL_6:
        v71 = v24;
        v69 = _signpostLog;
        v70 = &dword_18D018000;
        *&v72 = v63;
        *(&v72 + 1) = v59;
        v73 = v15;
        v66 = "%{public}@.body [in %{public}@]";
        v67 = 31;
        v68 = 2;
        v65 = v64;
        v25 = v53;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        (*(v61 + 8))(v25, v60);
LABEL_35:

        a1 = v52;
        LOWORD(a2) = v51;
        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      v24 = v58;
      if (v12)
      {
        goto LABEL_6;
      }
    }

    v26 = v63;
    if (v63 == 20)
    {
      v27 = 3;
    }

    else
    {
      v27 = 4;
    }

    v28 = bswap32(v63) | (4 * (v63 >> 16));
    v29 = v24;
    v30 = v61 + 16;
    v54 = *(v61 + 16);
    v31 = v54(v62, v53, v60);
    v32 = 0;
    LOBYTE(v66) = 1;
    v61 = v30;
    v58 = 16 * v27;
    v59 = (v30 - 8);
    v57 = v64 + 32;
    v56 = v26;
    v55 = v27;
    do
    {
      v63 = v50;
      MEMORY[0x1EEE9AC00](v31);
      v34 = &v50[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
      v35 = v34 + 8;
      v36 = v27;
      v37 = v34 + 8;
      do
      {
        *(v37 - 1) = 0;
        *v37 = 0;
        v37 += 16;
        --v36;
      }

      while (v36);
      v38 = v57 + 40 * v32;
      while (1)
      {
        v39 = *(v64 + 16);
        if (v32 == v39)
        {
          break;
        }

        if (v32 >= v39)
        {
          __break(1u);
        }

        ++v32;
        outlined init with copy of AnyTrackedValue(v38, &v72);
        v40 = v76;
        __swift_project_boxed_opaque_existential_1(&v72, v76);
        *(v35 - 1) = CVarArg.kdebugValue(_:)(v28 | v29, v40);
        *v35 = v41 & 1;
        v35 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v72);
        v38 += 40;
        if (!--v27)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v66) = 0;
LABEL_20:
      v42 = v56;
      if (v56 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      v27 = v55;
      if (v34[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v34[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v34[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v42 != 20 && v34[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v43 = v60;
      v44 = *v59;
      v45 = v62;
      (*v59)(v62, v60);
      v46 = __swift_project_value_buffer(v43, static OSSignpostID.continuation);
      v31 = v54(v45, v46, v43);
    }

    while ((v66 & 1) != 0);
    v47 = v60;
    v44(v62, v60);
    v44(v53, v47);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  specialized Environment.wrappedValue.getter(a1, a2 & 1, &v72);
  v48 = v72;
  if (!v72)
  {
    v48 = BYTE1(a2);
  }

  LOBYTE(v72) = v48;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>>();
  return AGGraphSetOutputValue();
}

uint64_t specialized ShapeStyledResponderFilter.updateValue()(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v66[6] = *MEMORY[0x1E69E9840];
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, a1, a2, a3, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v6 = v5;
  v59 = *Value;
  v7 = *(Value + 8);
  v8 = *(Value + 9);
  v9 = AGGraphGetValue();
  v11 = (v6 | v10) & 1;
  v12 = *v9;
  v13 = *(v3 + 24);
  swift_bridgeObjectRetain_n();

  v14 = AGGraphGetValue();
  v16 = v15;
  v57 = *v14;
  v53 = v14[1];
  type metadata accessor for CGPoint(0);
  v17 = AGGraphGetValue();
  v19 = v18;
  v20 = *v17;
  v21 = v17[1];
  v22 = AGGraphGetValue();
  v24 = *v22;
  v23 = *(v22 + 8);
  v26 = v25 | v19;
  v27 = *(v13 + 10);
  v28 = *(v13 + 11);
  v29 = v13[12];
  v30 = v13[13];
  v31 = v13[14];
  v32 = v13[15];
  if (v26)
  {
    v34 = *(v22 + 32);
    v33 = *(v22 + 40);
    v36 = *(v22 + 16);
    v35 = *(v22 + 24);
    *(v13 + 10) = v24;
    *(v13 + 11) = v23;
    v37 = v34 - (v20 - v36);
    v38 = v33 - (v21 - v35);
    v13[14] = v37;
    v13[15] = v38;
    v13[12] = v20;
    v13[13] = v21;

    v56 = 4;
    v54 = v24;
    v55 = v23;
  }

  else
  {

    v56 = 0;
    v38 = v32;
    v37 = v31;
    v21 = v30;
    v20 = v29;
    v54 = v27;
    v55 = v28;
  }

  if (v16)
  {
    *(v13 + 5) = v57;
    *(v13 + 6) = v53;
    v56 |= 2u;
  }

  if (v11 || !*(v13 + 9))
  {

    v39 = 256;
    if (!v8)
    {
      v39 = 0;
    }

    *(v13 + 7) = v59;
    *(v13 + 8) = v39 | v7;
    *(v13 + 9) = v12;
    LOBYTE(v56) = v56 | 1;

    v54 = *(v13 + 10);
    v55 = *(v13 + 11);
    v20 = v13[12];
    v21 = v13[13];
    v37 = v13[14];
    v38 = v13[15];
  }

  else if (!v56)
  {

    goto LABEL_27;
  }

  v40 = *(v13 + 16);
  v41 = MEMORY[0x1E69E7CC0];
  *(v13 + 16) = MEMORY[0x1E69E7CC0];
  v42 = *(v40 + 16);
  if (v42)
  {
    v43 = v40 + 32;
    v58 = v41;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v43, v63);
      v62 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v44 = v13, v45 = v64, ObjectType = swift_getObjectType(), v61 = v56, v66[0] = v27, v66[1] = v28, *&v66[2] = v29, *&v66[3] = v30, *&v66[4] = v31, *&v66[5] = v32, v65[0] = v54, v65[1] = v55, *&v65[2] = v20, *&v65[3] = v21, *&v65[4] = v37, *&v65[5] = v38, v46 = *(v45 + 16), , , , , v47 = v45, v13 = v44, v46(v44, &v61, v66, v65, &v62, ObjectType, v47), swift_unknownObjectRelease(), , , , , v62 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v63);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v63, v66);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v44 + 16) = v58;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58[2] + 1, 1, v58);
          *(v44 + 16) = v58;
        }

        v50 = v58[2];
        v49 = v58[3];
        if (v50 >= v49 >> 1)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v58);
          *(v44 + 16) = v58;
        }

        outlined destroy of ContentPathObservers.Observer(v63);
        v58[2] = v50 + 1;
        outlined init with take of ContentPathObservers.Observer(v66, &v58[2 * v50 + 4]);
        *(v44 + 16) = v58;
      }

      v43 += 16;
      --v42;
    }

    while (v42);
  }

  else
  {
  }

LABEL_27:

  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_18DDAB4D0;
    *(v51 + 32) = v13;
    v66[0] = v51;

    AGGraphSetOutputValue();
  }
}

uint64_t specialized ShapeStyledResponderFilter.updateValue()(void (*a1)(void))
{
  v66[6] = *MEMORY[0x1E69E9840];
  a1(0);
  Value = AGGraphGetValue();
  v4 = v3;
  v59 = *Value;
  v5 = Value[1];
  v6 = Value[2];
  v7 = AGGraphGetValue();
  v9 = (v4 | v8) & 1;
  v10 = *v7;
  v11 = *(v1 + 24);
  swift_bridgeObjectRetain_n();

  v12 = AGGraphGetValue();
  v14 = v13;
  v57 = *v12;
  v53 = v12[1];
  type metadata accessor for CGPoint(0);
  v15 = AGGraphGetValue();
  v17 = v16;
  v18 = *v15;
  v19 = v15[1];
  v20 = AGGraphGetValue();
  v22 = *v20;
  v21 = *(v20 + 8);
  v24 = v23 | v17;
  v25 = *(v11 + 9);
  v26 = *(v11 + 10);
  v27 = v11[11];
  v28 = v11[12];
  v29 = v11[13];
  v30 = v11[14];
  if (v24)
  {
    v32 = *(v20 + 32);
    v31 = *(v20 + 40);
    v34 = *(v20 + 16);
    v33 = *(v20 + 24);
    *(v11 + 9) = v22;
    *(v11 + 10) = v21;
    v35 = v32 - (v18 - v34);
    v36 = v31 - (v19 - v33);
    v11[13] = v35;
    v11[14] = v36;
    v11[11] = v18;
    v11[12] = v19;

    v56 = 4;
    v54 = v22;
    v55 = v21;
  }

  else
  {

    v56 = 0;
    v36 = v30;
    v35 = v29;
    v19 = v28;
    v18 = v27;
    v54 = v25;
    v55 = v26;
  }

  if (v14)
  {
    *(v11 + 5) = v57;
    *(v11 + 6) = v53;
    v56 |= 2u;
  }

  if (v9 || !*(v11 + 8))
  {

    v37 = 256;
    if (!v5)
    {
      v37 = 0;
    }

    v38 = v37 | v59;
    v39 = 0x10000;
    if (!v6)
    {
      v39 = 0;
    }

    *(v11 + 7) = v38 | v39;
    *(v11 + 8) = v10;
    LOBYTE(v56) = v56 | 1;

    v54 = *(v11 + 9);
    v55 = *(v11 + 10);
    v18 = v11[11];
    v19 = v11[12];
    v35 = v11[13];
    v36 = v11[14];
  }

  else if (!v56)
  {

    goto LABEL_29;
  }

  v40 = *(v11 + 15);
  v41 = MEMORY[0x1E69E7CC0];
  *(v11 + 15) = MEMORY[0x1E69E7CC0];
  v42 = *(v40 + 16);
  if (v42)
  {
    v43 = v40 + 32;
    v58 = v41;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v43, v63);
      v62 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v44 = v11, v45 = v64, ObjectType = swift_getObjectType(), v61 = v56, v66[0] = v25, v66[1] = v26, *&v66[2] = v27, *&v66[3] = v28, *&v66[4] = v29, *&v66[5] = v30, v65[0] = v54, v65[1] = v55, *&v65[2] = v18, *&v65[3] = v19, *&v65[4] = v35, *&v65[5] = v36, v46 = *(v45 + 16), , , , , v47 = v45, v11 = v44, v46(v44, &v61, v66, v65, &v62, ObjectType, v47), swift_unknownObjectRelease(), , , , , v62 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v63);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v63, v66);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v44 + 15) = v58;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58[2] + 1, 1, v58);
          *(v44 + 15) = v58;
        }

        v50 = v58[2];
        v49 = v58[3];
        if (v50 >= v49 >> 1)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v58);
          *(v44 + 15) = v58;
        }

        outlined destroy of ContentPathObservers.Observer(v63);
        v58[2] = v50 + 1;
        outlined init with take of ContentPathObservers.Observer(v66, &v58[2 * v50 + 4]);
        *(v44 + 15) = v58;
      }

      v43 += 16;
      --v42;
    }

    while (v42);
  }

  else
  {
  }

LABEL_29:

  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_18DDAB4D0;
    *(v51 + 32) = v11;
    v66[0] = v51;

    AGGraphSetOutputValue();
  }
}

{
  v63[6] = *MEMORY[0x1E69E9840];
  a1(0);
  Value = AGGraphGetValue();
  v4 = v3;
  v5 = *Value;
  v6 = Value[1];
  v7 = AGGraphGetValue();
  v9 = (v4 | v8) & 1;
  v10 = *v7;
  v11 = *(v1 + 24);
  swift_bridgeObjectRetain_n();

  v12 = AGGraphGetValue();
  v14 = v13;
  v54 = v12[1];
  v56 = *v12;
  type metadata accessor for CGPoint(0);
  v15 = AGGraphGetValue();
  v17 = v16;
  v18 = *v15;
  v19 = v15[1];
  v20 = AGGraphGetValue();
  v22 = *v20;
  v21 = *(v20 + 8);
  v24 = v23 | v17;
  v25 = *(v11 + 9);
  v26 = *(v11 + 10);
  v27 = v11[11];
  v28 = v11[12];
  v29 = v11[13];
  v30 = v11[14];
  if (v24)
  {
    v32 = *(v20 + 32);
    v31 = *(v20 + 40);
    v34 = *(v20 + 16);
    v33 = *(v20 + 24);
    *(v11 + 9) = v22;
    *(v11 + 10) = v21;
    v35 = v32 - (v18 - v34);
    v36 = v31 - (v19 - v33);
    v11[13] = v35;
    v11[14] = v36;
    v11[11] = v18;
    v11[12] = v19;

    v53 = 4;
    v51 = v22;
    v52 = v21;
  }

  else
  {

    v53 = 0;
    v36 = v30;
    v35 = v29;
    v19 = v28;
    v18 = v27;
    v51 = v25;
    v52 = v26;
  }

  if (v14)
  {
    *(v11 + 5) = v56;
    *(v11 + 6) = v54;
    v53 |= 2u;
  }

  if (v9 || !*(v11 + 8))
  {

    v37 = 256;
    if (!v6)
    {
      v37 = 0;
    }

    *(v11 + 7) = v37 | v5;
    *(v11 + 8) = v10;
    LOBYTE(v53) = v53 | 1;

    v51 = *(v11 + 9);
    v52 = *(v11 + 10);
    v18 = v11[11];
    v19 = v11[12];
    v35 = v11[13];
    v36 = v11[14];
  }

  else if (!v53)
  {

    goto LABEL_27;
  }

  v38 = *(v11 + 15);
  v39 = MEMORY[0x1E69E7CC0];
  *(v11 + 15) = MEMORY[0x1E69E7CC0];
  v40 = *(v38 + 16);
  if (v40)
  {
    v41 = v38 + 32;
    v55 = v39;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v41, v60);
      v59 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v42 = v11, v43 = v61, ObjectType = swift_getObjectType(), v58 = v53, v63[0] = v25, v63[1] = v26, *&v63[2] = v27, *&v63[3] = v28, *&v63[4] = v29, *&v63[5] = v30, v62[0] = v51, v62[1] = v52, *&v62[2] = v18, *&v62[3] = v19, *&v62[4] = v35, *&v62[5] = v36, v44 = *(v43 + 16), , , , , v45 = v43, v11 = v42, v44(v42, &v58, v63, v62, &v59, ObjectType, v45), swift_unknownObjectRelease(), , , , , v59 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v60);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v60, v63);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v42 + 15) = v55;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55[2] + 1, 1, v55);
          *(v42 + 15) = v55;
        }

        v48 = v55[2];
        v47 = v55[3];
        if (v48 >= v47 >> 1)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v55);
          *(v42 + 15) = v55;
        }

        outlined destroy of ContentPathObservers.Observer(v60);
        v55[2] = v48 + 1;
        outlined init with take of ContentPathObservers.Observer(v63, &v55[2 * v48 + 4]);
        *(v42 + 15) = v55;
      }

      v41 += 16;
      --v40;
    }

    while (v40);
  }

  else
  {
  }

LABEL_27:

  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_18DDAB4D0;
    *(v49 + 32) = v11;
    v63[0] = v49;

    AGGraphSetOutputValue();
  }
}

uint64_t specialized ShapeStyledResponderFilter.updateValue()(void (*a1)(void), uint64_t (*a2)(void), void (*a3)(__int128 *))
{
  v97 = *MEMORY[0x1E69E9840];
  a1(0);
  Value = AGGraphGetValue();
  v7 = v6;
  v8 = *Value;
  v10 = *(Value + 8);
  v9 = *(Value + 16);
  v12 = *(Value + 24);
  v11 = *(Value + 32);
  v13 = *(Value + 40);
  v14 = *(Value + 41);

  v15 = *AGGraphGetValue();
  v17 = *(v3 + 24);
  *&v84 = v8;
  v57 = v10;
  *&v58 = v9;
  *(&v84 + 1) = v10;
  *&v85 = v9;
  *(&v58 + 1) = v12;
  v59 = v11;
  *(&v85 + 1) = v12;
  *&v86 = v11;
  v60 = v13;
  v61 = v14;
  BYTE8(v86) = v13;
  BYTE9(v86) = v14;
  v87 = v15;
  v63 = (v7 | v16) & 1;
  v88 = v63;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v84, &v92, a2);
  v18 = AGGraphGetValue();
  v20 = v19;
  v21 = *v18;
  v22 = v18[1];
  type metadata accessor for CGPoint(0);
  v23 = AGGraphGetValue();
  v25 = v24;
  v26 = *v23;
  v27 = v23[1];
  v28 = AGGraphGetValue();
  v30 = *v28;
  v29 = *(v28 + 8);
  v31 = *(v28 + 16);
  v32 = *(v28 + 24);
  v34 = *(v28 + 32);
  v33 = *(v28 + 40);
  v80 = v84;
  v81 = v85;
  v82 = v86;
  v83 = v87;
  v68 = *(v17 + 128);
  v69 = *(v17 + 144);
  v75 = v17;
  v70 = *(v17 + 120);
  v71 = *(v17 + 112);
  if ((v35 | v25))
  {

    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v84, &v92, a2);
    *(v17 + 112) = v30;
    *(v17 + 120) = v29;
    *(v17 + 144) = v34 - (v26 - v31);
    *(v17 + 152) = v33 - (v27 - v32);
    *(v17 + 128) = v26;
    *(v17 + 136) = v27;
    v72 = 4;
  }

  else
  {
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v84, &v92, a2);

    v72 = 0;
  }

  v36 = v63;
  v37 = a3;
  if (v20)
  {
    v38 = v17;
    *(v17 + 40) = v21;
    *(v17 + 48) = v22;
    v72 |= 2u;
  }

  else
  {
    v38 = v17;
  }

  v39 = *(v38 + 56);
  if ((v63 & 1) != 0 || !v39)
  {
    outlined consume of ShapeStyledResponderData<_ShapeView<Rectangle, AngularGradient>>?(v39);
    v92 = v80;
    v93 = v81;
    v94 = v82;
    v96 = v63;
    v42 = v81;
    *(v38 + 56) = v80;
    v43 = v83;
    v95 = v83;
    *(v38 + 72) = v42;
    *(v38 + 88) = v94;
    *(v38 + 104) = v43;
    LOBYTE(v72) = v72 | 1;
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v92, v89, a2);
  }

  else if (!v72)
  {
    v92 = v80;
    v93 = v81;
    v94 = v82;
    v95 = v83;
    v96 = v63;
    a3(&v92);

    v40 = v60;
    v41 = v61;
    goto LABEL_26;
  }

  v56 = v15;
  v67 = *(v38 + 112);
  v65 = *(v38 + 120);
  v66 = *(v38 + 144);
  v64 = *(v38 + 128);
  v44 = *(v38 + 160);
  v45 = MEMORY[0x1E69E7CC0];
  *(v38 + 160) = MEMORY[0x1E69E7CC0];
  v46 = *(v44 + 16);
  v40 = v60;
  v41 = v61;
  if (v46)
  {
    v55 = v8;
    v47 = v44 + 32;
    v73 = v45;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v47, v78);
      v77 = 1;
      if (!swift_unknownObjectWeakLoadStrong() || (v48 = v79, ObjectType = swift_getObjectType(), v76 = v72, *&v92 = v71, *(&v92 + 1) = v70, v93 = v68, v94 = v69, v89[0] = v67, v89[1] = v65, v90 = v64, v91 = v66, v49 = *(v48 + 16), , , , , v49(v75, &v76, &v92, v89, &v77, ObjectType, v48), swift_unknownObjectRelease(), , , , , v77 == 1))
      {
        outlined destroy of ContentPathObservers.Observer(v78);
      }

      else
      {
        outlined init with copy of ContentPathObservers.Observer(v78, &v92);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v75 + 160) = v73;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73[2] + 1, 1, v73);
          *(v75 + 160) = v73;
        }

        v52 = v73[2];
        v51 = v73[3];
        if (v52 >= v51 >> 1)
        {
          v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v73);
          *(v75 + 160) = v73;
        }

        outlined destroy of ContentPathObservers.Observer(v78);
        v73[2] = v52 + 1;
        outlined init with take of ContentPathObservers.Observer(&v92, &v73[2 * v52 + 4]);
        *(v75 + 160) = v73;
      }

      v47 += 16;
      --v46;
    }

    while (v46);

    v37 = a3;
    v8 = v55;
    v40 = v60;
    v41 = v61;
  }

  else
  {
  }

  v92 = v80;
  v93 = v81;
  v94 = v82;
  v95 = v83;
  v36 = v63;
  v96 = v63;
  v37(&v92);

  v15 = v56;
LABEL_26:
  v37(&v84);
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (AGGraphGetOutputValue())
  {
    *&v92 = v8;
    *(&v92 + 1) = v57;
    v93 = v58;
    *&v94 = v59;
    BYTE8(v94) = v40;
    BYTE9(v94) = v41;
    *(&v94 + 10) = v80;
    HIWORD(v94) = WORD2(v80);
    v95 = v15;
    v96 = v36;
    v37(&v92);
  }

  else
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_18DDAB4D0;
    *(v53 + 32) = v75;
    v89[0] = v53;

    AGGraphSetOutputValue();
    *&v92 = v8;
    *(&v92 + 1) = v57;
    v93 = v58;
    *&v94 = v59;
    BYTE8(v94) = v40;
    BYTE9(v94) = v41;
    *(&v94 + 10) = v80;
    HIWORD(v94) = WORD2(v80);
    v95 = v15;
    v96 = v36;
    v37(&v92);
  }
}

uint64_t *specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(uint64_t a1, int a2, char a3, double a4, uint64_t a5, uint64_t a6, char a7)
{
  v96 = *MEMORY[0x1E69E9840];
  v13 = type metadata accessor for OSSignpostID();
  v14 = *(v13 - 8);
  v73 = v13;
  v74 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v75 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v66 = v61 - v17;
  result = AGGraphGetValue();
  v20 = *result;
  v21 = result[1];
  if (a3)
  {
    goto LABEL_2;
  }

  if ((v19 & 1) == 0)
  {
    return result;
  }

  if ((a7 & 1) == 0)
  {
LABEL_2:
  }

  else
  {

    v23 = swift_retain_n();
    v24 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v23);

    if ((v24 & 1) == 0)
    {
    }
  }

  v64 = a1;
  PropertyList.Tracker.reset()();
  if (v20)
  {
    v22 = *(v20 + 64);
  }

  else
  {
    v22 = 0;
  }

  v61[1] = v21;
  v63 = a2;
  v25 = *(a6 + 16);
  swift_retain_n();
  v65 = a6;

  os_unfair_lock_lock((v25 + 16));
  *(v25 + 24) = v22;
  os_unfair_lock_unlock((v25 + 16));

  v62 = v20;

  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v26 = static Signpost.bodyInvoke;
    v27 = word_1ED539040;
    v28 = HIBYTE(word_1ED539040);
    v29 = byte_1ED539042;
    v30 = static os_signpost_type_t.begin.getter();
    v89 = v26;
    LOBYTE(v90) = v27;
    BYTE1(v90) = v28;
    BYTE2(v90) = v29;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v72 = *(&v26 + 1);
    LODWORD(v76) = v30;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_18DDAB4C0;
    v32 = AGTypeID.description.getter();
    v34 = v33;
    v35 = MEMORY[0x1E69E6158];
    *(v31 + 56) = MEMORY[0x1E69E6158];
    v36 = lazy protocol witness table accessor for type String and conformance String();
    *(v31 + 64) = v36;
    *(v31 + 32) = v32;
    *(v31 + 40) = v34;
    v37 = specialized static Tracing.libraryName(defining:)();
    *(v31 + 96) = v35;
    *(v31 + 104) = v36;
    *(v31 + 72) = v37;
    *(v31 + 80) = v38;
    v77 = v31;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v28)
    {
      v81 = v76;
      v79 = _signpostLog;
      v80 = &dword_18D018000;
      *&v89 = v26;
      *(&v89 + 1) = v72;
      LOBYTE(v90) = v27;
      *&v82 = "%{public}@.body [in %{public}@]";
      *(&v82 + 1) = 31;
      LOBYTE(v83) = 2;
      v78 = v77;
      v39 = v66;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v74 + 8))(v39, v73);
LABEL_45:

      break;
    }

    if (v26 == 20)
    {
      v40 = 3;
    }

    else
    {
      v40 = 4;
    }

    v41 = bswap32(v26) | (4 * WORD1(v26));
    v42 = v76;
    v43 = v74 + 16;
    v67 = *(v74 + 16);
    v44 = v67(v75, v66, v73);
    v45 = 0;
    LOBYTE(v82) = 1;
    v74 = v43;
    v71 = 16 * *(&v26 + 1);
    v72 = (v43 - 8);
    v69 = v26;
    v70 = v77 + 32;
    v68 = *(&v26 + 1);
LABEL_22:
    v76 = v61;
    MEMORY[0x1EEE9AC00](v44);
    v47 = v61 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = v47 + 8;
    v49 = v40;
    v50 = v47 + 8;
    do
    {
      *(v50 - 1) = 0;
      *v50 = 0;
      v50 += 16;
      --v49;
    }

    while (v49);
    v51 = v70 + 40 * v45;
    while (1)
    {
      v52 = *(v77 + 16);
      if (v45 == v52)
      {
        LOBYTE(v82) = 0;
LABEL_30:
        v55 = v69;
        if (v69 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v47[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v47[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v47[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v55 != 20 && v47[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v56 = v73;
        v57 = *v72;
        v58 = v75;
        (*v72)(v75, v73);
        v59 = __swift_project_value_buffer(v56, static OSSignpostID.continuation);
        v44 = v67(v58, v59, v56);
        v40 = v68;
        if ((v82 & 1) == 0)
        {
          v60 = v73;
          v57(v75, v73);
          v57(v66, v60);
          goto LABEL_45;
        }

        goto LABEL_22;
      }

      if (v45 >= v52)
      {
        break;
      }

      ++v45;
      outlined init with copy of AnyTrackedValue(v51, &v89);
      v53 = *(&v90 + 1);
      __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
      *(v48 - 1) = CVarArg.kdebugValue(_:)(v41 | v42, v53);
      *v48 = v54 & 1;
      v48 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v89);
      v51 += 40;
      if (!--v40)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_49:
    swift_once();
  }

  AGGraphClearUpdate();
  *&v82 = v62;
  *(&v82 + 1) = v65;
  VariableBlurEffect.resolve(in:)(&v82, v64, v63 & 1, &v89, a4);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  AGGraphSetOutputValue();

  v86 = v93;
  v87 = v94;
  v88[0] = v95[0];
  *(v88 + 12) = *(v95 + 12);
  v82 = v89;
  v83 = v90;
  v84 = v91;
  v85 = v92;
  return outlined destroy of VariableBlurStyle(&v82);
}

uint64_t *specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(uint64_t a1, char a2, double a3, double a4, uint64_t a5, uint64_t a6, char a7)
{
  v94 = *MEMORY[0x1E69E9840];
  v13 = type metadata accessor for OSSignpostID();
  v14 = *(v13 - 8);
  v79 = v13;
  v80 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v81 = v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v72 = v68 - v17;
  result = AGGraphGetValue();
  v20 = *result;
  v21 = result[1];
  if (a2)
  {
    goto LABEL_2;
  }

  if ((v19 & 1) == 0)
  {
    return result;
  }

  if ((a7 & 1) == 0)
  {
LABEL_2:

    goto LABEL_3;
  }

  v23 = swift_retain_n();
  v24 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v23);

  if (v24)
  {
LABEL_3:
    PropertyList.Tracker.reset()();
    if (v20)
    {
      v22 = *(v20 + 64);
    }

    else
    {
      v22 = 0;
    }

    v25 = *(a6 + 16);
    swift_retain_n();

    os_unfair_lock_lock((v25 + 16));
    *(v25 + 24) = v22;
    os_unfair_lock_unlock((v25 + 16));

    if (one-time initialization token for bodyInvoke != -1)
    {
      swift_once();
    }

    v26 = static Signpost.bodyInvoke;
    v27 = word_1ED539040;
    v28 = HIBYTE(word_1ED539040);
    v29 = byte_1ED539042;
    v30 = static os_signpost_type_t.begin.getter();
    v90 = v26;
    LOBYTE(v91) = v27;
    BYTE1(v91) = v28;
    BYTE2(v91) = v29;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      goto LABEL_47;
    }

    LODWORD(v82) = v30;
    v68[1] = v21;
    v69 = a1;
    v70 = v20;
    v71 = a6;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_18DDAB4C0;
    v32 = AGTypeID.description.getter();
    v34 = v33;
    v35 = MEMORY[0x1E69E6158];
    *(v31 + 56) = MEMORY[0x1E69E6158];
    v36 = lazy protocol witness table accessor for type String and conformance String();
    *(v31 + 64) = v36;
    *(v31 + 32) = v32;
    *(v31 + 40) = v34;
    v37 = specialized static Tracing.libraryName(defining:)();
    *(v31 + 96) = v35;
    *(v31 + 104) = v36;
    *(v31 + 72) = v37;
    *(v31 + 80) = v38;
    if (one-time initialization token for _signpostLog == -1)
    {
      v39 = v82;
      if (v28)
      {
LABEL_17:
        v89 = v39;
        v87 = _signpostLog;
        v88 = &dword_18D018000;
        v90 = v26;
        LOBYTE(v91) = v27;
        v84 = "%{public}@.body [in %{public}@]";
        v85 = 31;
        v86 = 2;
        v83 = v31;
        v40 = v72;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        (*(v80 + 8))(v40, v79);
LABEL_46:

        a6 = v71;
        v20 = v70;
        a1 = v69;
LABEL_47:
        AGGraphClearUpdate();
        *&v90 = v20;
        *(&v90 + 1) = a6;
        *&v62 = (*(*a1 + 112))(&v90);
        v63 = a4;
        *&v90 = __PAIR64__(v64, v62);
        v65 = a3;
        *(&v90 + 1) = __PAIR64__(v67, v66);
        v91 = v63;
        v92 = v65;
        AGGraphSetUpdate();
        $defer #1 <A>() in traceRuleBody<A>(_:body:)();
        AGGraphSetOutputValue();
      }
    }

    else
    {
      swift_once();
      v39 = v82;
      if (v28)
      {
        goto LABEL_17;
      }
    }

    if (v26 == 20)
    {
      v41 = 3;
    }

    else
    {
      v41 = 4;
    }

    v42 = bswap32(v26) | (4 * WORD1(v26));
    v43 = v39;
    v44 = v80 + 16;
    v73 = *(v80 + 16);
    v45 = v73(v81, v72, v79);
    v46 = 0;
    LOBYTE(v84) = 1;
    v80 = v44;
    v77 = 16 * v41;
    v78 = (v44 - 8);
    v76 = v31 + 32;
    v75 = v26;
    v74 = v41;
    do
    {
      v82 = v68;
      MEMORY[0x1EEE9AC00](v45);
      v48 = v68 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
      v49 = v48 + 8;
      v50 = v41;
      v51 = v48 + 8;
      do
      {
        *(v51 - 1) = 0;
        *v51 = 0;
        v51 += 16;
        --v50;
      }

      while (v50);
      v52 = v76 + 40 * v46;
      while (1)
      {
        v53 = *(v31 + 16);
        if (v46 == v53)
        {
          break;
        }

        if (v46 >= v53)
        {
          __break(1u);
        }

        ++v46;
        outlined init with copy of AnyTrackedValue(v52, &v90);
        v54 = v93;
        __swift_project_boxed_opaque_existential_1(&v90, v93);
        *(v49 - 1) = CVarArg.kdebugValue(_:)(v42 | v43, v54);
        *v49 = v55 & 1;
        v49 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v90);
        v52 += 40;
        if (!--v41)
        {
          goto LABEL_31;
        }
      }

      LOBYTE(v84) = 0;
LABEL_31:
      v56 = v75;
      if (v75 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v48[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v48[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v48[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v56 != 20 && v48[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v57 = v79;
      v58 = *v78;
      v59 = v81;
      (*v78)(v81, v79);
      v60 = __swift_project_value_buffer(v57, static OSSignpostID.continuation);
      v45 = v73(v59, v60, v57);
      v41 = v74;
    }

    while ((v84 & 1) != 0);
    v61 = v79;
    v58(v81, v79);
    v58(v72, v61);
    goto LABEL_46;
  }
}

uint64_t *specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(uint64_t a1, char a2, double a3, uint64_t a4, uint64_t a5, char a6)
{
  v89 = *MEMORY[0x1E69E9840];
  v11 = type metadata accessor for OSSignpostID();
  v12 = *(v11 - 8);
  v75 = v11;
  v76 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v77 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v68 = v64 - v15;
  result = AGGraphGetValue();
  v18 = *result;
  v19 = result[1];
  if (a2)
  {
    goto LABEL_2;
  }

  if ((v17 & 1) == 0)
  {
    return result;
  }

  if ((a6 & 1) == 0)
  {
LABEL_2:

    goto LABEL_3;
  }

  v21 = swift_retain_n();
  v22 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v21);

  if (v22)
  {
LABEL_3:
    PropertyList.Tracker.reset()();
    if (v18)
    {
      v20 = *(v18 + 64);
    }

    else
    {
      v20 = 0;
    }

    v23 = *(a5 + 16);
    swift_retain_n();

    os_unfair_lock_lock((v23 + 16));
    *(v23 + 24) = v20;
    os_unfair_lock_unlock((v23 + 16));

    if (one-time initialization token for bodyInvoke != -1)
    {
      swift_once();
    }

    v24 = static Signpost.bodyInvoke;
    v25 = word_1ED539040;
    v26 = HIBYTE(word_1ED539040);
    v27 = byte_1ED539042;
    v28 = static os_signpost_type_t.begin.getter();
    v86 = v24;
    LOBYTE(v87) = v25;
    BYTE1(v87) = v26;
    BYTE2(v87) = v27;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      goto LABEL_47;
    }

    LODWORD(v78) = v28;
    v64[1] = v19;
    v65 = a1;
    v66 = v18;
    v67 = a5;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_18DDAB4C0;
    v30 = AGTypeID.description.getter();
    v32 = v31;
    v33 = MEMORY[0x1E69E6158];
    *(v29 + 56) = MEMORY[0x1E69E6158];
    v34 = lazy protocol witness table accessor for type String and conformance String();
    *(v29 + 64) = v34;
    *(v29 + 32) = v30;
    *(v29 + 40) = v32;
    v35 = specialized static Tracing.libraryName(defining:)();
    *(v29 + 96) = v33;
    *(v29 + 104) = v34;
    *(v29 + 72) = v35;
    *(v29 + 80) = v36;
    if (one-time initialization token for _signpostLog == -1)
    {
      v37 = v78;
      if (v26)
      {
LABEL_17:
        v85 = v37;
        v83 = _signpostLog;
        v84 = &dword_18D018000;
        v86 = v24;
        LOBYTE(v87) = v25;
        v80 = "%{public}@.body [in %{public}@]";
        v81 = 31;
        v82 = 2;
        v79 = v29;
        v38 = v68;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        (*(v76 + 8))(v38, v75);
LABEL_46:

        a5 = v67;
        v18 = v66;
        a1 = v65;
LABEL_47:
        AGGraphClearUpdate();
        *&v86 = v18;
        *(&v86 + 1) = a5;
        LODWORD(v86) = (*(*a1 + 112))(&v86);
        DWORD1(v86) = v60;
        v61 = a3;
        *(&v86 + 1) = __PAIR64__(v63, v62);
        v87 = v61;
        AGGraphSetUpdate();
        $defer #1 <A>() in traceRuleBody<A>(_:body:)();
        AGGraphSetOutputValue();
      }
    }

    else
    {
      swift_once();
      v37 = v78;
      if (v26)
      {
        goto LABEL_17;
      }
    }

    if (v24 == 20)
    {
      v39 = 3;
    }

    else
    {
      v39 = 4;
    }

    v40 = bswap32(v24) | (4 * WORD1(v24));
    v41 = v37;
    v42 = v76 + 16;
    v69 = *(v76 + 16);
    v43 = v69(v77, v68, v75);
    v44 = 0;
    LOBYTE(v80) = 1;
    v76 = v42;
    v73 = 16 * v39;
    v74 = (v42 - 8);
    v72 = v29 + 32;
    v71 = v24;
    v70 = v39;
    do
    {
      v78 = v64;
      MEMORY[0x1EEE9AC00](v43);
      v46 = v64 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
      v47 = v46 + 8;
      v48 = v39;
      v49 = v46 + 8;
      do
      {
        *(v49 - 1) = 0;
        *v49 = 0;
        v49 += 16;
        --v48;
      }

      while (v48);
      v50 = v72 + 40 * v44;
      while (1)
      {
        v51 = *(v29 + 16);
        if (v44 == v51)
        {
          break;
        }

        if (v44 >= v51)
        {
          __break(1u);
        }

        ++v44;
        outlined init with copy of AnyTrackedValue(v50, &v86);
        v52 = v88;
        __swift_project_boxed_opaque_existential_1(&v86, v88);
        *(v47 - 1) = CVarArg.kdebugValue(_:)(v40 | v41, v52);
        *v47 = v53 & 1;
        v47 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v86);
        v50 += 40;
        if (!--v39)
        {
          goto LABEL_31;
        }
      }

      LOBYTE(v80) = 0;
LABEL_31:
      v54 = v71;
      if (v71 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v46[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v46[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v46[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v54 != 20 && v46[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v55 = v75;
      v56 = *v74;
      v57 = v77;
      (*v74)(v77, v75);
      v58 = __swift_project_value_buffer(v55, static OSSignpostID.continuation);
      v43 = v69(v57, v58, v55);
      v39 = v70;
    }

    while ((v80 & 1) != 0);
    v59 = v75;
    v56(v77, v75);
    v56(v68, v59);
    goto LABEL_46;
  }
}

uint64_t *specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v88 = *MEMORY[0x1E69E9840];
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  v72 = v9;
  v73 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v74 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v65 = v61 - v13;
  result = AGGraphGetValue();
  v16 = *result;
  v17 = result[1];
  if (a2)
  {
    goto LABEL_2;
  }

  if ((v15 & 1) == 0)
  {
    return result;
  }

  if ((a5 & 1) == 0)
  {
LABEL_2:

    goto LABEL_3;
  }

  v19 = swift_retain_n();
  v20 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v19);

  if (v20)
  {
LABEL_3:
    PropertyList.Tracker.reset()();
    if (v16)
    {
      v18 = *(v16 + 64);
    }

    else
    {
      v18 = 0;
    }

    v21 = *(a4 + 16);
    swift_retain_n();

    os_unfair_lock_lock((v21 + 16));
    *(v21 + 24) = v18;
    os_unfair_lock_unlock((v21 + 16));

    if (one-time initialization token for bodyInvoke != -1)
    {
      swift_once();
    }

    v22 = static Signpost.bodyInvoke;
    v23 = word_1ED539040;
    v24 = HIBYTE(word_1ED539040);
    v25 = byte_1ED539042;
    v26 = static os_signpost_type_t.begin.getter();
    v83 = v22;
    v84 = v23;
    v85 = v24;
    v86 = v25;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      goto LABEL_47;
    }

    LODWORD(v75) = v26;
    v61[1] = v17;
    v62 = v16;
    v63 = a1;
    v64 = a4;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_18DDAB4C0;
    v28 = AGTypeID.description.getter();
    v30 = v29;
    v31 = MEMORY[0x1E69E6158];
    *(v27 + 56) = MEMORY[0x1E69E6158];
    v32 = lazy protocol witness table accessor for type String and conformance String();
    *(v27 + 64) = v32;
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;
    v33 = specialized static Tracing.libraryName(defining:)();
    *(v27 + 96) = v31;
    *(v27 + 104) = v32;
    *(v27 + 72) = v33;
    *(v27 + 80) = v34;
    if (one-time initialization token for _signpostLog == -1)
    {
      v35 = v75;
      if (v24)
      {
LABEL_17:
        v82 = v35;
        v80 = _signpostLog;
        v81 = &dword_18D018000;
        v83 = v22;
        v84 = v23;
        v77 = "%{public}@.body [in %{public}@]";
        v78 = 31;
        v79 = 2;
        v76 = v27;
        v36 = v65;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        (*(v73 + 8))(v36, v72);
LABEL_46:

        a4 = v64;
        a1 = v63;
        v16 = v62;
LABEL_47:
        AGGraphClearUpdate();
        *&v83 = v16;
        *(&v83 + 1) = a4;
        LODWORD(v83) = (*(*a1 + 112))(&v83);
        DWORD1(v83) = v58;
        *(&v83 + 1) = __PAIR64__(v60, v59);
        AGGraphSetUpdate();
        $defer #1 <A>() in traceRuleBody<A>(_:body:)();
        AGGraphSetOutputValue();
      }
    }

    else
    {
      swift_once();
      v35 = v75;
      if (v24)
      {
        goto LABEL_17;
      }
    }

    if (v22 == 20)
    {
      v37 = 3;
    }

    else
    {
      v37 = 4;
    }

    v38 = bswap32(v22) | (4 * WORD1(v22));
    v39 = v35;
    v40 = v73 + 16;
    v66 = *(v73 + 16);
    v41 = v66(v74, v65, v72);
    v42 = 0;
    LOBYTE(v77) = 1;
    v73 = v40;
    v70 = 16 * v37;
    v71 = (v40 - 8);
    v68 = v22;
    v69 = v27 + 32;
    v67 = v37;
    do
    {
      v75 = v61;
      MEMORY[0x1EEE9AC00](v41);
      v44 = v61 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      v45 = v44 + 8;
      v46 = v37;
      v47 = v44 + 8;
      do
      {
        *(v47 - 1) = 0;
        *v47 = 0;
        v47 += 16;
        --v46;
      }

      while (v46);
      v48 = v69 + 40 * v42;
      while (1)
      {
        v49 = *(v27 + 16);
        if (v42 == v49)
        {
          break;
        }

        if (v42 >= v49)
        {
          __break(1u);
        }

        ++v42;
        outlined init with copy of AnyTrackedValue(v48, &v83);
        v50 = v87;
        __swift_project_boxed_opaque_existential_1(&v83, v87);
        *(v45 - 1) = CVarArg.kdebugValue(_:)(v38 | v39, v50);
        *v45 = v51 & 1;
        v45 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v83);
        v48 += 40;
        if (!--v37)
        {
          goto LABEL_31;
        }
      }

      LOBYTE(v77) = 0;
LABEL_31:
      v52 = v68;
      if (v68 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v44[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v44[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v44[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v52 != 20 && v44[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v53 = v72;
      v54 = *v71;
      v55 = v74;
      (*v71)(v74, v72);
      v56 = __swift_project_value_buffer(v53, static OSSignpostID.continuation);
      v41 = v66(v55, v56, v53);
      v37 = v67;
    }

    while ((v77 & 1) != 0);
    v57 = v72;
    v54(v74, v72);
    v54(v65, v57);
    goto LABEL_46;
  }
}

uint64_t specialized SizeFittingTextCache.CacheEntry.result(for:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v50 = a2[6];
  v51 = a2[5];
  type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>(0, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry);
  v10 = (v2 + *(v9 + 52));
  v11 = *v10;
  v12 = v10[3];
  v54 = v10[1];
  v55 = v10[2];
  v52 = v9;
  if (*v10)
  {
    if (*(v2 + *(v9 + 56)) != 1)
    {
      v49 = v5;

      v17 = v55;

      goto LABEL_10;
    }

    v13 = v2[9];
    if (!v13)
    {
      if (v7)
      {
        goto LABEL_32;
      }

      v49 = v5;

      v17 = v55;

LABEL_28:
      if (PropertyList.Tracker.hasDifferentUsedValues(_:)(v8))
      {
        goto LABEL_29;
      }

LABEL_10:
      type metadata accessor for ResolvedTextHelper(0);
      ResolvedTextHelper.NextUpdate.time()();
      if (v57)
      {
        v19 = v11;
        v20 = v54;
      }

      else
      {
        v5 = v49;
        v20 = v54;
        if (*AGGraphGetValue() >= *&v56)
        {

          goto LABEL_32;
        }

        v19 = v11;
        v17 = v55;
      }

      outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v19);
      v21 = 0;
LABEL_34:
      *v10 = v11;
      v10[1] = v20;
      v10[2] = v17;
      v10[3] = v12;
      *(v3 + *(v52 + 56)) = 0;
      *a1 = v11;
      a1[1] = v20;
      a1[2] = v17;
      a1[3] = v12;

      return v21;
    }

    v48 = v8;
    v49 = v5;
    v15 = v2[6];
    v14 = v2[7];
    v16 = v2[8];
    v47 = v13;
    if (v7)
    {
      v17 = v10[2];
      v45 = v16;
      v46 = v14;
      v44 = v15;
      if (v16)
      {
        if ((v6 & 1) == 0)
        {
          v30 = v15;
          outlined copy of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v11);
          outlined copy of Text?(v30, v46, v45, v47);

          v31 = v44;
          v32 = v45;
          v33 = v46;
          v34 = v47;
LABEL_31:
          outlined consume of Text?(v31, v33, v32, v34);
          v8 = v48;
          v5 = v49;
          goto LABEL_32;
        }

        v41 = *(*v15 + 96);
        v16 = v15;
        outlined copy of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v11);
        v18 = v47;
        outlined copy of Text?(v16, v46, v45, v47);
        LOBYTE(v16) = v45;
        if ((v41(v49) & 1) == 0)
        {
LABEL_30:

          v31 = v44;
          v33 = v46;
          v32 = v16;
          v34 = v18;
          goto LABEL_31;
        }

LABEL_27:
        v43 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v18, v7);
        outlined consume of Text?(v44, v46, v16, v18);
        v8 = v48;
        if ((v43 & 1) == 0)
        {
LABEL_29:

          v5 = v49;
          goto LABEL_32;
        }

        goto LABEL_28;
      }

      if ((v6 & 1) == 0)
      {
        if (v15 == v49 && v14 == v4)
        {
          outlined copy of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v11);
          v18 = v47;
          outlined copy of Text?(v49, v4, v16, v47);
        }

        else
        {
          v35 = v15;
          v16 = v14;
          v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v11);
          v36 = v35;
          v37 = v16;
          LOBYTE(v16) = v45;
          v18 = v47;
          outlined copy of Text?(v36, v37, v45, v47);
          if ((v42 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        goto LABEL_27;
      }

      v29 = v14;
      outlined copy of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v11);
      outlined copy of Text?(v44, v29, v16, v47);
      v8 = v48;

      v25 = v44;
      v27 = v16;
      v26 = v46;
      v28 = v47;
    }

    else
    {
      v39 = v6;
      v40 = v4;
      v22 = v15;
      v23 = v14;
      v24 = v13;
      outlined copy of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v11);
      outlined copy of Text?(v22, v23, v16, v24);

      v7 = 0;
      v8 = v48;

      v25 = v22;
      v26 = v23;
      v6 = v39;
      v4 = v40;
      v27 = v16;
      v28 = v47;
    }

    outlined consume of Text?(v25, v26, v27, v28);
    v5 = v49;
  }

LABEL_32:
  v56 = v8;
  v57 = v51;
  result = ResolvedTextHelper.resolve(_:with:sizeFitting:)(v5, v4, v6, v7, &v56, 1);
  if (result)
  {
    v20 = result;

    outlined copy of Text?(v5, v4, v6, v7);

    outlined consume of Text?(v5, v4, v6, v7);
    outlined copy of Text?(v5, v4, v6, v7);

    outlined consume of Text?(v5, v4, v6, v7);
    outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v11);
    v21 = 1;
    v12 = v50;
    v11 = v20;
    v17 = v50;
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

size_t specialized SizeFittingTextCache.suggestedVariant(for:)@<X0>(size_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if ((*(v5 + 89) & 1) == 0)
  {
    v7 = v5;
    v11 = result;
    v12 = *(v5 + 88);
    v13 = *(v5 + 80);
    v14 = *(v5 + 72);
    v16 = *(v5 + 56);
    v15 = *(v5 + 64);
    v17 = *(v5 + 49);
    v18 = *(v5 + 48);
    v44 = result;
    v45 = a2 & 1;
    v46 = a3;
    v19 = a4 & 1;
    v47 = a4 & 1;
    v40 = v15;
    v41 = v14 & 1;
    v42 = v13;
    v43 = v12 & 1;
    result = _ProposedSize.fits(into:ignoreHorizontalAxis:ignoreVerticalAxis:)(&v40, v18, v17);
    if (result)
    {
      v37 = a4;
      v39 = 0;
      v20 = swift_allocObject();
      v38 = &v36;
      *(v20 + 16) = &v39;
      MEMORY[0x1EEE9AC00](v20);
      v32 = v11;
      v33 = a2 & 1;
      v34 = a3;
      v35 = v19;
      v21 = specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v16, partial apply for specialized closure #1 in SizeFittingTextCache.suggestedVariant(for:), v20, partial apply for specialized closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:), v31);

      result = swift_beginAccess();
      if ((v39 & 1) == 0)
      {
        if (v21)
        {
          v30 = v16;
        }

        else
        {
          v30 = 0;
        }

        *a5 = v30;
        v29 = (v21 & 1) == 0;
        goto LABEL_10;
      }

      if ((*(v7 + 89) & 1) == 0)
      {
        v22 = *(v7 + 88);
        v23 = *(v7 + 80);
        v24 = *(v7 + 72);
        v26 = *(v7 + 56);
        v25 = *(v7 + 64);
        v27 = *(v7 + 49);
        v28 = *(v7 + 48);
        v44 = v11;
        v45 = a2 & 1;
        v46 = a3;
        v47 = v37 & 1;
        v40 = v25;
        v41 = v24 & 1;
        v42 = v23;
        v43 = v22 & 1;
        result = _ProposedSize.fits(into:ignoreHorizontalAxis:ignoreVerticalAxis:)(&v40, v28, v27);
        if (result)
        {
          if (v26 == v16 || (MEMORY[0x1EEE9AC00](result), v32 = v11, v33 = a2 & 1, v34 = a3, v35 = v37 & 1, result = specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v26, _ViewInputs.base.modify, 0, partial apply for specialized closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:), v31), (result & 1) != 0))
          {
            *a5 = v26;
            *(a5 + 8) = 0;
            return result;
          }
        }
      }
    }
  }

  *a5 = 0;
  v29 = 1;
LABEL_10:
  *(a5 + 8) = v29;
  return result;
}

uint64_t specialized SizeFittingTextCache.suggestedVariant(for:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if ((*(v5 + 89) & 1) == 0)
  {
    v7 = v5;
    v11 = result;
    v12 = *(v5 + 88);
    v13 = *(v5 + 80);
    v14 = *(v5 + 72);
    v16 = *(v5 + 56);
    v15 = *(v5 + 64);
    v17 = *(v5 + 49);
    v18 = *(v5 + 48);
    v44 = result;
    v45 = a2 & 1;
    v46 = a3;
    v19 = a4 & 1;
    v47 = a4 & 1;
    v40 = v15;
    v41 = v14 & 1;
    v42 = v13;
    v43 = v12 & 1;
    result = _ProposedSize.fits(into:ignoreHorizontalAxis:ignoreVerticalAxis:)(&v40, v18, v17);
    if (result)
    {
      v37 = a4;
      v39 = 0;
      v20 = swift_allocObject();
      v38 = &v36;
      *(v20 + 16) = &v39;
      MEMORY[0x1EEE9AC00](v20);
      v32 = v11;
      v33 = a2 & 1;
      v34 = a3;
      v35 = v19;
      v21 = specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v16, closure #1 in SizeFittingTextCache.suggestedVariant(for:)specialized partial apply, v20, partial apply for specialized closure #2 in SizeFittingTextCache.suggestedVariant(for:), v31);

      result = swift_beginAccess();
      if ((v39 & 1) == 0)
      {
        if (v21)
        {
          v30 = v16;
        }

        else
        {
          v30 = 0;
        }

        *a5 = v30;
        v29 = (v21 & 1) == 0;
        goto LABEL_10;
      }

      if ((*(v7 + 89) & 1) == 0)
      {
        v22 = *(v7 + 88);
        v23 = *(v7 + 80);
        v24 = *(v7 + 72);
        v26 = *(v7 + 56);
        v25 = *(v7 + 64);
        v27 = *(v7 + 49);
        v28 = *(v7 + 48);
        v44 = v11;
        v45 = a2 & 1;
        v46 = a3;
        v47 = v37 & 1;
        v40 = v25;
        v41 = v24 & 1;
        v42 = v23;
        v43 = v22 & 1;
        result = _ProposedSize.fits(into:ignoreHorizontalAxis:ignoreVerticalAxis:)(&v40, v28, v27);
        if (result)
        {
          if (v26 == v16 || (MEMORY[0x1EEE9AC00](result), v32 = v11, v33 = a2 & 1, v34 = a3, v35 = v37 & 1, result = specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v26, _ViewInputs.base.modify, 0, partial apply for specialized closure #3 in implicit closure #1 in SizeFittingTextCache.suggestedVariant(for:), v31), (result & 1) != 0))
          {
            *a5 = v26;
            *(a5 + 8) = 0;
            return result;
          }
        }
      }
    }
  }

  *a5 = 0;
  v29 = 1;
LABEL_10:
  *(a5 + 8) = v29;
  return result;
}

size_t specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)@<X0>(unint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X2>, void (*a4)(_BYTE *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v87 = a4;
  v8 = v6;
  v86[1] = a6;
  v86[2] = a5;
  v91 = a3;
  v92 = a2;
  type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>(0, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry);
  v11 = *(v10 - 8);
  v95 = v10;
  v96 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v86 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (v86 - v18);
  swift_beginAccess();
  v20 = *(v6 + 40);
  v21 = *(v20 + 16);
  v104 = v8;
  if (v21 > a1)
  {
    swift_beginAccess();
    v23 = *(v8 + 96);
    v22 = *(v8 + 104);
    v99 = v20;
    v25 = *(v8 + 112);
    v24 = *(v8 + 120);
    v26 = v8;
    v27 = *(v8 + 128);
    v16 = v26[18];
    *&v103 = v26[17];
    swift_beginAccess();
    v100 = v22;
    v101 = v23;
    v28 = v22;
    v7 = v99;
    v97 = v25;
    v98 = v24;
    outlined copy of Text?(v23, v28, v25, v24);
    v29 = v16;

    v102 = v27;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26[5] = v7;
    if (isUniquelyReferenced_nonNull_native)
    {
      v31 = v100;
      if ((a1 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
LABEL_35:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      *(v104 + 40) = v7;
      v31 = v100;
      if ((a1 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (*(v7 + 16) > a1)
        {
          v32 = v29;
          v33 = v97;
          v34 = v7 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * a1;
          v105[0] = v101;
          v105[1] = v31;
          v35 = v98;
          v105[2] = v97;
          v105[3] = v98;
          v105[4] = v102;
          v105[5] = v103;
          v105[6] = v32;
          if (specialized SizeFittingTextCache.CacheEntry.result(for:)(v108, v105))
          {
            v109[0] = a1;
            StickyTextSizeFittingLogic.onInvalidation(of:)(v109);
            v92();
          }

          v87(v108);
          outlined consume of Text?(v101, v31, v33, v35);

          v36 = v34 + *(v95 + 52);
          v37 = *v36;
          *v36 = *v108;
          *(v36 + 16) = *&v108[16];
          outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v37);
          *(v104 + 40) = v7;
          return swift_endAccess();
        }

        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  swift_beginAccess();
  if ((*(v8 + 32) & 1) == 0)
  {
    v29 = &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry;
    v89 = v13;
    v90 = a1;
    v88 = v16;
    v93 = v19;
    do
    {
      v38 = *(v8 + 40);
      v39 = *(v38 + 16);
      if (v39 > a1)
      {
        break;
      }

      if (!v39)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v94 = *(v38 + 16);
      v40 = (*(v96 + 80) + 32) & ~*(v96 + 80);
      v7 = *(v96 + 72);
      outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v38 + v40 + v7 * (v39 - 1), v16, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v16, v19, type metadata accessor for ResolvedTextHelper);
      v41 = type metadata accessor for ResolvedTextHelper(0);
      v42 = *(v41 + 64);
      v43 = *(v19 + v42);
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_34;
      }

      v46 = v41;
      v97 = v7;
      v98 = v40;
      *(v19 + v42) = v45;
      PropertyList.Tracker.reset()();
      outlined consume of Text?(v19[6], v19[7], v19[8], v19[9]);
      *(v19 + 3) = 0u;
      *(v19 + 4) = 0u;
      v47 = *(v46 + 60);
      outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v19 + v47, type metadata accessor for ResolvedTextHelper.NextUpdate);
      *(v19 + v47) = 0;
      type metadata accessor for ResolvedTextHelper.NextUpdate(0);
      swift_storeEnumTagMultiPayload();
      v48 = v95;
      v49 = v19 + *(v95 + 52);
      *v49 = 0u;
      *(v49 + 1) = 0u;
      v50 = *(v48 + 56);
      LOBYTE(v46) = *(v16 + v50);
      outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v16, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      *(v19 + v50) = v46;
      v52 = *(v8 + 96);
      v51 = *(v8 + 104);
      v53 = v8;
      v54 = *(v8 + 112);
      v56 = v53[15];
      v55 = v53[16];
      v58 = v53[17];
      v57 = v53[18];
      outlined copy of Text?(v52, v51, v54, v56);
      v99 = v52;
      v100 = v51;
      v106[0] = v52;
      v106[1] = v51;
      v19 = v93;
      v101 = v54;
      v106[2] = v54;
      v106[3] = v56;
      v106[4] = v55;
      v106[5] = v58;
      v106[6] = v57;
      *&v103 = v55;

      v102 = v58;

      if (specialized SizeFittingTextCache.CacheEntry.result(for:)(v108, v106))
      {
        v59 = v104;
        if ((*(v104 + 89) & 1) == 0 && v94 == *(v104 + 56))
        {
          *(v104 + 88) = 0;
          *(v59 + 72) = 0u;
          *(v59 + 56) = 0u;
          *(v59 + 89) = 1;
        }

        v92();
      }

      outlined consume of Text?(v99, v100, v101, v56);

      v60 = *v108;
      v61 = *(*v108 + 260);
      v103 = *&v108[8];
      v62 = *&v108[24];
      outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(*v49);
      *v49 = v60;
      *(v49 + 8) = v103;
      *(v49 + 3) = v62;
      if ((v61 & 0x100) == 0)
      {
        outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v19, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
        v8 = v104;
        *(v104 + 32) = 1;
        break;
      }

      v63 = v89;
      v29 = &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry;
      outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v19, v89, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      v8 = v104;
      swift_beginAccess();
      v64 = *(v8 + 40);
      v65 = swift_isUniquelyReferenced_nonNull_native();
      *(v8 + 40) = v64;
      if ((v65 & 1) == 0)
      {
        v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64[2] + 1, 1, v64);
        *(v8 + 40) = v64;
      }

      v16 = v88;
      v7 = v64[2];
      v66 = v64[3];
      if (v7 >= v66 >> 1)
      {
        v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v66 > 1, v7 + 1, 1, v64);
      }

      v64[2] = v7 + 1;
      outlined init with take of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v63, v64 + v98 + v7 * v97);
      *(v8 + 40) = v64;
      swift_endAccess();
      outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v19, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      a1 = v90;
    }

    while ((*(v8 + 32) & 1) == 0);
  }

  v98 = *(v8 + 40);
  v99 = *(v98 + 16);
  swift_beginAccess();
  v67 = *(v8 + 96);
  v68 = *(v8 + 104);
  v69 = v8;
  v71 = *(v8 + 112);
  v70 = *(v8 + 120);
  v72 = *(v8 + 128);
  v73 = *(v8 + 136);
  v74 = *(v8 + 144);
  swift_beginAccess();
  v100 = v68;
  v101 = v67;
  v75 = v68;
  v7 = v98;
  v94 = v71;
  v97 = v70;
  outlined copy of Text?(v67, v75, v71, v70);
  v16 = v74;

  *&v103 = v72;

  v102 = v73;

  result = swift_isUniquelyReferenced_nonNull_native();
  *(v69 + 40) = v7;
  if ((result & 1) == 0)
  {
LABEL_38:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v7 = result;
    *(v104 + 40) = result;
    v77 = v99;
    v78 = v100;
    if (!v99)
    {
      goto LABEL_39;
    }

    goto LABEL_28;
  }

  v77 = v99;
  v78 = v100;
  if (!v99)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_28:
  if (v77 <= *(v7 + 16))
  {
    v79 = v16;
    v80 = v77 - 1;
    v81 = v97;
    v82 = v7 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * (v77 - 1);
    v107[0] = v101;
    v107[1] = v78;
    v83 = v94;
    v107[2] = v94;
    v107[3] = v97;
    v107[4] = v103;
    v107[5] = v102;
    v107[6] = v79;
    if (specialized SizeFittingTextCache.CacheEntry.result(for:)(v108, v107))
    {
      v110 = v80;
      StickyTextSizeFittingLogic.onInvalidation(of:)(&v110);
      v92();
    }

    v87(v108);
    outlined consume of Text?(v101, v78, v83, v81);

    v84 = v82 + *(v95 + 52);
    v85 = *v84;
    *v84 = *v108;
    *(v84 + 16) = *&v108[16];
    outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v85);
    *(v104 + 40) = v7;
    return swift_endAccess();
  }

LABEL_40:
  __break(1u);
  return result;
}

size_t specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(unint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(unint64_t *__return_ptr, _BYTE *), uint64_t a5)
{
  v82 = a4;
  v6 = v5;
  v81[1] = a5;
  v87 = a3;
  v88 = a2;
  type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>(0, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry);
  v9 = *(v8 - 8);
  v91 = v8;
  v92 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v81 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (v81 - v16);
  swift_beginAccess();
  v18 = *(v5 + 40);
  v19 = *(v18 + 16);
  v99 = v5;
  if (v19 > a1)
  {
    swift_beginAccess();
    v93 = v18;
    v21 = *(v5 + 96);
    v20 = *(v5 + 104);
    v23 = *(v5 + 112);
    v22 = *(v5 + 120);
    v24 = *(v5 + 128);
    *&v98 = *(v5 + 136);
    v25 = *(v5 + 144);
    swift_beginAccess();
    v95 = v23;
    v96 = v21;
    v94 = v20;
    v26 = v20;
    v18 = v93;
    v90 = v22;
    outlined copy of Text?(v21, v26, v23, v22);
    v14 = v25;

    v97 = v24;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 40) = v18;
    if (isUniquelyReferenced_nonNull_native)
    {
      v29 = v94;
      v28 = v95;
      if ((a1 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
LABEL_38:
      v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
      *(v99 + 40) = v18;
      v29 = v94;
      v28 = v95;
      if ((a1 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (*(v18 + 16) > a1)
        {
          v30 = v18 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * a1;
          v100[0] = v96;
          v100[1] = v29;
          v31 = v90;
          v100[2] = v28;
          v100[3] = v90;
          v100[4] = v97;
          v100[5] = v98;
          v100[6] = v14;
          if (specialized SizeFittingTextCache.CacheEntry.result(for:)(v103, v100))
          {
            v104[0] = a1;
            StickyTextSizeFittingLogic.onInvalidation(of:)(v104);
            v88();
          }

          v32 = v83;
          v82(v104, v103);
          outlined consume of Text?(v96, v29, v28, v31);

          if (!v32)
          {
            a1 = v104[0];
          }

LABEL_35:
          v79 = v30 + *(v91 + 52);
          v80 = *v79;
          *v79 = *v103;
          *(v79 + 16) = *&v103[16];
          outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v80);
          *(v99 + 40) = v18;
          swift_endAccess();
          return a1;
        }

        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  swift_beginAccess();
  if ((*(v5 + 32) & 1) == 0)
  {
    v85 = v11;
    v86 = a1;
    v84 = v14;
    v89 = v17;
    do
    {
      v33 = *(v6 + 40);
      v34 = *(v33 + 16);
      if (v34 > a1)
      {
        break;
      }

      if (!v34)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v90 = *(v33 + 16);
      v35 = (*(v92 + 80) + 32) & ~*(v92 + 80);
      v18 = *(v92 + 72);
      outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v33 + v35 + v18 * (v34 - 1), v14, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v14, v17, type metadata accessor for ResolvedTextHelper);
      v36 = type metadata accessor for ResolvedTextHelper(0);
      v37 = *(v36 + 64);
      v38 = *(v17 + v37);
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_37;
      }

      v41 = v36;
      v93 = v18;
      v94 = v35;
      *(v17 + v37) = v40;
      PropertyList.Tracker.reset()();
      outlined consume of Text?(v17[6], v17[7], v17[8], v17[9]);
      *(v17 + 3) = 0u;
      *(v17 + 4) = 0u;
      v42 = *(v41 + 60);
      outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v17 + v42, type metadata accessor for ResolvedTextHelper.NextUpdate);
      *(v17 + v42) = 0;
      type metadata accessor for ResolvedTextHelper.NextUpdate(0);
      swift_storeEnumTagMultiPayload();
      v43 = v91;
      v44 = v17 + *(v91 + 52);
      *v44 = 0u;
      *(v44 + 1) = 0u;
      v45 = *(v43 + 56);
      LOBYTE(v41) = v14[v45];
      outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v14, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      *(v17 + v45) = v41;
      v47 = *(v6 + 96);
      v46 = *(v6 + 104);
      v48 = v6;
      v49 = *(v6 + 112);
      v51 = v48[15];
      v50 = v48[16];
      v53 = v48[17];
      v52 = v48[18];
      outlined copy of Text?(v47, v46, v49, v51);
      v95 = v47;
      v96 = v49;
      v101[0] = v47;
      v54 = v46;
      v17 = v89;
      v101[1] = v54;
      v101[2] = v49;
      v101[3] = v51;
      v101[4] = v50;
      v101[5] = v53;
      v101[6] = v52;
      *&v98 = v50;

      v97 = v53;

      if (specialized SizeFittingTextCache.CacheEntry.result(for:)(v103, v101))
      {
        v55 = v99;
        if ((*(v99 + 89) & 1) == 0 && v90 == *(v99 + 56))
        {
          *(v99 + 88) = 0;
          *(v55 + 72) = 0u;
          *(v55 + 56) = 0u;
          *(v55 + 89) = 1;
        }

        v88();
      }

      outlined consume of Text?(v95, v54, v96, v51);

      v56 = *v103;
      v57 = *(*v103 + 260);
      v98 = *&v103[8];
      v58 = *&v103[24];
      outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(*v44);
      *v44 = v56;
      *(v44 + 8) = v98;
      *(v44 + 3) = v58;
      if ((v57 & 0x100) == 0)
      {
        outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v17, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
        v6 = v99;
        *(v99 + 32) = 1;
        break;
      }

      v59 = v85;
      outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v17, v85, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      v6 = v99;
      swift_beginAccess();
      v60 = *(v6 + 40);
      v61 = swift_isUniquelyReferenced_nonNull_native();
      *(v6 + 40) = v60;
      if ((v61 & 1) == 0)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
        *(v6 + 40) = v60;
      }

      v14 = v84;
      v18 = v60[2];
      v62 = v60[3];
      if (v18 >= v62 >> 1)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v62 > 1, v18 + 1, 1, v60);
      }

      v60[2] = v18 + 1;
      outlined init with take of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v59, v60 + v94 + v18 * v93);
      *(v6 + 40) = v60;
      swift_endAccess();
      outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v17, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      a1 = v86;
    }

    while ((*(v6 + 32) & 1) == 0);
  }

  v93 = *(v6 + 40);
  v94 = *(v93 + 16);
  swift_beginAccess();
  v63 = *(v6 + 96);
  v64 = *(v6 + 104);
  v65 = v6;
  v67 = *(v6 + 112);
  v66 = *(v6 + 120);
  v68 = *(v6 + 128);
  v69 = *(v6 + 136);
  v70 = *(v6 + 144);
  swift_beginAccess();
  v95 = v64;
  v96 = v63;
  v71 = v64;
  v18 = v93;
  v89 = v67;
  v90 = v66;
  outlined copy of Text?(v63, v71, v67, v66);
  v14 = v70;

  *&v98 = v68;

  v97 = v69;

  result = swift_isUniquelyReferenced_nonNull_native();
  *(v65 + 40) = v18;
  if ((result & 1) == 0)
  {
LABEL_41:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
    v18 = result;
    *(v99 + 40) = result;
    v73 = v94;
    v74 = v95;
    if (!v94)
    {
      goto LABEL_42;
    }

    goto LABEL_30;
  }

  v73 = v94;
  v74 = v95;
  if (!v94)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_30:
  if (v73 <= *(v18 + 16))
  {
    v75 = v14;
    a1 = v73 - 1;
    v30 = v18 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * (v73 - 1);
    v102[0] = v96;
    v102[1] = v74;
    v77 = v89;
    v76 = v90;
    v102[2] = v89;
    v102[3] = v90;
    v102[4] = v98;
    v102[5] = v97;
    v102[6] = v75;
    if (specialized SizeFittingTextCache.CacheEntry.result(for:)(v103, v102))
    {
      v105 = a1;
      StickyTextSizeFittingLogic.onInvalidation(of:)(&v105);
      v88();
    }

    v78 = v83;
    v82(&v105, v103);
    outlined consume of Text?(v96, v74, v77, v76);

    if (!v78)
    {
      a1 = v105;
    }

    goto LABEL_35;
  }

LABEL_43:
  __break(1u);
  return result;
}

{
  v82 = a4;
  v6 = v5;
  v81[1] = a5;
  v87 = a3;
  v88 = a2;
  type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>(0, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry);
  v9 = *(v8 - 8);
  v91 = v8;
  v92 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v81 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (v81 - v16);
  swift_beginAccess();
  v18 = *(v5 + 40);
  v19 = *(v18 + 16);
  v99 = v5;
  if (v19 > a1)
  {
    swift_beginAccess();
    v93 = v18;
    v21 = *(v5 + 96);
    v20 = *(v5 + 104);
    v23 = *(v5 + 112);
    v22 = *(v5 + 120);
    v24 = *(v5 + 128);
    *&v98 = *(v5 + 136);
    v25 = *(v5 + 144);
    swift_beginAccess();
    v95 = v23;
    v96 = v21;
    v94 = v20;
    v26 = v20;
    v18 = v93;
    v90 = v22;
    outlined copy of Text?(v21, v26, v23, v22);
    v14 = v25;

    v97 = v24;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 40) = v18;
    if (isUniquelyReferenced_nonNull_native)
    {
      v29 = v94;
      v28 = v95;
      if ((a1 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
LABEL_38:
      v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
      *(v99 + 40) = v18;
      v29 = v94;
      v28 = v95;
      if ((a1 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (*(v18 + 16) > a1)
        {
          v30 = v18 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * a1;
          v100[0] = v96;
          v100[1] = v29;
          v31 = v90;
          v100[2] = v28;
          v100[3] = v90;
          v100[4] = v97;
          v100[5] = v98;
          v100[6] = v14;
          if (specialized SizeFittingTextCache.CacheEntry.result(for:)(v103, v100))
          {
            v104[0] = a1;
            StickyTextSizeFittingLogic.onInvalidation(of:)(v104);
            v88();
          }

          v32 = v83;
          v82(v104, v103);
          outlined consume of Text?(v96, v29, v28, v31);

          if (!v32)
          {
            LOBYTE(a1) = v104[0];
          }

LABEL_35:
          v79 = v30 + *(v91 + 52);
          v80 = *v79;
          *v79 = *v103;
          *(v79 + 16) = *&v103[16];
          outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(v80);
          *(v99 + 40) = v18;
          swift_endAccess();
          return a1 & 1;
        }

        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  swift_beginAccess();
  if ((*(v5 + 32) & 1) == 0)
  {
    v85 = v11;
    v86 = a1;
    v84 = v14;
    v89 = v17;
    do
    {
      v33 = *(v6 + 40);
      v34 = *(v33 + 16);
      if (v34 > a1)
      {
        break;
      }

      if (!v34)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v90 = *(v33 + 16);
      v35 = (*(v92 + 80) + 32) & ~*(v92 + 80);
      v18 = *(v92 + 72);
      outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v33 + v35 + v18 * (v34 - 1), v14, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v14, v17, type metadata accessor for ResolvedTextHelper);
      v36 = type metadata accessor for ResolvedTextHelper(0);
      v37 = *(v36 + 64);
      v38 = *(v17 + v37);
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_37;
      }

      v41 = v36;
      v93 = v18;
      v94 = v35;
      *(v17 + v37) = v40;
      PropertyList.Tracker.reset()();
      outlined consume of Text?(v17[6], v17[7], v17[8], v17[9]);
      *(v17 + 3) = 0u;
      *(v17 + 4) = 0u;
      v42 = *(v41 + 60);
      outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v17 + v42, type metadata accessor for ResolvedTextHelper.NextUpdate);
      *(v17 + v42) = 0;
      type metadata accessor for ResolvedTextHelper.NextUpdate(0);
      swift_storeEnumTagMultiPayload();
      v43 = v91;
      v44 = v17 + *(v91 + 52);
      *v44 = 0u;
      *(v44 + 1) = 0u;
      v45 = *(v43 + 56);
      LOBYTE(v41) = v14[v45];
      outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v14, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      *(v17 + v45) = v41;
      v47 = *(v6 + 96);
      v46 = *(v6 + 104);
      v48 = v6;
      v49 = *(v6 + 112);
      v51 = v48[15];
      v50 = v48[16];
      v53 = v48[17];
      v52 = v48[18];
      outlined copy of Text?(v47, v46, v49, v51);
      v95 = v47;
      v96 = v49;
      v101[0] = v47;
      v54 = v46;
      v17 = v89;
      v101[1] = v54;
      v101[2] = v49;
      v101[3] = v51;
      v101[4] = v50;
      v101[5] = v53;
      v101[6] = v52;
      *&v98 = v50;

      v97 = v53;

      if (specialized SizeFittingTextCache.CacheEntry.result(for:)(v103, v101))
      {
        v55 = v99;
        if ((*(v99 + 89) & 1) == 0 && v90 == *(v99 + 56))
        {
          *(v99 + 88) = 0;
          *(v55 + 72) = 0u;
          *(v55 + 56) = 0u;
          *(v55 + 89) = 1;
        }

        v88();
      }

      outlined consume of Text?(v95, v54, v96, v51);

      v56 = *v103;
      v57 = *(*v103 + 260);
      v98 = *&v103[8];
      v58 = *&v103[24];
      outlined consume of SizeFittingTextCacheValue<StyledTextLayoutEngine>?(*v44);
      *v44 = v56;
      *(v44 + 8) = v98;
      *(v44 + 3) = v58;
      if ((v57 & 0x100) == 0)
      {
        outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v17, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
        v6 = v99;
        *(v99 + 32) = 1;
        break;
      }

      v59 = v85;
      outlined init with copy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v17, v85, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      v6 = v99;
      swift_beginAccess();
      v60 = *(v6 + 40);
      v61 = swift_isUniquelyReferenced_nonNull_native();
      *(v6 + 40) = v60;
      if ((v61 & 1) == 0)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
        *(v6 + 40) = v60;
      }

      v14 = v84;
      v18 = v60[2];
      v62 = v60[3];
      if (v18 >= v62 >> 1)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v62 > 1, v18 + 1, 1, v60);
      }

      v60[2] = v18 + 1;
      outlined init with take of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v59, v60 + v94 + v18 * v93);
      *(v6 + 40) = v60;
      swift_endAccess();
      outlined destroy of SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry(v17, &lazy cache variable for type metadata for SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry, type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>);
      a1 = v86;
    }

    while ((*(v6 + 32) & 1) == 0);
  }

  v93 = *(v6 + 40);
  v94 = *(v93 + 16);
  swift_beginAccess();
  v63 = *(v6 + 96);
  v64 = *(v6 + 104);
  v65 = v6;
  v67 = *(v6 + 112);
  v66 = *(v6 + 120);
  v68 = *(v6 + 128);
  v69 = *(v6 + 136);
  v70 = *(v6 + 144);
  swift_beginAccess();
  v95 = v64;
  v96 = v63;
  v71 = v64;
  v18 = v93;
  v89 = v67;
  v90 = v66;
  outlined copy of Text?(v63, v71, v67, v66);
  v14 = v70;

  *&v98 = v68;

  v97 = v69;

  result = swift_isUniquelyReferenced_nonNull_native();
  *(v65 + 40) = v18;
  if ((result & 1) == 0)
  {
LABEL_41:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
    v18 = result;
    *(v99 + 40) = result;
    v73 = v94;
    v74 = v95;
    if (!v94)
    {
      goto LABEL_42;
    }

    goto LABEL_30;
  }

  v73 = v94;
  v74 = v95;
  if (!v94)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_30:
  if (v73 <= *(v18 + 16))
  {
    v75 = v14;
    a1 = v73 - 1;
    v30 = v18 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * (v73 - 1);
    v102[0] = v96;
    v102[1] = v74;
    v77 = v89;
    v76 = v90;
    v102[2] = v89;
    v102[3] = v90;
    v102[4] = v98;
    v102[5] = v97;
    v102[6] = v75;
    if (specialized SizeFittingTextCache.CacheEntry.result(for:)(v103, v102))
    {
      v105 = a1;
      StickyTextSizeFittingLogic.onInvalidation(of:)(&v105);
      v88();
    }

    v78 = v83;
    v82(&v105, v103);
    outlined consume of Text?(v96, v74, v77, v76);

    if (!v78)
    {
      LOBYTE(a1) = v105;
    }

    goto LABEL_35;
  }

LABEL_43:
  __break(1u);
  return result;
}