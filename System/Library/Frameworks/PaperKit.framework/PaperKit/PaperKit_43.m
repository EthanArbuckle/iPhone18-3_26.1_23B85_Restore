uint64_t specialized Data.init(paperKitHash:version:)(uint64_t a1, unint64_t a2, char a3)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a3 != 1)
  {
    if (one-time initialization token for magicNumber != -1)
    {
      swift_once();
    }

    v6 = static PaperKitPDFHash.magicNumber;
    v7 = *algn_1EC7C3F48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D405C990;
    *(v8 + 32) = 0;
    *(v8 + 33) = a3;
    v9 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v8);
    v11 = v10;

    *&v44 = v6;
    *(&v44 + 1) = v7;
    v12 = MEMORY[0x1E6969080];
    v13 = MEMORY[0x1E6969078];
    v42 = MEMORY[0x1E6969080];
    v43 = MEMORY[0x1E6969078];
    *&v41 = v9;
    *(&v41 + 1) = v11;
    v14 = __swift_project_boxed_opaque_existential_1(&v41, MEMORY[0x1E6969080]);
    v15 = *v14;
    v16 = v14[1];
    outlined copy of Data._Representation(v6, v7);
    outlined copy of Data._Representation(v9, v11);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v15, v16);
    outlined consume of Data._Representation(v9, v11);
    __swift_destroy_boxed_opaque_existential_0(&v41);
    v17 = v44;
    v45 = v44;
    v42 = v12;
    v43 = v13;
    *&v41 = a1;
    *(&v41 + 1) = a2;
    v18 = __swift_project_boxed_opaque_existential_1(&v41, v12);
    v19 = *v18;
    v20 = v18[1];
    outlined copy of Data._Representation(v17, *(&v17 + 1));
    outlined copy of Data._Representation(a1, a2);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v19, v20);
    outlined consume of Data._Representation(v17, *(&v17 + 1));
    __swift_destroy_boxed_opaque_existential_0(&v41);
    v42 = v12;
    v43 = v13;
    v41 = v45;
    v21 = __swift_project_boxed_opaque_existential_1(&v41, v12);
    v22 = *v21;
    v23 = v21[1];
    v24 = v23 >> 62;
    if ((v23 >> 62) > 1)
    {
      if (v24 != 2)
      {
        memset(v40, 0, 14);
        v26 = v40;
        v25 = v40;
        goto LABEL_26;
      }

      v27 = *(v22 + 16);
      v28 = *(v22 + 24);
      v29 = __DataStorage._bytes.getter();
      if (v29)
      {
        v30 = __DataStorage._offset.getter();
        v22 = v27 - v30;
        if (__OFSUB__(v27, v30))
        {
          goto LABEL_29;
        }

        v29 += v22;
      }

      v31 = __OFSUB__(v28, v27);
      v32 = v28 - v27;
      if (!v31)
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    else if (!v24)
    {
      v40[0] = *v21;
      LOWORD(v40[1]) = v23;
      BYTE2(v40[1]) = BYTE2(v23);
      BYTE3(v40[1]) = BYTE3(v23);
      BYTE4(v40[1]) = BYTE4(v23);
      BYTE5(v40[1]) = BYTE5(v23);
      v25 = v40 + BYTE6(v23);
      v26 = v40;
LABEL_26:
      closure #1 in Data.init<A>(_:)(v26, v25, &v44);
      outlined consume of Data._Representation(a1, a2);
      a1 = v44;
      __swift_destroy_boxed_opaque_existential_0(&v41);
      return a1;
    }

    v33 = v22;
    v34 = v22 >> 32;
    v32 = v34 - v33;
    if (v34 >= v33)
    {
      v29 = __DataStorage._bytes.getter();
      if (!v29)
      {
LABEL_18:
        v36 = MEMORY[0x1DA6C8120]();
        if (v36 >= v32)
        {
          v37 = v32;
        }

        else
        {
          v37 = v36;
        }

        v38 = (v37 + v29);
        if (v29)
        {
          v25 = v38;
        }

        else
        {
          v25 = 0;
        }

        v26 = v29;
        goto LABEL_26;
      }

      v35 = __DataStorage._offset.getter();
      if (!__OFSUB__(v33, v35))
      {
        v29 += v33 - v35;
        goto LABEL_18;
      }

LABEL_30:
      __break(1u);
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  return a1;
}

uint64_t outlined init with copy of UnknownCanvasElement(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownCanvasElement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s10Foundation25NSFastEnumerationIteratorVACStAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

void _s8PaperKit26CanvasElementPDFAnnotationC06encodeaB0_7capsule3ref9writeHash0I4Typey9Coherence9CRContextC_AI7CapsuleVyxGSgAI15SharedTagged_10VyAA0pcD0VGSgSbSSSgtAI4CRDTRzlFySo19NSMutableDictionaryCcfU_AI10CRRegisterVyATG_Tg5TA_0(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGSgMd) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  v9 = *(v1 + v5);
  v10 = *(v1 + v8);
  v11 = v1 + (v8 & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);

  specialized closure #1 in CanvasElementPDFAnnotation.encodePaperKit<A>(_:capsule:ref:writeHash:writeType:)(a1, v1 + v4, v9, v1 + v7, v10, v12, v13);
}

uint64_t protocol witness for PaperRenderable.asyncHdrHeadroom(in:) in conformance Signature(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](protocol witness for PaperRenderable.asyncHdrHeadroom(in:) in conformance Signature, 0, 0);
}

uint64_t protocol witness for PaperRenderable.asyncHdrHeadroom(in:) in conformance Signature()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v1.n128_f64[0] = specialized Signature.hdrHeadroom(in:)();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t PaperRenderable.asyncHdrHeadroom(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](PaperRenderable.asyncHdrHeadroom(in:), 0, 0);
}

{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PaperRenderable.asyncHdrHeadroom(in:);

  return PaperRenderable.asyncHdrHeadroom(in:)(a1, a2, a3);
}

uint64_t PaperRenderable.asyncHdrHeadroom(in:)()
{
  (*(v0[4] + 48))(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t protocol witness for PaperRenderable.asyncHdrHeadroom(in:) in conformance TextBox(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a2;
  v4[5] = a3;
  v4[2] = a1;
  v4[3] = v3;
  return MEMORY[0x1EEE6DFA0](protocol witness for PaperRenderable.asyncHdrHeadroom(in:) in conformance TextBox, 0, 0);
}

uint64_t protocol witness for PaperRenderable.asyncHdrHeadroom(in:) in conformance TextBox()
{
  (*(v0[5] + 48))(v0[2], v0[4]);
  v1 = v0[1];

  return v1();
}

void *PaperRenderableOptions.tintColor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

double PaperRenderableOptions.init(useSixChannelBlending:darkMode:isRTL:)@<D0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = 0.0;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 1;
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 109) = 0u;
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = a3;
  return result;
}

uint64_t PaperRenderableOptions.init(useSixChannelBlending:darkMode:isRTL:isTopLevel:containerBounds:pdfPage:renderingLoupe:renderDebugDrawing:renderDebugUnknownElements:)@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, void *a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 105) = 0u;
  v13 = *(a5 + 16);
  *(a9 + 24) = *a5;
  *(a9 + 8) = 0;
  *(a9 + 123) = 0;
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 16) = a4;
  *(a9 + 40) = v13;
  *(a9 + 56) = *(a5 + 32);
  if (!a6)
  {
    goto LABEL_4;
  }

  type metadata accessor for PaperKitPDFPage(0);
  result = swift_dynamicCastClass();
  if (!result)
  {

LABEL_4:
    result = 0;
  }

  *(a9 + 64) = result;
  *(a9 + 72) = a7 & 1;
  *(a9 + 121) = a8 & 1;
  *(a9 + 122) = a10 & 1;
  return result;
}

uint64_t get_enum_tag_for_layout_string_8PaperKit0A10Renderable_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t getEnumTagSinglePayload for PaperRenderableOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 125))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for PaperRenderableOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 124) = 0;
    *(result + 120) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 125) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 125) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of PaperRenderable.render<A>(in:id:capsule:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 16) + **(a8 + 16));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of PaperRenderable.renderedImage(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PaperRenderable.renderedImage(in:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PaperRenderable.renderedImage(in:isHDRAllowed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = CanvasElementImageRenderer.image<A, B>(_:in:bounds:darkMode:isRTL:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PaperRenderable.asyncHdrHeadroom(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PaperRenderable.asyncHdrHeadroom(in:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PaperRenderable.asyncHdrHeadroom(in:)(double a1)
{
  v6 = *v1;

  v3 = *(v6 + 8);
  v4.n128_f64[0] = a1;

  return v3(v4);
}

uint64_t protocol witness for PaperRenderable.asyncHdrHeadroom(in:) in conformance Shape(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](protocol witness for PaperRenderable.asyncHdrHeadroom(in:) in conformance Shape, 0, 0);
}

uint64_t protocol witness for PaperRenderable.asyncHdrHeadroom(in:) in conformance Shape()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  specialized Shape.hdrHeadroom(in:)();
  v1 = *(v0 + 8);

  return v1();
}

void *specialized UIView.firstDescendent(where:)(void *a1)
{
  return specialized UIView.firstDescendent(where:)(a1, type metadata accessor for TiledTextView, specialized UIView.firstDescendent(where:));
}

{
  return specialized UIView.firstDescendent(where:)(a1, type metadata accessor for PaperDocumentView, specialized UIView.firstDescendent(where:));
}

void *specialized UIView.firstDescendent(where:)(void *a1, void (*a2)(void), uint64_t (*a3)(id))
{
  a2(0);
  if (swift_dynamicCastClass())
  {
    v6 = a1;
  }

  else
  {
    v8 = [a1 subviews];
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
LABEL_20:
      v10 = __CocoaSet.count.getter();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = 0;
    while (v10 != v11)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1DA6CE0C0](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      a1 = a3(v12);

      if (!v3)
      {
        ++v11;
        if (!a1)
        {
          continue;
        }
      }

      return a1;
    }

    return 0;
  }

  return a1;
}

void Array<A>.pasteboardPaperKitURL.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v68 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v64 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v64 - v8;
  v10 = type metadata accessor for URL();
  v72 = *(v10 - 8);
  v73 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v64 - v13;
  v14 = *(a1 + 16);
  v69 = a1;
  if (!v14)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  v15 = 0;
  v16 = a1 + 32;
  v74 = xmmword_1D405C100;
  v17 = MEMORY[0x1E69E7CC0];
  do
  {
    v18 = v15;
    while (1)
    {
      if (v18 >= v14)
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        return;
      }

      v15 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_51;
      }

      v20 = *(v16 + 8 * v18);
      if (!*(v20 + 16))
      {
        goto LABEL_5;
      }

      v21 = specialized __RawDictionaryStorage.find<A>(_:)(0x6C7070612E6D6F63, 0xEF72657061702E65);
      if (v22)
      {
        break;
      }

LABEL_5:
      v76 = v74;
      v19 = 0xF000000000000000;
LABEL_6:
      outlined consume of Data?(v76, v19);
      ++v18;
      if (v15 == v14)
      {
        goto LABEL_20;
      }
    }

    outlined init with copy of Any(*(v20 + 56) + 32 * v21, v75);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_5;
    }

    v19 = *(&v76 + 1);
    if (*(&v76 + 1) >> 60 == 15)
    {
      goto LABEL_6;
    }

    v65 = *(&v76 + 1);
    v23 = v76;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
    }

    v26 = *(v17 + 2);
    v25 = *(v17 + 3);
    v27 = v65;
    if (v26 >= v25 >> 1)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v17);
      v27 = v65;
      v17 = v29;
    }

    *(v17 + 2) = v26 + 1;
    v28 = &v17[16 * v26];
    *(v28 + 4) = v64;
    *(v28 + 5) = v27;
  }

  while (v15 != v14);
LABEL_20:
  if (!*(v17 + 2))
  {

    v31 = 0;
    v34 = v73;
    v67 = 0xF000000000000000;
    if (!v14)
    {
      goto LABEL_23;
    }

LABEL_28:
    v42 = 0;
    v43 = v69 + 32;
    v36 = MEMORY[0x1E69E7CC0];
    v74 = xmmword_1D405C100;
LABEL_29:
    v44 = v42;
    while (1)
    {
      if (v44 >= v14)
      {
        goto LABEL_52;
      }

      v42 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_53;
      }

      v46 = *(v43 + 8 * v44);
      if (!*(v46 + 16))
      {
        goto LABEL_31;
      }

      v47 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000017, 0x80000001D4081380);
      if ((v48 & 1) == 0)
      {
        break;
      }

      outlined init with copy of Any(*(v46 + 56) + 32 * v47, v75);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_31;
      }

      v45 = *(&v76 + 1);
      if (*(&v76 + 1) >> 60 != 15)
      {
        v49 = *(&v76 + 1);
        v69 = v76;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
        }

        v51 = *(v36 + 2);
        v50 = *(v36 + 3);
        if (v51 >= v50 >> 1)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v36);
          v52 = v49;
          v36 = v54;
        }

        else
        {
          v52 = v49;
        }

        *(v36 + 2) = v51 + 1;
        v53 = &v36[16 * v51];
        *(v53 + 4) = v69;
        *(v53 + 5) = v52;
        v34 = v73;
        if (v42 != v14)
        {
          goto LABEL_29;
        }

        goto LABEL_24;
      }

LABEL_32:
      outlined consume of Data?(v76, v45);
      ++v44;
      if (v42 == v14)
      {
        goto LABEL_24;
      }
    }

LABEL_31:
    v76 = v74;
    v45 = 0xF000000000000000;
    goto LABEL_32;
  }

  v31 = *(v17 + 4);
  v30 = *(v17 + 5);
  outlined copy of Data._Representation(v31, v30);

  v32 = v71;
  v33 = v72;
  v34 = v73;
  (*(v72 + 56))(v71, 1, 1, v73);
  outlined copy of Data._Representation(v31, v30);
  URL.init(dataRepresentation:relativeTo:isAbsolute:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s10Foundation3URLVSgMd);
  v35 = (*(v33 + 48))(v9, 1, v34);
  outlined consume of Data._Representation(v31, v30);
  if (v35 != 1)
  {
    v55 = v67;
    (*(v33 + 32))(v67, v9, v34);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_SS3utitMd);
    v57 = v70;
    v58 = (v70 + *(v56 + 48));
    (*(v33 + 16))(v70, v55, v34);
    outlined consume of Data._Representation(v31, v30);
    (*(v33 + 8))(v55, v34);
    *v58 = 0x6C7070612E6D6F63;
    v58[1] = 0xEF72657061702E65;
    (*(*(v56 - 8) + 56))(v57, 0, 1, v56);
    return;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s10Foundation3URLVSgMd);
  v67 = v30;
  if (v14)
  {
    goto LABEL_28;
  }

LABEL_23:
  v36 = MEMORY[0x1E69E7CC0];
LABEL_24:
  if (*(v36 + 2))
  {
    v37 = *(v36 + 4);
    v38 = *(v36 + 5);
    outlined copy of Data._Representation(v37, v38);

    v39 = v71;
    v40 = v72;
    (*(v72 + 56))(v71, 1, 1, v34);
    v41 = v68;
    URL.init(dataRepresentation:relativeTo:isAbsolute:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v39, &_s10Foundation3URLVSgMd);
    if ((*(v40 + 48))(v41, 1, v34) == 1)
    {
      outlined consume of Data?(v31, v67);
      outlined consume of Data._Representation(v37, v38);
      outlined destroy of StocksKitCurrencyCache.Provider?(v41, &_s10Foundation3URLVSgMd);
      goto LABEL_48;
    }

    v60 = v66;
    (*(v40 + 32))(v66, v41, v34);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_SS3utitMd);
    v62 = v70;
    v63 = (v70 + *(v61 + 48));
    (*(v40 + 16))(v70, v60, v34);
    outlined consume of Data._Representation(v37, v38);
    outlined consume of Data?(v31, v67);
    (*(v40 + 8))(v60, v34);
    *v63 = 0xD000000000000017;
    v63[1] = 0x80000001D4081380;
    (*(*(v61 - 8) + 56))(v62, 0, 1, v61);
  }

  else
  {

    outlined consume of Data?(v31, v67);
LABEL_48:
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_SS3utitMd);
    (*(*(v59 - 8) + 56))(v70, 1, 1, v59);
  }
}

void PrecisePanGestureRecognizer.touchesBegan(_:with:)(uint64_t a1, void *a2)
{
  v3 = v2;
  if ([v2 state])
  {
LABEL_27:
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UITouch);
    lazy protocol witness table accessor for type UITouch and conformance NSObject();
    isa = Set._bridgeToObjectiveC()().super.isa;
    v26.receiver = v3;
    v26.super_class = type metadata accessor for PrecisePanGestureRecognizer();
    objc_msgSendSuper2(&v26, sel_touchesBegan_withEvent_, isa, a2);

    return;
  }

  if (v2[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_isPrecise] != 1 || (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (v7 = Strong, v8 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x200))(), v7, (v8 & 1) == 0))
  {
LABEL_25:
    [objc_opt_self() _defaultHysteresis];
LABEL_26:
    [v3 _setHysteresis_];
    v21 = [a2 modifierFlags];
    *&v3[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_initialModifierFlags] = v21;
    *&v3[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_touchesBeganTimestamp] = CACurrentMediaTime();
    goto LABEL_27;
  }

  v24 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UITouch);
    lazy protocol witness table accessor for type UITouch and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    a1 = v27;
    v9 = v28;
    v10 = v29;
    v11 = v30;
    v12 = v31;
  }

  else
  {
    v13 = -1 << *(a1 + 32);
    v9 = a1 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(a1 + 56);

    v11 = 0;
  }

  v23 = v10;
  while (a1 < 0)
  {
    v18 = &selRef_pointyBitPoint;
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UITouch), swift_dynamicCast(), (v19 = v25) == 0))
    {
LABEL_24:
      outlined consume of Set<UIColor>.Iterator._Variant();
      a2 = v24;
      goto LABEL_25;
    }

LABEL_21:
    if ([v19 v18[389]] == 3)
    {
      outlined consume of Set<UIColor>.Iterator._Variant();

      goto LABEL_29;
    }

    v20 = [v19 v18[389]];

    if (v20 == 2)
    {
      outlined consume of Set<UIColor>.Iterator._Variant();
LABEL_29:
      a2 = v24;
      goto LABEL_26;
    }
  }

  v16 = v11;
  v17 = v12;
  v18 = &selRef_pointyBitPoint;
  if (v12)
  {
LABEL_17:
    v12 = (v17 - 1) & v17;
    v19 = *(*(a1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v19)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v11 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v11 >= ((v10 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v17 = *(v9 + 8 * v11);
    ++v16;
    if (v17)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

void PrecisePanGestureRecognizer.touchesMoved(_:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = CACurrentMediaTime();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v8 = Strong;
  v9 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x200))();

  if ((v9 & 1) != 0 || [v3 state] || v6 - *&v3[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_touchesBeganTimestamp] >= *&v3[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_tapAndHoldTimeout])
  {
    goto LABEL_11;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() != 1)
    {
      goto LABEL_11;
    }
  }

  else if (*(a1 + 16) != 1)
  {
LABEL_11:
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UITouch);
    lazy protocol witness table accessor for type UITouch and conformance NSObject();
    isa = Set._bridgeToObjectiveC()().super.isa;
    v14.receiver = v3;
    v14.super_class = type metadata accessor for PrecisePanGestureRecognizer();
    objc_msgSendSuper2(&v14, sel_touchesMoved_withEvent_, isa, a2);

    return;
  }

  v10 = specialized Collection.first.getter(a1);
  if (v10)
  {
    v11 = v10;
    v12 = [v10 type];

    if (v12 == 3)
    {
      goto LABEL_11;
    }

    [v3 setState_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t @objc PrecisePanGestureRecognizer.touchesBegan(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, id))
{
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UITouch);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8, v9);
}

id PrecisePanGestureRecognizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PrecisePanGestureRecognizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

UIFont_optional __swiftcall UIFont.applyingWeight(_:)(UIFontWeight a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo24UIFontDescriptorTraitKeya_So0D6WeightatGMd);
  inited = swift_initStackObject();
  v4 = MEMORY[0x1E69DB990];
  *(inited + 16) = xmmword_1D4058CF0;
  v5 = *v4;
  *(inited + 32) = v5;
  *(inited + 40) = a1;
  v6 = v5;
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_So0C6WeightaTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSo24UIFontDescriptorTraitKeya_So0A6WeightatMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_SDySo0dE8TraitKeyaSo0D6WeightaGtGMd);
  v8 = swift_initStackObject();
  v9 = MEMORY[0x1E69DB8F0];
  *(v8 + 16) = xmmword_1D4058CF0;
  v10 = *v9;
  *(v8 + 32) = v10;
  *(v8 + 40) = v7;
  v11 = v10;
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_SDySo0cD8TraitKeyaSo0C6WeightaGTt0g5Tf4g_n(v8);
  swift_setDeallocating();
  outlined destroy of StocksKitCurrencyCache.Provider?(v8 + 32, &_sSo29UIFontDescriptorAttributeNamea_SDySo0aB8TraitKeyaSo0A6WeightaGtMd);
  v13 = [v1 fontDescriptor];
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v12);

  type metadata accessor for UIFontDescriptorAttributeName(0);
  lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = [v13 fontDescriptorByAddingAttributes_];

  v16 = [v1 fontDescriptor];
  [v16 pointSize];
  v18 = v17;

  v19 = [objc_opt_self() fontWithDescriptor:v15 size:v18];
  v21 = v19;
  result.value.super.isa = v21;
  result.is_nil = v20;
  return result;
}

unint64_t lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName()
{
  result = lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName;
  if (!lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName)
  {
    type metadata accessor for UIFontDescriptorAttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName);
  }

  return result;
}

uint64_t Paper.drawing.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
}

double Paper.bounds.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t Paper.frame.setter()
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t Paper.render<A>(in:id:capsule:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[22] = a6;
  v7[23] = v6;
  v7[20] = a4;
  v7[21] = a5;
  v7[18] = a1;
  v7[19] = a3;
  return MEMORY[0x1EEE6DFA0](Paper.render<A>(in:id:capsule:options:), 0, 0);
}

uint64_t Paper.render<A>(in:id:capsule:options:)()
{
  v1 = *(v0 + 160);
  CGContextSaveGState(*(v0 + 144));
  if ((*(v1 + 72) & 1) == 0)
  {
    v2 = *(v0 + 144);
    type metadata accessor for Paper(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
    CRRegister.wrappedValue.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
    CRRegister.wrappedValue.getter();
    CGImagePropertyOrientation.originAlignedTransform(_:)((v0 + 16), *(v0 + 112));
    *(v0 + 64) = *(v0 + 16);
    v3 = *(v0 + 48);
    *(v0 + 80) = *(v0 + 32);
    *(v0 + 96) = v3;
    CGContextConcatCTM(v2, (v0 + 64));
  }

  v4 = swift_task_alloc();
  *(v0 + 192) = v4;
  v5 = type metadata accessor for Paper(0);
  *v4 = v0;
  v4[1] = Paper.render<A>(in:id:capsule:options:);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v8 = *(v0 + 168);
  v9 = *(v0 + 144);
  v10 = *(v0 + 152);

  return ContainerCanvasElement.renderSubelements<A>(in:capsule:options:)(v9, v10, v7, v5, v8, &protocol witness table for Paper, v6);
}

{

  return MEMORY[0x1EEE6DFA0](Paper.render<A>(in:id:capsule:options:), 0, 0);
}

{
  CGContextRestoreGState(*(v0 + 144));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Paper.init()()
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v15);
  v1 = &v14 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  type metadata accessor for CGRect(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_8(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v16 = 0u;
  v17 = 0u;
  CRRegister.init(wrappedValue:)();
  type metadata accessor for Paper(0);
  v16 = 0u;
  v17 = 0u;
  CRRegister.init(wrappedValue:)();
  *&v16 = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(wrappedValue:)();
  LODWORD(v16) = 1;
  type metadata accessor for CGImagePropertyOrientation(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_8(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation);
  CRRegister.init(wrappedValue:)();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  outlined init with copy of Date?(v10, v7, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  v12 = type metadata accessor for Color(0);
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  outlined init with copy of Date?(v4, v1, &_s8PaperKit5ColorVSgMd);
  lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s8PaperKit5ColorVSgMd);
  *&v16 = 0;
  *(&v16 + 1) = 0xE000000000000000;
  CRRegister.init(wrappedValue:)();
  *&v16 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  CROrderedSet.init()();
  return UnknownProperties.init()();
}

uint64_t Paper.$bounds.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);

  return CRRegister.projectedValue.getter();
}

uint64_t Paper.$bounds.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

double Paper.frame.getter()
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t Paper.$frame.getter()
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t Paper.$frame.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Paper(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Paper.bounds.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t key path setter for Paper.$bounds : Paper(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

void (*Paper.$bounds.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$inherited.modify;
}

uint64_t (*Paper.frame.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t key path getter for Paper.$frame : Paper()
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Paper.$frame : Paper(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Paper(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t (*Paper.$frame.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Paper(0) + 20);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

double Paper.rotation.getter()
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

double key path getter for Paper.rotation : Paper@<D0>(double *a1@<X8>)
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t key path setter for Paper.rotation : Paper()
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t Paper.rotation.setter()
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*Paper.rotation.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t Paper.$rotation.getter()
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for Paper.$rotation : Paper()
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Paper.$rotation : Paper(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Paper(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Paper.$rotation.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Paper(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Paper.$rotation.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Paper(0) + 24);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t Paper.orientation.getter()
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t key path getter for Paper.orientation : Paper@<X0>(_DWORD *a1@<X8>)
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  result = CRRegister.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for Paper.orientation : Paper()
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t Paper.orientation.setter()
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*Paper.orientation.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeStruct.properties.modify;
}

uint64_t Paper.$orientation.getter()
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for Paper.$orientation : Paper()
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Paper.$orientation : Paper(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Paper(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Paper.$orientation.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Paper(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Paper.$orientation.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Paper(0) + 28);
  CRRegister.projectedValue.getter();
  return PKStrokeStruct.$properties.modify;
}

uint64_t (*Paper.drawing.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t Paper.drawing.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for Paper(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  return a1(v2);
}

uint64_t key path getter for Paper.$drawing : Paper()
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Paper.$drawing : Paper(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Paper(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Paper.$drawing.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Paper(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Paper.$drawing.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Paper(0) + 32);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t key path setter for Paper.backgroundColor : Paper(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s8PaperKit5ColorVSgMd);
  outlined init with copy of Date?(v7, v4, &_s8PaperKit5ColorVSgMd);
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit5ColorVSgMd);
}

uint64_t Paper.backgroundColor.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s8PaperKit5ColorVSgMd);
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s8PaperKit5ColorVSgMd);
}

uint64_t (*Paper.backgroundColor.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t Paper.backgroundColor.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for Paper(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  return a1(v2);
}

uint64_t key path getter for Paper.backgroundColor : Paper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for Paper(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  return a4(v5);
}

uint64_t key path setter for Paper.$backgroundColor : Paper(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Paper(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Paper.$backgroundColor.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Paper(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Paper.$backgroundColor.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Paper(0) + 36);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t Paper.name.getter()
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t key path getter for Paper.name : Paper@<X0>(void *a1@<X8>)
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  result = CRRegister.wrappedValue.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t key path setter for Paper.name : Paper()
{
  type metadata accessor for Paper(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t Paper.name.setter()
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*Paper.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t Paper.$name.getter()
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for Paper.$name : Paper()
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Paper.$name : Paper(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Paper(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Paper.$name.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Paper(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Paper.$name.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Paper(0) + 40);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t Paper.flags.getter()
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  return CRRegister.wrappedValue.getter();
}

uint64_t key path getter for Paper.flags : Paper@<X0>(void *a1@<X8>)
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  result = CRRegister.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for Paper.flags : Paper()
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t Paper.flags.setter()
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*Paper.flags.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t Paper.$flags.getter()
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for Paper.$flags : Paper()
{
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Paper.$flags : Paper(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Paper(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Paper.$flags.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Paper(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Paper.$flags.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Paper(0) + 44);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t Paper.subelements.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Paper(0) + 48);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Paper.subelements.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Paper(0) + 48);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Paper.init(frame:)(double a1, double a2, double a3, double a4)
{
  v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v22[0]);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v22 - v17;
  type metadata accessor for CGRect(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_8(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v23 = 0u;
  v24 = 0u;
  CRRegister.init(wrappedValue:)();
  v22[1] = *(type metadata accessor for Paper(0) + 20);
  v23 = 0u;
  v24 = 0u;
  CRRegister.init(wrappedValue:)();
  *&v23 = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(wrappedValue:)();
  LODWORD(v23) = 1;
  type metadata accessor for CGImagePropertyOrientation(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_8(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation);
  CRRegister.init(wrappedValue:)();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  outlined init with copy of Date?(v18, v15, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  v20 = type metadata accessor for Color(0);
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  outlined init with copy of Date?(v12, v9, &_s8PaperKit5ColorVSgMd);
  lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s8PaperKit5ColorVSgMd);
  *&v23 = 0;
  *(&v23 + 1) = 0xE000000000000000;
  CRRegister.init(wrappedValue:)();
  *&v23 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  CROrderedSet.init()();
  UnknownProperties.init()();
  *&v23 = a1;
  *(&v23 + 1) = a2;
  *&v24 = a3;
  *(&v24 + 1) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.setter();
  v23 = 0uLL;
  *&v24 = a3;
  *(&v24 + 1) = a4;
  return CRRegister.wrappedValue.setter();
}

BOOL Paper.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd);
  v191 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v151 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v171 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v184 = &v151 - v10;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v190 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v163 = &v151 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v170 = &v151 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v182 = &v151 - v15;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v189 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v162 = &v151 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v169 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v180 = &v151 - v20;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v188 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v161 = &v151 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v168 = &v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v178 = &v151 - v25;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v187 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v160 = &v151 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v167 = &v151 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v176 = &v151 - v30;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v186 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v159 = &v151 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v166 = &v151 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v174 = &v151 - v35;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v185 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v158 = &v151 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v165 = &v151 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v172 = &v151 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v157 = &v151 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v156 = &v151 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v164 = &v151 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v151 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v151 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v151 - v55;
  v192 = type metadata accessor for Paper.Partial(0);
  MEMORY[0x1EEE9AC00](v192);
  v58 = &v151 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Paper.Partial(v2, v58, type metadata accessor for Paper.Partial);
  v193 = a1;
  v59 = Paper.Partial.canMerge(delta:)(a1);
  outlined destroy of Paper.Partial(v58, type metadata accessor for Paper.Partial);
  if (!v59)
  {
    return v59;
  }

  v154 = v59;
  v152 = v6;
  v155 = v4;
  v60 = v2;
  outlined init with copy of Date?(v2, v56, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v153 = v42;
  v61 = *(v42 + 48);
  v62 = v61(v56, 1, v41);
  outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v62 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v193, v60, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    outlined init with copy of Date?(v193, v53, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    if (v61(v53, 1, v41) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v53, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v63 = v153;
      v64 = v156;
      (*(v153 + 32))(v156, v53, v41);
      if (!v61(v60, 1, v41))
      {
        CRRegister.merge(delta:)();
      }

      (*(v63 + 8))(v64, v41);
    }
  }

  v65 = v192;
  v66 = v192[5];
  outlined init with copy of Date?(v60 + v66, v50, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v67 = v61(v50, 1, v41);
  outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v68 = v65[5];
  if (v67 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v193 + v68, v60 + v66, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    v69 = v164;
    outlined init with copy of Date?(v193 + v68, v164, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    if (v61(v69, 1, v41) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v69, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v70 = v153;
      v71 = v157;
      (*(v153 + 32))(v157, v69, v41);
      if (!v61((v60 + v66), 1, v41))
      {
        CRRegister.merge(delta:)();
      }

      (*(v70 + 8))(v71, v41);
    }
  }

  v72 = v173;
  v73 = v192;
  v74 = v192[6];
  v75 = v172;
  outlined init with copy of Date?(v60 + v74, v172, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v76 = *(v185 + 48);
  v77 = v76(v75, 1, v72);
  outlined destroy of StocksKitCurrencyCache.Provider?(v75, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v78 = v73[6];
  v79 = v175;
  if (v77 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v193 + v78, v60 + v74, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    v80 = v165;
    outlined init with copy of Date?(v193 + v78, v165, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    if (v76(v80, 1, v72) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v80, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v81 = v185;
      v82 = v158;
      (*(v185 + 32))(v158, v80, v72);
      if (!v76(v60 + v74, 1, v72))
      {
        CRRegister.merge(delta:)();
      }

      (*(v81 + 8))(v82, v72);
    }
  }

  v83 = v192;
  v84 = v192[7];
  v85 = v174;
  outlined init with copy of Date?(v60 + v84, v174, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  v86 = *(v186 + 48);
  v87 = v86(v85, 1, v79);
  outlined destroy of StocksKitCurrencyCache.Provider?(v85, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  v88 = v83[7];
  if (v87 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v193 + v88, v60 + v84, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
    v89 = v177;
  }

  else
  {
    v90 = v166;
    outlined init with copy of Date?(v193 + v88, v166, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
    v91 = v86(v90, 1, v79);
    v89 = v177;
    if (v91 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v92 = v186;
      v93 = v159;
      (*(v186 + 32))(v159, v90, v79);
      if (!v86(v60 + v84, 1, v79))
      {
        CRRegister.merge(delta:)();
      }

      (*(v92 + 8))(v93, v79);
    }
  }

  v94 = v187;
  v95 = v192;
  v96 = v192[8];
  v97 = v176;
  outlined init with copy of Date?(v60 + v96, v176, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  v98 = *(v94 + 48);
  v99 = v98(v97, 1, v89);
  outlined destroy of StocksKitCurrencyCache.Provider?(v97, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  v100 = v95[8];
  if (v99 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v193 + v100, v60 + v96, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  }

  else
  {
    v101 = v167;
    outlined init with copy of Date?(v193 + v100, v167, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
    if (v98(v101, 1, v89) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v101, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
    }

    else
    {
      v102 = v187;
      v103 = v160;
      (*(v187 + 32))(v160, v101, v89);
      if (!v98(v60 + v96, 1, v89))
      {
        CRRegister.merge(delta:)();
      }

      (*(v102 + 8))(v103, v89);
    }
  }

  v104 = v192;
  v105 = v192[9];
  v106 = v178;
  outlined init with copy of Date?(v60 + v105, v178, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  v107 = *(v188 + 48);
  v108 = v179;
  v109 = v107(v106, 1, v179);
  outlined destroy of StocksKitCurrencyCache.Provider?(v106, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  v110 = v104[9];
  if (v109 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v193 + v110, v60 + v105, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    v111 = v181;
  }

  else
  {
    v112 = v168;
    outlined init with copy of Date?(v193 + v110, v168, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    if (v107(v112, 1, v108) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v112, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
      v111 = v181;
    }

    else
    {
      v113 = v108;
      v114 = v188;
      v115 = v161;
      (*(v188 + 32))(v161, v112, v108);
      v116 = v107(v60 + v105, 1, v108);
      v111 = v181;
      if (!v116)
      {
        CRRegister.merge(delta:)();
      }

      (*(v114 + 8))(v115, v113);
    }
  }

  v117 = v192;
  v118 = v192[10];
  v119 = v180;
  outlined init with copy of Date?(v60 + v118, v180, &_s9Coherence10CRRegisterVySSGSgMd);
  v120 = *(v189 + 48);
  v121 = v120(v119, 1, v111);
  outlined destroy of StocksKitCurrencyCache.Provider?(v119, &_s9Coherence10CRRegisterVySSGSgMd);
  v122 = v117[10];
  if (v121 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v193 + v122, v60 + v118, &_s9Coherence10CRRegisterVySSGSgMd);
  }

  else
  {
    v123 = v169;
    outlined init with copy of Date?(v193 + v122, v169, &_s9Coherence10CRRegisterVySSGSgMd);
    if (v120(v123, 1, v111) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v123, &_s9Coherence10CRRegisterVySSGSgMd);
    }

    else
    {
      v124 = v189;
      v125 = v162;
      (*(v189 + 32))(v162, v123, v111);
      if (!v120(v60 + v118, 1, v111))
      {
        CRRegister.merge(delta:)();
      }

      (*(v124 + 8))(v125, v111);
    }
  }

  v126 = v192;
  v127 = v192[11];
  v128 = v182;
  outlined init with copy of Date?(v60 + v127, v182, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  v129 = *(v190 + 48);
  v130 = v183;
  v131 = v129(v128, 1, v183);
  outlined destroy of StocksKitCurrencyCache.Provider?(v128, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  v132 = v126[11];
  if (v131 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v193 + v132, v60 + v127, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  }

  else
  {
    v133 = v170;
    outlined init with copy of Date?(v193 + v132, v170, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
    if (v129(v133, 1, v130) != 1)
    {
      v136 = v130;
      v137 = v190;
      v138 = v163;
      (*(v190 + 32))(v163, v133, v130);
      v139 = v129(v60 + v127, 1, v130);
      v135 = v155;
      if (!v139)
      {
        CRRegister.merge(delta:)();
      }

      (*(v137 + 8))(v138, v136);
      v134 = v191;
      goto LABEL_59;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v133, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  }

  v134 = v191;
  v135 = v155;
LABEL_59:
  v140 = v192;
  v141 = v192[12];
  v142 = v184;
  outlined init with copy of Date?(v60 + v141, v184, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  v143 = *(v134 + 48);
  v144 = v143(v142, 1, v135);
  outlined destroy of StocksKitCurrencyCache.Provider?(v142, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  v145 = v140[12];
  if (v144 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v193 + v145, v60 + v141, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
    LOBYTE(v59) = v154;
  }

  else
  {
    v146 = v171;
    outlined init with copy of Date?(v193 + v145, v171, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
    v147 = v143(v146, 1, v135);
    LOBYTE(v59) = v154;
    if (v147 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v146, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
    }

    else
    {
      v148 = v191;
      v149 = v152;
      (*(v191 + 32))(v152, v146, v135);
      if (!v143(v60 + v141, 1, v135))
      {
        CROrderedSet.MergeableDelta.merge(delta:)();
      }

      (*(v148 + 8))(v149, v135);
    }
  }

  return v59;
}

BOOL Paper.Partial.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v160 = &v133[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v146 = &v133[-v5];
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd);
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v135 = &v133[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v137 = &v133[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v151 = &v133[-v10];
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v162 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v136 = &v133[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v139 = &v133[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v163 = &v133[-v15];
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v164 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v138 = &v133[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v141 = &v133[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v156 = &v133[-v20];
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v171 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v140 = &v133[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v143 = &v133[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v170 = &v133[-v25];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v158 = *(v26 - 8);
  v159 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v142 = &v133[-v27];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v145 = &v133[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v168 = &v133[-v31];
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v161 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v144 = &v133[-v32];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v150 = &v133[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v35);
  v165 = &v133[-v36];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v166 = *(v37 - 8);
  v167 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v149 = &v133[-v38];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v154 = &v133[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v133[-v42];
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v133[-v45];
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v133[-v48];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v51 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v153 = &v133[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v133[-v54];
  outlined init with copy of Date?(a1, v49, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v56 = *(v51 + 48);
  if (v56(v49, 1, v50) == 1)
  {
    v46 = v49;
LABEL_5:
    outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    goto LABEL_6;
  }

  (*(v51 + 32))(v55, v49, v50);
  outlined init with copy of Date?(v172, v46, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v56(v46, 1, v50) == 1)
  {
    (*(v51 + 8))(v55, v50);
    goto LABEL_5;
  }

  v134 = CRRegister.canMerge(delta:)();
  v103 = *(v51 + 8);
  v103(v55, v50);
  v103(v46, v50);
  if ((v134 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v57 = type metadata accessor for Paper.Partial(0);
  outlined init with copy of Date?(a1 + v57[5], v43, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v56(v43, 1, v50) == 1)
  {
    v58 = v43;
LABEL_10:
    v61 = v168;
    v60 = v169;
    outlined destroy of StocksKitCurrencyCache.Provider?(v58, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v62 = v170;
    v64 = v166;
    v63 = v167;
    v65 = v165;
    goto LABEL_11;
  }

  v59 = v153;
  (*(v51 + 32))(v153, v43, v50);
  v58 = v154;
  outlined init with copy of Date?(v172 + v57[5], v154, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v56(v58, 1, v50) == 1)
  {
    (*(v51 + 8))(v59, v50);
    goto LABEL_10;
  }

  v104 = v59;
  v105 = v58;
  v106 = CRRegister.canMerge(delta:)();
  v107 = *(v51 + 8);
  v107(v104, v50);
  v107(v105, v50);
  v60 = v169;
  v62 = v170;
  v63 = v167;
  v61 = v168;
  v65 = v165;
  v64 = v166;
  if ((v106 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  outlined init with copy of Date?(a1 + v57[6], v65, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v66 = *(v64 + 48);
  if (v66(v65, 1, v63) == 1)
  {
    v67 = v65;
LABEL_15:
    outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v71 = v161;
    goto LABEL_16;
  }

  v170 = a1;
  v68 = v65;
  v69 = v149;
  (*(v64 + 32))(v149, v68, v63);
  v70 = v150;
  outlined init with copy of Date?(v172 + v57[6], v150, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  if (v66(v70, 1, v63) == 1)
  {
    (*(v64 + 8))(v69, v63);
    v67 = v70;
    a1 = v170;
    goto LABEL_15;
  }

  v114 = CRRegister.canMerge(delta:)();
  v115 = *(v64 + 8);
  v115(v69, v63);
  v115(v70, v63);
  a1 = v170;
  v71 = v161;
  if ((v114 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  outlined init with copy of Date?(a1 + v57[7], v61, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  v72 = *(v71 + 48);
  if (v72(v61, 1, v60) == 1)
  {
    v73 = v61;
LABEL_20:
    outlined destroy of StocksKitCurrencyCache.Provider?(v73, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
    v78 = v171;
    v80 = v158;
    v79 = v159;
    goto LABEL_21;
  }

  v74 = v144;
  (*(v71 + 32))(v144, v61, v60);
  v75 = v74;
  v76 = v60;
  v77 = v145;
  outlined init with copy of Date?(v172 + v57[7], v145, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v72(v77, 1, v76) == 1)
  {
    (*(v71 + 8))(v75, v76);
    v73 = v77;
    goto LABEL_20;
  }

  v120 = CRRegister.canMerge(delta:)();
  v121 = *(v71 + 8);
  v121(v75, v76);
  v121(v77, v76);
  v78 = v171;
  v80 = v158;
  v79 = v159;
  if ((v120 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  outlined init with copy of Date?(a1 + v57[8], v62, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  v81 = *(v80 + 48);
  if (v81(v62, 1, v79) == 1)
  {
    v82 = v62;
    v83 = v163;
    v84 = v164;
    v85 = v157;
LABEL_25:
    outlined destroy of StocksKitCurrencyCache.Provider?(v82, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
    v88 = v162;
    goto LABEL_26;
  }

  v86 = v142;
  (*(v80 + 32))(v142, v62, v79);
  v87 = v143;
  outlined init with copy of Date?(v172 + v57[8], v143, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  if (v81(v87, 1, v79) == 1)
  {
    (*(v80 + 8))(v86, v79);
    v82 = v87;
    v83 = v163;
    v84 = v164;
    v85 = v157;
    v78 = v171;
    goto LABEL_25;
  }

  v122 = CRRegister.canMerge(delta:)();
  v123 = *(v80 + 8);
  v123(v86, v79);
  v123(v87, v79);
  v88 = v162;
  v83 = v163;
  v84 = v164;
  v85 = v157;
  v78 = v171;
  if ((v122 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v89 = v156;
  outlined init with copy of Date?(a1 + v57[9], v156, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  v90 = *(v78 + 48);
  if (v90(v89, 1, v85) == 1)
  {
    v91 = v89;
LABEL_30:
    outlined destroy of StocksKitCurrencyCache.Provider?(v91, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    goto LABEL_31;
  }

  v92 = v140;
  (*(v78 + 32))(v140, v89, v85);
  v93 = v85;
  v94 = v78;
  v95 = v141;
  outlined init with copy of Date?(v172 + v57[9], v141, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  if (v90(v95, 1, v93) == 1)
  {
    (*(v94 + 8))(v92, v93);
    v91 = v95;
    v83 = v163;
    v84 = v164;
    goto LABEL_30;
  }

  v124 = CRRegister.canMerge(delta:)();
  v125 = *(v94 + 8);
  v125(v92, v93);
  v125(v95, v93);
  v83 = v163;
  v84 = v164;
  if ((v124 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  outlined init with copy of Date?(a1 + v57[10], v83, &_s9Coherence10CRRegisterVySSGSgMd);
  v96 = *(v84 + 48);
  v97 = v155;
  if (v96(v83, 1, v155) == 1)
  {
LABEL_34:
    outlined destroy of StocksKitCurrencyCache.Provider?(v83, &_s9Coherence10CRRegisterVySSGSgMd);
    goto LABEL_35;
  }

  v98 = v138;
  (*(v84 + 32))(v138, v83, v97);
  v83 = v139;
  outlined init with copy of Date?(v172 + v57[10], v139, &_s9Coherence10CRRegisterVySSGSgMd);
  if (v96(v83, 1, v97) == 1)
  {
    (*(v84 + 8))(v98, v97);
    v88 = v162;
    goto LABEL_34;
  }

  v126 = CRRegister.canMerge(delta:)();
  v127 = *(v84 + 8);
  v127(v98, v97);
  v127(v83, v97);
  v88 = v162;
  if ((v126 & 1) == 0)
  {
    return 0;
  }

LABEL_35:
  v99 = v151;
  outlined init with copy of Date?(a1 + v57[11], v151, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  v100 = *(v88 + 48);
  v101 = v152;
  if (v100(v99, 1, v152) == 1)
  {
    v102 = v99;
  }

  else
  {
    v108 = v136;
    (*(v88 + 32))(v136, v99, v101);
    v109 = v137;
    outlined init with copy of Date?(v172 + v57[11], v137, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
    if (v100(v109, 1, v101) != 1)
    {
      v128 = CRRegister.canMerge(delta:)();
      v129 = *(v88 + 8);
      v129(v108, v101);
      v129(v109, v101);
      if ((v128 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_44;
    }

    (*(v88 + 8))(v108, v101);
    v102 = v109;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v102, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
LABEL_44:
  v110 = v146;
  outlined init with copy of Date?(a1 + v57[12], v146, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  v111 = v147;
  v112 = *(v147 + 48);
  v113 = v148;
  if (v112(v110, 1, v148) == 1)
  {
    v160 = v110;
LABEL_50:
    outlined destroy of StocksKitCurrencyCache.Provider?(v160, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
    return 1;
  }

  v116 = v135;
  (*(v111 + 32))(v135, v110, v113);
  v117 = v172 + v57[12];
  v118 = v160;
  outlined init with copy of Date?(v117, v160, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  if (v112(v118, 1, v113) == 1)
  {
    (*(v111 + 8))(v116, v113);
    goto LABEL_50;
  }

  v130 = v160;
  v131 = CROrderedSet.MergeableDelta.canMerge(delta:)();
  v132 = *(v111 + 8);
  v132(v116, v113);
  v132(v130, v113);
  return (v131 & 1) != 0;
}

uint64_t Paper.Partial.visitReferences(_:)(uint64_t a1)
{
  v2 = v1;
  v51[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v56 = v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v55 = v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v54 = v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v53 = v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v52 = v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v51 - v22;
  outlined init with copy of Date?(v2, v51 - v22, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v23, 1, v24) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v25 + 8))(v23, v24);
  }

  v27 = type metadata accessor for Paper.Partial(0);
  outlined init with copy of Date?(v2 + v27[5], v20, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v26(v20, 1, v24) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v25 + 8))(v20, v24);
  }

  v28 = v55;
  v29 = v2;
  outlined init with copy of Date?(v2 + v27[6], v17, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v31 = *(v30 - 8);
  v32 = (*(v31 + 48))(v17, 1, v30);
  v33 = v57;
  if (v32 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v31 + 8))(v17, v30);
  }

  v34 = v56;
  v35 = v54;
  v36 = v52;
  outlined init with copy of Date?(v29 + v27[7], v52, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v36, 1, v37) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v38 + 8))(v36, v37);
  }

  v39 = v53;
  outlined init with copy of Date?(v29 + v27[8], v53, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v39, 1, v40) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v39, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v41 + 8))(v39, v40);
  }

  outlined init with copy of Date?(v29 + v27[9], v35, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v35, 1, v42) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v43 + 8))(v35, v42);
  }

  outlined init with copy of Date?(v29 + v27[10], v28, &_s9Coherence10CRRegisterVySSGSgMd);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v28, 1, v44) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_s9Coherence10CRRegisterVySSGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v45 + 8))(v28, v44);
  }

  outlined init with copy of Date?(v29 + v27[11], v34, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v34, 1, v46) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v47 + 8))(v34, v46);
  }

  outlined init with copy of Date?(v29 + v27[12], v33, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd);
  v49 = *(v48 - 8);
  if ((*(v49 + 48))(v33, 1, v48) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  }

  CROrderedSet.MergeableDelta.visitReferences(_:)();
  return (*(v49 + 8))(v33, v48);
}

uint64_t Paper.Partial.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v89 = &v82 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v112 = &v82 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v96 = &v82 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v113 = &v82 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v114 = &v82 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v110 = &v82 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v122 = &v82 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v121 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v119 = &v82 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v24 = v22 + 56;
  v23(a2, 1, 1, v21);
  v25 = type metadata accessor for Paper.Partial(0);
  v111 = v25[5];
  v116 = v23;
  v117 = v21;
  v115 = v24;
  v23(a2 + v111, 1, 1, v21);
  v26 = v25[6];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v28 = *(v27 - 8);
  v108 = *(v28 + 56);
  v109 = v26;
  v118 = v27;
  v107 = v28 + 56;
  v108(a2 + v26, 1, 1);
  v29 = v25[7];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v105 = v30;
  v106 = v29;
  v104 = v32;
  v103 = v31 + 56;
  (v32)(a2 + v29, 1, 1);
  v33 = v25[8];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v100 = v33;
  v99 = v34;
  v98 = v36;
  v97 = v35 + 56;
  (v36)(a2 + v33, 1, 1);
  v37 = v25[9];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v120 = v37;
  v95 = v38;
  v94 = v40;
  v93 = v39 + 56;
  (v40)(a2 + v37, 1, 1);
  v41 = v25[10];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v43 = *(v42 - 8);
  v44 = *(v43 + 56);
  v92 = v41;
  v91 = v44;
  v90 = v43 + 56;
  v44(a2 + v41, 1, 1, v42);
  v45 = v25[11];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v47 = *(v46 - 8);
  v48 = *(v47 + 56);
  v49 = v47 + 56;
  v102 = v45;
  v101 = v48;
  v48(a2 + v45, 1, 1, v46);
  v50 = v25[12];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd);
  v52 = *(v51 - 8);
  v53 = *(v52 + 56);
  v54 = v52 + 56;
  v124 = a2;
  v53(a2 + v50, 1, 1, v51);
  v55 = v123;
  v56 = dispatch thunk of CRDecoder.keyedContainer()();
  v123 = v55;
  if (v55)
  {

LABEL_3:
    v57 = v124;
    return outlined destroy of Paper.Partial(v57, type metadata accessor for Paper.Partial);
  }

  v58 = v56;
  v59 = v121;
  v86 = v42;
  v87 = v49;
  v82 = v54;
  v83 = v53;
  v84 = v51;
  v85 = v50;
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    v88 = v58;
    type metadata accessor for CGRect(0);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_8(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
    v60 = v119;
    v61 = v123;
    CRRegister.init(from:)();
    v62 = v61;
    v57 = v124;
    v63 = v122;
    if (v61)
    {
      goto LABEL_17;
    }

    v64 = v59;
    v116(v60, 0, 1, v117);
    outlined assign with take of UUID?(v60, v57, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    v62 = v123;
    v57 = v124;
    v63 = v122;
    v64 = v59;
  }

  v65 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v66 = v120;
  v67 = v118;
  if (v65)
  {
    type metadata accessor for CGRect(0);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_8(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
    CRRegister.init(from:)();
    if (v62)
    {
      goto LABEL_17;
    }

    v116(v64, 0, 1, v117);
    outlined assign with take of UUID?(v64, v57 + v111, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v63 = v122;
  }

  v68 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v69 = v114;
  if (!v68)
  {
    goto LABEL_15;
  }

  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(from:)();
  if (v62)
  {
LABEL_17:

    return outlined destroy of Paper.Partial(v57, type metadata accessor for Paper.Partial);
  }

  (v108)(v63, 0, 1, v67);
  outlined assign with take of UUID?(v63, v57 + v109, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
LABEL_15:
  v70 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v71 = v113;
  if (v70)
  {
    type metadata accessor for CGImagePropertyOrientation(0);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_8(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation);
    v72 = v110;
    CRRegister.init(from:)();
    if (v62)
    {
      goto LABEL_17;
    }

    v104(v72, 0, 1, v105);
    outlined assign with take of UUID?(v72, v57 + v106, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
    v66 = v120;
  }

  v74 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v75 = v112;
  if (v74)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
    CRRegister.init(from:)();
    if (v62)
    {
      goto LABEL_32;
    }

    v98(v69, 0, 1, v99);
    outlined assign with take of UUID?(v69, v124 + v100, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  }

  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
    lazy protocol witness table accessor for type Color? and conformance <A> A?();
    CRRegister.init(from:)();
    if (v62)
    {
      goto LABEL_32;
    }

    v94(v71, 0, 1, v95);
    outlined assign with take of UUID?(v71, v124 + v66, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    v75 = v112;
  }

  v76 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v77 = v102;
  v78 = v46;
  if (v76)
  {
    v79 = v96;
    CRRegister.init(from:)();
    v80 = v101;
    if (!v62)
    {
      v91(v79, 0, 1, v86);
      outlined assign with take of UUID?(v79, v124 + v92, &_s9Coherence10CRRegisterVySSGSgMd);
      goto LABEL_30;
    }

LABEL_32:

    goto LABEL_3;
  }

  v80 = v101;
LABEL_30:
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
    CRRegister.init(from:)();
    if (v62)
    {
      goto LABEL_32;
    }

    v80(v75, 0, 1, v78);
    outlined assign with take of UUID?(v75, v124 + v77, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  }

  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
    v81 = v89;
    CROrderedSet.MergeableDelta.init(from:)();

    v57 = v124;
    if (v62)
    {
      return outlined destroy of Paper.Partial(v57, type metadata accessor for Paper.Partial);
    }

    v83(v81, 0, 1, v84);
    return outlined assign with take of UUID?(v81, v57 + v85, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  }

  else
  {
  }
}

uint64_t Paper.Partial.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v99 = &v94 - v1;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd);
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v98 = &v94 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v103 = &v94 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v105 = *(v5 - 8);
  v106 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v104 = &v94 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v108 = &v94 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v109 = *(v9 - 8);
  v110 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v94 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v116 = &v94 - v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v112 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v107 = &v94 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v114 = &v94 - v15;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v115 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v111 = &v94 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v123 = &v94 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v20 = *(v19 - 8);
  v118 = v19;
  v119 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v113 = &v94 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v121 = &v94 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v122 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v94 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = (&v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v94 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v94 - v38;
  v40 = v125;
  result = dispatch thunk of CREncoder.keyedContainer()();
  if (!v40)
  {
    v97 = v29;
    v95 = v36;
    v94 = v26;
    v96 = v24;
    v125 = 0;
    outlined init with copy of Date?(v124, v32, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v42 = *(v34 + 48);
    v43 = v34;
    if (v42(v32, 1, v33) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
      v44 = v97;
    }

    else
    {
      (*(v34 + 32))(v39, v32, v33);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
      v45 = v125;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v125 = v45;
      v44 = v97;
      if (v45)
      {
        (*(v43 + 8))(v39, v33);
      }

      (*(v43 + 8))(v39, v33);
    }

    v97 = type metadata accessor for Paper.Partial(0);
    outlined init with copy of Date?(v124 + v97[5], v44, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v46 = v42(v44, 1, v33);
    v47 = v96;
    v48 = v121;
    if (v46 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v44, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
      v49 = v122;
      v50 = v123;
    }

    else
    {
      v51 = v95;
      (*(v43 + 32))(v95, v44, v33);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
      v52 = v125;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v125 = v52;
      v53 = v43;
      v49 = v122;
      v50 = v123;
      if (v52)
      {
        (*(v53 + 8))(v51, v33);
      }

      (*(v53 + 8))(v51, v33);
    }

    v54 = v97;
    v55 = v124;
    outlined init with copy of Date?(v124 + v97[6], v48, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    if ((*(v49 + 48))(v48, 1, v47) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v48, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v56 = v48;
      v57 = v94;
      (*(v49 + 32))(v94, v56, v47);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
      v58 = v125;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v125 = v58;
      if (v58)
      {
        (*(v49 + 8))(v57, v47);
      }

      (*(v49 + 8))(v57, v47);
    }

    outlined init with copy of Date?(v55 + v54[7], v50, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
    v59 = v118;
    v60 = v119;
    v61 = (*(v119 + 48))(v50, 1, v118);
    v62 = v120;
    if (v61 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v63 = v113;
      (*(v60 + 32))(v113, v50, v59);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGImagePropertyOrientation> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
      v64 = v125;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v125 = v64;
      if (v64)
      {
        (*(v60 + 8))(v63, v59);
      }

      (*(v60 + 8))(v63, v59);
    }

    v65 = v124;
    v66 = v114;
    outlined init with copy of Date?(v124 + v54[8], v114, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
    v67 = v115;
    v68 = (*(v115 + 48))(v66, 1, v62);
    v69 = v117;
    if (v68 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v66, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
      v70 = v116;
    }

    else
    {
      v71 = v66;
      v72 = v111;
      (*(v67 + 32))(v111, v71, v62);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Ref<PKDrawingStruct>?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
      v73 = v125;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      v125 = v73;
      v70 = v116;
      if (v73)
      {
        (*(v67 + 8))(v72, v62);
      }

      (*(v67 + 8))(v72, v62);
    }

    v74 = v97;
    outlined init with copy of Date?(v65 + v97[9], v70, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    v75 = v112;
    if ((*(v112 + 48))(v70, 1, v69) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v70, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    }

    else
    {
      v76 = v70;
      v77 = v107;
      (*(v75 + 32))(v107, v76, v69);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Color?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
      v78 = v125;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v75 + 8))(v77, v69);
      v125 = v78;
      if (v78)
      {
      }
    }

    v79 = v108;
    outlined init with copy of Date?(v65 + v74[10], v108, &_s9Coherence10CRRegisterVySSGSgMd);
    v81 = v109;
    v80 = v110;
    if ((*(v109 + 48))(v79, 1, v110) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v79, &_s9Coherence10CRRegisterVySSGSgMd);
    }

    else
    {
      v82 = v102;
      (*(v81 + 32))(v102, v79, v80);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<String> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySSGMd);
      v83 = v125;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v81 + 8))(v82, v80);
      v125 = v83;
      if (v83)
      {
      }
    }

    v84 = v104;
    v85 = v105;
    v86 = v65 + v74[11];
    v87 = v103;
    outlined init with copy of Date?(v86, v103, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
    v88 = v106;
    if ((*(v85 + 48))(v87, 1, v106) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v87, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
      goto LABEL_38;
    }

    (*(v85 + 32))(v84, v87, v88);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CanvasElementFlags> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
    v89 = v125;
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v85 + 8))(v84, v88);
    v125 = v89;
    if (!v89)
    {
LABEL_38:
      v90 = v99;
      outlined init with copy of Date?(v124 + v74[12], v99, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
      v91 = v100;
      v92 = v101;
      if ((*(v100 + 48))(v90, 1, v101) == 1)
      {

        return outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
      }

      else
      {
        v93 = v98;
        (*(v91 + 32))(v98, v90, v92);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>>.MergeableDelta and conformance CROrderedSet<A>.MergeableDelta, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd);
        dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
        (*(v91 + 8))(v93, v92);
      }
    }
  }

  return result;
}

uint64_t Paper.shared(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v10[15] = 0;
  (*(v7 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v5);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t (*protocol witness for ContainerCanvasElement.bounds.modify in conformance Paper(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t protocol witness for ContainerCanvasElement.drawing.setter in conformance Paper(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
}

uint64_t (*protocol witness for ContainerCanvasElement.drawing.modify in conformance Paper(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t protocol witness for ContainerCanvasElement.subelements.getter in conformance Paper@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for ContainerCanvasElement.subelements.setter in conformance Paper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for CanvasElement.frame.modify in conformance Paper(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t (*protocol witness for CanvasElement.rotation.modify in conformance Paper(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t (*protocol witness for CanvasElement.orientation.modify in conformance Paper(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t (*protocol witness for CanvasElement.flags.modify in conformance Paper(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t protocol witness for CanvasElement.shared(_:) in conformance Paper@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v10[15] = 0;
  (*(v7 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v5);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t protocol witness for PaperRenderable.render<A>(in:id:capsule:options:) in conformance Paper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return Paper.render<A>(in:id:capsule:options:)(a1, v13, a3, a4, a5, a6);
}

uint64_t Paper.thumbnail.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t Paper.shared(_:)(uint64_t a1)
{
  v2 = type metadata accessor for CRKeyPath();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v7[15] = 0;
  (*(v5 + 16))(&v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v3);
  lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
  return SharedTagged_3.init(_:id:)();
}

uint64_t Paper.update<A>(pdfPage:id:use:in:options:)(void *a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *a3;
  type metadata accessor for PaperKitPDFPage(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v16 = result;
    v20 = a1;
    specialized PaperPage.updateCropAndRotation(pdfPage:updateMediaBox:)(v16, 1);
    outlined init with copy of Date?(a5, v23, &_s8PaperKit0A17RenderableOptionsVSgMd);
    if (v24 != 1)
    {
      v21[3] = type metadata accessor for Paper(0);
      v21[4] = &protocol witness table for Paper;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
      outlined init with copy of Paper.Partial(v7, boxed_opaque_existential_1, type metadata accessor for Paper);
      outlined assign with take of UUID?(v21, &v25, &_s8PaperKit0A10Renderable_pSgMd);
    }

    v22 = v14;
    outlined init with copy of Date?(v23, v21, &_s8PaperKit0A17RenderableOptionsVSgMd);
    v18 = type metadata accessor for Paper(0);
    v19 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_8(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
    PaperPage<>.updateAnnotations<A>(in:use:capsule:options:)(v16, &v22, a4, v21, v18, a6, v19, &protocol witness table for Paper, &protocol witness table for Paper, a7);
    outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s8PaperKit0A17RenderableOptionsVSgMd);
    if (v14 >> 62)
    {
    }

    else
    {
      PaperKitPDFPage.encodePaperPage<A, B>(_:_:id:capsule:)(v14, v7, a2, a4, v18, a6, v19, &protocol witness table for Paper, &protocol witness table for Paper, a7);

      outlined consume of PaperDocument.PDFDocumentUse(v14);
    }

    return outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s8PaperKit0A17RenderableOptionsVSgMd);
  }

  return result;
}

uint64_t outlined init with copy of Paper.Partial(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t (*protocol witness for PaperPage.frame.modify in conformance Paper(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t (*protocol witness for PaperPage.bounds.modify in conformance Paper(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t (*protocol witness for PaperPage.orientation.modify in conformance Paper(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t (*protocol witness for PaperPage.rotation.modify in conformance Paper(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t protocol witness for CanvasElement.thumbnail.getter in conformance Paper@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t protocol witness for PaperPage.shared(_:) in conformance Paper(uint64_t a1)
{
  v2 = type metadata accessor for CRKeyPath();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v7[15] = 0;
  (*(v5 + 16))(&v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v3);
  lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
  return SharedTagged_3.init(_:id:)();
}

uint64_t Paper.merge(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Paper.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t Paper.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v117 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v116 = v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v114 = v86 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v113 = v86 - v10;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v112 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v111 = v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v109 = v86 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v108 = v86 - v15;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v107 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v106 = v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v104 = v86 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v103 = v86 - v20;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v102 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v101 = v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v99 = v86 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v98 = v86 - v25;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v97 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v96 = v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v94 = v86 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v93 = v86 - v30;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v92 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v91 = v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v89 = v86 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v88 = v86 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v118 = v86 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = v86 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = v86 - v43;
  v122 = type metadata accessor for MergeResult();
  v124 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v46 = v86 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = a2;
  MergeResult.init()();
  v121 = a1;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v86[0] = *(v37 + 8);
  (v86[0])(v44, v36);
  v47 = *(v37 + 16);
  v86[2] = v37 + 16;
  v87 = v47;
  v47(v118, v41, v36);
  CRRegister.projectedValue.setter();
  v48 = v86[0];
  (v86[0])(v41, v36);
  MergeResult.merge(_:)();
  v123 = *(v124 + 8);
  v124 += 8;
  v123(v46, v122);
  v49 = type metadata accessor for Paper(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v48(v44, v36);
  v87(v118, v41, v36);
  v50 = v3;
  CRRegister.projectedValue.setter();
  v48(v41, v36);
  MergeResult.merge(_:)();
  v51 = v122;
  v123(v46, v122);
  v119 = v49;
  v52 = v88;
  v53 = v90;
  CRRegister.projectedValue.getter();
  v54 = v50;
  v55 = v89;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v56 = v92;
  v57 = *(v92 + 8);
  v57(v52, v53);
  (*(v56 + 16))(v91, v55, v53);
  CRRegister.projectedValue.setter();
  v57(v55, v53);
  MergeResult.merge(_:)();
  v123(v46, v51);
  v58 = v93;
  v59 = v95;
  CRRegister.projectedValue.getter();
  v60 = v94;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v61 = v97;
  v62 = *(v97 + 8);
  v62(v58, v59);
  (*(v61 + 16))(v96, v60, v59);
  CRRegister.projectedValue.setter();
  v62(v60, v59);
  MergeResult.merge(_:)();
  v123(v46, v122);
  v63 = v98;
  v64 = v100;
  CRRegister.projectedValue.getter();
  v65 = v99;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v66 = v102;
  v67 = *(v102 + 8);
  v67(v63, v64);
  (*(v66 + 16))(v101, v65, v64);
  CRRegister.projectedValue.setter();
  v67(v65, v64);
  MergeResult.merge(_:)();
  v123(v46, v122);
  v68 = v103;
  v69 = v105;
  CRRegister.projectedValue.getter();
  v86[1] = v54;
  v70 = v104;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v71 = v107;
  v72 = *(v107 + 8);
  v72(v68, v69);
  (*(v71 + 16))(v106, v70, v69);
  CRRegister.projectedValue.setter();
  v72(v70, v69);
  MergeResult.merge(_:)();
  v123(v46, v122);
  v73 = v108;
  v74 = v110;
  CRRegister.projectedValue.getter();
  v75 = v109;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v76 = v112;
  v77 = *(v112 + 8);
  v77(v73, v74);
  (*(v76 + 16))(v111, v75, v74);
  CRRegister.projectedValue.setter();
  v77(v75, v74);
  MergeResult.merge(_:)();
  v123(v46, v122);
  v78 = v113;
  v79 = v115;
  CRRegister.projectedValue.getter();
  v80 = v114;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v81 = v117;
  v82 = *(v117 + 8);
  v82(v78, v79);
  (*(v81 + 16))(v116, v80, v79);
  CRRegister.projectedValue.setter();
  v82(v80, v79);
  MergeResult.merge(_:)();
  v83 = v122;
  v84 = v123;
  v123(v46, v122);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  CROrderedSet.merge(_:)();
  MergeResult.merge(_:)();
  v84(v46, v83);
  UnknownProperties.merge(_:)();
  MergeResult.merge(_:)();
  return (v84)(v46, v83);
}

uint64_t Paper.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X8>)
{
  v121 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v112 = &v94 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v4 = *(v3 - 8);
  v119 = v3;
  v120 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v118 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v117 = &v94 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v124 = &v94 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v11 = *(v10 - 8);
  v115 = v10;
  v116 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v114 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v113 = &v94 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v125 = &v94 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v18 = *(v17 - 8);
  v110 = v17;
  v111 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v109 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v108 = &v94 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v126 = &v94 - v23;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v107 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v104 = &v94 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GSgMd);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v127 = &v94 - v28;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v103 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v100 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v99 = &v94 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v128 = &v94 - v33;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v98 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v96 = &v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v95 = &v94 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v123 = &v94 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v94 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v94 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v122 = &v94 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v101 = &v94 - v49;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v50 = *(v40 + 8);
  v50(v42, v39);
  v50(v45, v39);
  type metadata accessor for Paper(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v50(v42, v39);
  v50(v45, v39);
  v51 = v95;
  v52 = v97;
  CRRegister.projectedValue.getter();
  v53 = v96;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v54 = *(v98 + 8);
  v54(v53, v52);
  v54(v51, v52);
  v55 = v99;
  v56 = v102;
  CRRegister.projectedValue.getter();
  v57 = v100;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v58 = *(v103 + 8);
  v58(v57, v56);
  v58(v55, v56);
  v59 = v104;
  v60 = v106;
  CRRegister.projectedValue.getter();
  v61 = v105;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v62 = *(v107 + 8);
  v62(v61, v60);
  v62(v59, v60);
  v63 = v108;
  v64 = v110;
  CRRegister.projectedValue.getter();
  v65 = v109;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v66 = *(v111 + 8);
  v66(v65, v64);
  v66(v63, v64);
  v67 = v113;
  v68 = v115;
  CRRegister.projectedValue.getter();
  v69 = v114;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v70 = *(v116 + 8);
  v70(v69, v68);
  v70(v67, v68);
  v71 = v117;
  v72 = v119;
  CRRegister.projectedValue.getter();
  v73 = v118;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v74 = *(v120 + 8);
  v74(v73, v72);
  v75 = v71;
  v76 = v101;
  v77 = v72;
  v78 = v122;
  v74(v75, v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v79 = v112;
  CROrderedSet.actionUndoingDifference(from:)();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMd);
  v81 = *(*(v80 - 8) + 48);
  if (v81(v76, 1, v80) == 1 && v81(v78, 1, v80) == 1 && (v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GMd), (*(*(v82 - 8) + 48))(v123, 1, v82) == 1) && (v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GMd), (*(*(v83 - 8) + 48))(v128, 1, v83) == 1) && (v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GMd), (*(*(v84 - 8) + 48))(v127, 1, v84) == 1) && (v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GMd), (*(*(v85 - 8) + 48))(v126, 1, v85) == 1) && (v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySS_GMd), (*(*(v86 - 8) + 48))(v125, 1, v86) == 1) && (v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GMd), (*(*(v87 - 8) + 48))(v124, 1, v87) == 1) && (v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd), (*(*(v88 - 8) + 48))(v79, 1, v88) == 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v76, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
    v89 = type metadata accessor for Paper.MutatingAction(0);
    (*(*(v89 - 8) + 56))(v121, 1, 1, v89);
    v90 = v123;
  }

  else
  {
    v91 = v121;
    outlined init with copy of Date?(v76, v121, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
    v92 = type metadata accessor for Paper.MutatingAction(0);
    outlined init with copy of Date?(v78, v91 + v92[5], &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
    v90 = v123;
    outlined init with copy of Date?(v123, v91 + v92[6], &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd);
    outlined init with copy of Date?(v128, v91 + v92[7], &_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GSgMd);
    outlined init with copy of Date?(v127, v91 + v92[8], &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GSgMd);
    outlined init with copy of Date?(v126, v91 + v92[9], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd);
    outlined init with copy of Date?(v125, v91 + v92[10], &_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMd);
    outlined init with copy of Date?(v124, v91 + v92[11], &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GSgMd);
    outlined init with copy of Date?(v79, v91 + v92[12], &_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v76, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
    (*(*(v92 - 1) + 56))(v91, 0, 1, v92);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v79, &_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v124, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v125, &_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v126, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v127, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v128, &_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v78, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
}

uint64_t Paper.apply(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v3 = *(v2 - 8);
  v75 = v2;
  v76 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v74 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v89 = &v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v87 = *(v7 - 8);
  v88 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v86 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v83 = *(v11 - 8);
  v84 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v82 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v60 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v79 = *(v15 - 8);
  v80 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v78 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v77 = &v60 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v72 = *(v19 - 8);
  v73 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v71 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v70 = &v60 - v22;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v66 = &v60 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v65 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v60 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A0V14MutatingActionVSgMd);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v60 - v33;
  v35 = type metadata accessor for Paper.MutatingAction(0);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v60 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(a1, v34, &_s8PaperKit0A0V14MutatingActionVSgMd);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s8PaperKit0A0V14MutatingActionVSgMd);
  }

  outlined init with take of Paper.MutatingAction(v34, v38);
  CRRegister.projectedValue.getter();
  v61 = v38;
  CRRegister.apply(_:)();
  v40 = v65;
  v64 = *(v65 + 16);
  v64(v28, v31, v26);
  CRRegister.projectedValue.setter();
  v65 = *(v40 + 8);
  (v65)(v31, v26);
  v63 = v35;
  v62 = type metadata accessor for Paper(0);
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v64(v28, v31, v26);
  CRRegister.projectedValue.setter();
  (v65)(v31, v26);
  v41 = v66;
  v42 = v69;
  CRRegister.projectedValue.getter();
  v43 = v61;
  CRRegister.apply(_:)();
  v44 = v68;
  (*(v68 + 16))(v67, v41, v42);
  CRRegister.projectedValue.setter();
  (*(v44 + 8))(v41, v42);
  v45 = v70;
  v46 = v73;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v47 = v72;
  (*(v72 + 16))(v71, v45, v46);
  CRRegister.projectedValue.setter();
  (*(v47 + 8))(v45, v46);
  v48 = v77;
  v49 = v80;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v50 = v79;
  (*(v79 + 16))(v78, v48, v49);
  CRRegister.projectedValue.setter();
  (*(v50 + 8))(v48, v49);
  v51 = v81;
  v52 = v84;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v53 = v83;
  (*(v83 + 16))(v82, v51, v52);
  CRRegister.projectedValue.setter();
  (*(v53 + 8))(v51, v52);
  v54 = v85;
  v55 = v88;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v56 = v87;
  (*(v87 + 16))(v86, v54, v55);
  CRRegister.projectedValue.setter();
  (*(v56 + 8))(v54, v55);
  v57 = v89;
  v58 = v75;
  CRRegister.projectedValue.getter();
  CRRegister.apply(_:)();
  v59 = v76;
  (*(v76 + 16))(v74, v57, v58);
  CRRegister.projectedValue.setter();
  (*(v59 + 8))(v57, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  CROrderedSet.apply(_:)();
  return outlined destroy of Paper.Partial(v43, type metadata accessor for Paper.MutatingAction);
}

uint64_t Paper.hasDelta(from:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v74 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v70 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v79 = *(v7 - 8);
  v80 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v78 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v77 = &v70 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v83 = *(v11 - 8);
  v84 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v82 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v70 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v86 = *(v15 - 8);
  v87 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v85 = &v70 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v90 = *(v20 - 8);
  v91 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v89 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v88 = &v70 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v92 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v70 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v70 - v35;
  v94 = v1;
  CRRegister.projectedValue.getter();
  v93 = a1;
  CRRegister.projectedValue.getter();
  v37 = CRRegister.hasDelta(from:)();
  v38 = *(v31 + 8);
  v38(v33, v30);
  v38(v36, v30);
  if (v37 & 1) != 0 || (v71 = v17, v39 = type metadata accessor for Paper(0), CRRegister.projectedValue.getter(), v72 = v39, CRRegister.projectedValue.getter(), v40 = CRRegister.hasDelta(from:)(), v38(v33, v30), v38(v36, v30), (v40) || (CRRegister.projectedValue.getter(), CRRegister.projectedValue.getter(), v41 = CRRegister.hasDelta(from:)(), v42 = *(v92 + 8), v42(v26, v24), v42(v29, v24), (v41) || (v43 = v88, v44 = v91, CRRegister.projectedValue.getter(), v45 = v89, CRRegister.projectedValue.getter(), v46 = CRRegister.hasDelta(from:)(), v47 = *(v90 + 8), v47(v45, v44), v47(v43, v44), (v46) || (v48 = v85, v49 = v87, CRRegister.projectedValue.getter(), v50 = v71, CRRegister.projectedValue.getter(), v51 = CRRegister.hasDelta(from:)(), v52 = *(v86 + 8), v52(v50, v49), v52(v48, v49), (v51) || (v53 = v81, v54 = v84, CRRegister.projectedValue.getter(), v55 = v82, CRRegister.projectedValue.getter(), v56 = CRRegister.hasDelta(from:)(), v57 = *(v83 + 8), v57(v55, v54), v57(v53, v54), (v56) || (v58 = v77, v59 = v80, CRRegister.projectedValue.getter(), v60 = v78, CRRegister.projectedValue.getter(), v61 = CRRegister.hasDelta(from:)(), v62 = *(v79 + 8), v62(v60, v59), v62(v58, v59), (v61) || (v63 = v73, v64 = v76, CRRegister.projectedValue.getter(), v65 = v74, CRRegister.projectedValue.getter(), v66 = CRRegister.hasDelta(from:)(), v67 = *(v75 + 8), v67(v65, v64), v67(v63, v64), (v66) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd), (CROrderedSet.hasDelta(from:)()))
  {
    v68 = 1;
  }

  else
  {
    v68 = UnknownProperties.hasDelta(from:)();
  }

  return v68 & 1;
}

uint64_t Paper.copy(renamingReferences:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownProperties();
  v109 = *(v3 - 8);
  v110 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v108 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v6 = *(v5 - 8);
  v106 = v5;
  v107 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v105 = &v80 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v9 = *(v8 - 8);
  v103 = v8;
  v104 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v102 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v101 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v14 = *(v13 - 8);
  v99 = v13;
  v100 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v98 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v97 = &v80 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v19 = *(v18 - 8);
  v95 = v18;
  v96 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v94 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v93 = &v80 - v22;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v92 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v89 = &v80 - v25;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v88 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v85 = &v80 - v28;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v84 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v81 = &v80 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v80 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v80 - v37;
  v112 = v1;
  v80 = a1;
  outlined init with copy of Paper.Partial(v1, a1, type metadata accessor for Paper);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v39 = *(v33 + 8);
  v39(v35, v32);
  v40 = *(v33 + 16);
  v40(v35, v38, v32);
  CRRegister.projectedValue.setter();
  v39(v38, v32);
  v111 = type metadata accessor for Paper(0);
  CRRegister.projectedValue.getter();
  CRRegister.copy(renamingReferences:)();
  v39(v35, v32);
  v40(v35, v38, v32);
  v41 = v80;
  CRRegister.projectedValue.setter();
  v39(v38, v32);
  v42 = v82;
  v43 = v83;
  CRRegister.projectedValue.getter();
  v44 = v81;
  CRRegister.copy(renamingReferences:)();
  v45 = v84;
  v46 = *(v84 + 8);
  v46(v42, v43);
  (*(v45 + 16))(v42, v44, v43);
  v47 = v111;
  CRRegister.projectedValue.setter();
  v46(v44, v43);
  v48 = v47;
  v49 = v86;
  v50 = v87;
  CRRegister.projectedValue.getter();
  v51 = v85;
  CRRegister.copy(renamingReferences:)();
  v52 = v88;
  v53 = *(v88 + 8);
  v53(v49, v50);
  (*(v52 + 16))(v49, v51, v50);
  v54 = v41;
  CRRegister.projectedValue.setter();
  v53(v51, v50);
  v55 = v90;
  v56 = v91;
  CRRegister.projectedValue.getter();
  v57 = v89;
  CRRegister.copy(renamingReferences:)();
  v58 = v92;
  v59 = *(v92 + 8);
  v59(v55, v56);
  (*(v58 + 16))(v55, v57, v56);
  CRRegister.projectedValue.setter();
  v59(v57, v56);
  v61 = v94;
  v60 = v95;
  CRRegister.projectedValue.getter();
  v62 = v93;
  CRRegister.copy(renamingReferences:)();
  v63 = v96;
  v64 = *(v96 + 8);
  v64(v61, v60);
  (*(v63 + 16))(v61, v62, v60);
  CRRegister.projectedValue.setter();
  v64(v62, v60);
  v66 = v98;
  v65 = v99;
  CRRegister.projectedValue.getter();
  v67 = v97;
  CRRegister.copy(renamingReferences:)();
  v68 = v100;
  v69 = *(v100 + 8);
  v69(v66, v65);
  (*(v68 + 16))(v66, v67, v65);
  CRRegister.projectedValue.setter();
  v69(v67, v65);
  v71 = v102;
  v70 = v103;
  CRRegister.projectedValue.getter();
  v72 = v101;
  CRRegister.copy(renamingReferences:)();
  v73 = v104;
  v74 = *(v104 + 8);
  v74(v71, v70);
  (*(v73 + 16))(v71, v72, v70);
  CRRegister.projectedValue.setter();
  v74(v72, v70);
  v76 = v105;
  v75 = v106;
  CROrderedSet.copy(renamingReferences:)();
  v77 = v54;
  (*(v107 + 40))(v54 + *(v48 + 48), v76, v75);
  v78 = v108;
  UnknownProperties.copy(renamingReferences:)();
  return (*(v109 + 40))(v77 + *(v48 + 52), v78, v110);
}

uint64_t Paper.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v68 = type metadata accessor for UnknownProperties();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v71 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v74 = &v60 - v3;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v78 = &v60 - v4;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v82 = &v60 - v5;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v86 = &v60 - v6;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v92 = &v60 - v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v98 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v96 = *(v9 - 8);
  v97 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v100 = &v60 - v10;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v102 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v108 = &v60 - v13;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v107);
  v105 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v60 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v60 - v22;
  type metadata accessor for CGRect(0);
  v109 = v24;
  v25 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_8(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v110 = 0u;
  v111 = 0u;
  v112 = v25;
  CRRegister.init(wrappedValue:)();
  v26 = type metadata accessor for Paper(0);
  v27 = v26[5];
  v110 = 0u;
  v111 = 0u;
  v101 = v27;
  CRRegister.init(wrappedValue:)();
  v28 = v26[6];
  *&v110 = 0;
  v29 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v95 = v28;
  v99 = v29;
  CRRegister.init(wrappedValue:)();
  v30 = v26[7];
  LODWORD(v110) = 1;
  type metadata accessor for CGImagePropertyOrientation(0);
  v32 = v31;
  v33 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_8(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation);
  v88 = v30;
  v94 = v32;
  v93 = v33;
  CRRegister.init(wrappedValue:)();
  v34 = v26[8];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  (*(*(v35 - 8) + 56))(v23, 1, 1, v35);
  outlined init with copy of Date?(v23, v20, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  v36 = lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  v83 = v34;
  v89 = v18;
  v87 = v36;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  v37 = v26[9];
  v38 = type metadata accessor for Color(0);
  (*(*(v38 - 8) + 56))(v17, 1, 1, v38);
  outlined init with copy of Date?(v17, v105, &_s8PaperKit5ColorVSgMd);
  v39 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  v79 = v37;
  v105 = v39;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit5ColorVSgMd);
  v40 = v26[10];
  *&v110 = 0;
  *(&v110 + 1) = 0xE000000000000000;
  v75 = v40;
  CRRegister.init(wrappedValue:)();
  v41 = v26[11];
  *&v110 = 0;
  v42 = lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  v43 = v26[12];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v45 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v46 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  CROrderedSet.init()();
  v47 = v26[13];
  UnknownProperties.init()();
  v48 = v106;
  CRRegister.init(defaultState:)();
  if (v48)
  {
    return outlined destroy of Paper.Partial(a1, type metadata accessor for Paper);
  }

  v63 = v46;
  v64 = v45;
  v106 = v42;
  v65 = v44;
  v61 = v47;
  v66 = v41;
  v49 = v101;
  v62 = v43;
  v50 = *(v102 + 40);
  v50(a1, v108, v104);
  CRRegister.init(defaultState:)();
  v50(a1 + v49, v103, v104);
  v51 = v100;
  CRRegister.init(defaultState:)();
  (*(v96 + 40))(a1 + v95, v51, v97);
  v52 = v98;
  CRRegister.init(defaultState:)();
  (*(v90 + 40))(a1 + v88, v52, v91);
  v53 = v92;
  CRRegister.init(defaultState:)();
  (*(v84 + 40))(a1 + v83, v53, v85);
  v54 = v86;
  CRRegister.init(defaultState:)();
  (*(v80 + 40))(a1 + v79, v54, v81);
  v55 = v82;
  CRRegister.init(defaultState:)();
  (*(v76 + 40))(a1 + v75, v55, v77);
  v56 = v78;
  CRRegister.init(defaultState:)();
  (*(v72 + 40))(a1 + v66, v56, v73);
  v57 = v74;
  CROrderedSet.init(defaultState:)();
  (*(v69 + 40))(a1 + v62, v57, v70);
  v58 = v71;
  UnknownProperties.init(defaultState:)();
  return (*(v67 + 40))(a1 + v61, v58, v68);
}

uint64_t Paper.isDefaultState.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v41 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v40 = &v38 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v42 = &v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v53 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - v16;
  type metadata accessor for Paper(0);
  if (UnknownProperties.isDefaultState.getter() & 1) != 0 && (v39 = v0, CRRegister.projectedValue.getter(), v18 = CRRegister.isDefaultState.getter(), v19 = *(v15 + 8), v19(v17, v14), (v18) && (CRRegister.projectedValue.getter(), v20 = CRRegister.isDefaultState.getter(), v19(v17, v14), (v20) && (CRRegister.projectedValue.getter(), v21 = CRRegister.isDefaultState.getter(), (*(v53 + 8))(v13, v11), (v21) && (v22 = v52, CRRegister.projectedValue.getter(), v23 = CRRegister.isDefaultState.getter(), (*(v51 + 8))(v10, v22), (v23) && (v24 = v48, v25 = v50, CRRegister.projectedValue.getter(), v26 = CRRegister.isDefaultState.getter(), (*(v49 + 8))(v24, v25), (v26) && (v27 = v45, v28 = v47, CRRegister.projectedValue.getter(), v29 = CRRegister.isDefaultState.getter(), (*(v46 + 8))(v27, v28), (v29) && (v30 = v42, v31 = v44, CRRegister.projectedValue.getter(), v32 = CRRegister.isDefaultState.getter(), (*(v43 + 8))(v30, v31), (v32) && (v33 = v39, v34 = v40, CRRegister.projectedValue.getter(), v35 = CRRegister.isDefaultState.getter(), (*(v41 + 8))(v34, v33), (v35))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
    v36 = CROrderedSet.isDefaultState.getter();
  }

  else
  {
    v36 = 0;
  }

  return v36 & 1;
}

uint64_t Paper.visitReferences(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v1 = *(v0 - 8);
  v48 = v0;
  v49 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v47 = &v34 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v4 = *(v3 - 8);
  v45 = v3;
  v46 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v7 = *(v6 - 8);
  v42 = v6;
  v43 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v10 = *(v9 - 8);
  v39 = v9;
  v40 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v13 = *(v12 - 8);
  v36 = v12;
  v37 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v35 = &v34 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v34 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v22 = *(v19 + 8);
  v22(v21, v18);
  type metadata accessor for Paper(0);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  v22(v21, v18);
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v34 + 8))(v17, v15);
  v24 = v35;
  v23 = v36;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v37 + 8))(v24, v23);
  v26 = v38;
  v25 = v39;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v40 + 8))(v26, v25);
  v28 = v41;
  v27 = v42;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v43 + 8))(v28, v27);
  v30 = v44;
  v29 = v45;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v46 + 8))(v30, v29);
  v32 = v47;
  v31 = v48;
  CRRegister.projectedValue.getter();
  CRRegister.visitReferences(_:)();
  (*(v49 + 8))(v32, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  CROrderedSet.visitReferences(_:)();
  return UnknownProperties.visitReferences(_:)();
}

uint64_t Paper.newRefs(from:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v2 = *(v1 - 8);
  v94 = v1;
  v95 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v93 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v92 = &v72 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v7 = *(v6 - 8);
  v90 = v6;
  v91 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v89 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v12 = *(v11 - 8);
  v86 = v11;
  v87 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v84 = &v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v17 = *(v16 - 8);
  v82 = v16;
  v83 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v81 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v72 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v22 = *(v21 - 8);
  v78 = v21;
  v79 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v77 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v76 = &v72 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v75 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v74 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v73 = &v72 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v72 - v35;
  v96 = MEMORY[0x1E69E7CD0];
  v72 = v0;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v37 = CRRegister.newRefs(from:)();
  v38 = *(v31 + 8);
  v38(v33, v30);
  v38(v36, v30);
  specialized Set.formUnion<A>(_:)(v37);
  type metadata accessor for Paper(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v39 = CRRegister.newRefs(from:)();
  v38(v33, v30);
  v38(v36, v30);
  specialized Set.formUnion<A>(_:)(v39);
  v40 = v73;
  CRRegister.projectedValue.getter();
  v41 = v74;
  CRRegister.projectedValue.getter();
  v42 = CRRegister.newRefs(from:)();
  v43 = *(v75 + 8);
  v43(v41, v26);
  v43(v40, v26);
  specialized Set.formUnion<A>(_:)(v42);
  v44 = v76;
  v45 = v78;
  CRRegister.projectedValue.getter();
  v46 = v77;
  CRRegister.projectedValue.getter();
  v47 = CRRegister.newRefs(from:)();
  v48 = *(v79 + 8);
  v48(v46, v45);
  v48(v44, v45);
  specialized Set.formUnion<A>(_:)(v47);
  v49 = v80;
  v50 = v82;
  CRRegister.projectedValue.getter();
  v51 = v81;
  CRRegister.projectedValue.getter();
  v52 = CRRegister.newRefs(from:)();
  v53 = *(v83 + 8);
  v53(v51, v50);
  v53(v49, v50);
  specialized Set.formUnion<A>(_:)(v52);
  v54 = v84;
  v55 = v86;
  CRRegister.projectedValue.getter();
  v56 = v85;
  CRRegister.projectedValue.getter();
  v57 = CRRegister.newRefs(from:)();
  v58 = *(v87 + 8);
  v58(v56, v55);
  v58(v54, v55);
  specialized Set.formUnion<A>(_:)(v57);
  v59 = v88;
  v60 = v90;
  CRRegister.projectedValue.getter();
  v61 = v89;
  CRRegister.projectedValue.getter();
  v62 = CRRegister.newRefs(from:)();
  v63 = *(v91 + 8);
  v63(v61, v60);
  v63(v59, v60);
  specialized Set.formUnion<A>(_:)(v62);
  v64 = v92;
  v65 = v94;
  CRRegister.projectedValue.getter();
  v66 = v93;
  CRRegister.projectedValue.getter();
  v67 = CRRegister.newRefs(from:)();
  v68 = *(v95 + 8);
  v68(v66, v65);
  v68(v64, v65);
  specialized Set.formUnion<A>(_:)(v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v69 = CROrderedSet.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v69);
  v70 = UnknownProperties.newRefs(from:)();
  specialized Set.formUnion<A>(_:)(v70);
  return v96;
}

Swift::Bool __swiftcall Paper.needToFinalizeTimestamps()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v43 = *(v1 - 8);
  v44 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v42 = &v40 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v54 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - v18;
  v55 = v0;
  CRRegister.projectedValue.getter();
  v20 = CRRegister.needToFinalizeTimestamps()();
  v21 = *(v17 + 8);
  v21(v19, v16);
  v38 = v20 || (v41 = v9, type metadata accessor for Paper(0), CRRegister.projectedValue.getter(), v22 = CRRegister.needToFinalizeTimestamps()(), v21(v19, v16), v22) || (CRRegister.projectedValue.getter(), v23 = CRRegister.needToFinalizeTimestamps()(), (*(v13 + 8))(v15, v12), v23) || (v24 = v41, CRRegister.projectedValue.getter(), v25 = CRRegister.needToFinalizeTimestamps()(), (*(v54 + 8))(v11, v24), v25) || (v26 = v51, v27 = v53, CRRegister.projectedValue.getter(), v28 = CRRegister.needToFinalizeTimestamps()(), (*(v52 + 8))(v26, v27), v28) || (v29 = v48, v30 = v50, CRRegister.projectedValue.getter(), v31 = CRRegister.needToFinalizeTimestamps()(), (*(v49 + 8))(v29, v30), v31) || (v32 = v45, v33 = v47, CRRegister.projectedValue.getter(), v34 = CRRegister.needToFinalizeTimestamps()(), (*(v46 + 8))(v32, v33), v34) || (v35 = v42, v36 = v44, CRRegister.projectedValue.getter(), v37 = CRRegister.needToFinalizeTimestamps()(), (*(v43 + 8))(v35, v36), v37) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd), CROrderedSet.needToFinalizeTimestamps()()) || UnknownProperties.needToFinalizeTimestamps()();
  return v38;
}

uint64_t Paper.finalizeTimestamps(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v3 = *(v2 - 8);
  v82 = v2;
  v83 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v81 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v80 = v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v8 = *(v7 - 8);
  v78 = v7;
  v79 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v77 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v76 = v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v13 = *(v12 - 8);
  v74 = v12;
  v75 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v73 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v72 = v58 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v18 = *(v17 - 8);
  v70 = v17;
  v71 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v69 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v68 = v58 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v23 = *(v22 - 8);
  v66 = v22;
  v67 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v65 = v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v64 = v58 - v26;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v63 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v60 = v58 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = v58 - v35;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v59 = *(v31 + 16);
  v59(v33, v36, v30);
  CRRegister.projectedValue.setter();
  v37 = *(v31 + 8);
  v37(v36, v30);
  v58[1] = type metadata accessor for Paper(0);
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v59(v33, v36, v30);
  CRRegister.projectedValue.setter();
  v37(v36, v30);
  v38 = v60;
  v39 = v62;
  CRRegister.projectedValue.getter();
  v40 = a1;
  CRRegister.finalizeTimestamps(_:)();
  v41 = v63;
  (*(v63 + 16))(v61, v38, v39);
  CRRegister.projectedValue.setter();
  (*(v41 + 8))(v38, v39);
  v42 = v64;
  v43 = v66;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v44 = v67;
  (*(v67 + 16))(v65, v42, v43);
  CRRegister.projectedValue.setter();
  (*(v44 + 8))(v42, v43);
  v45 = v68;
  v46 = v70;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v47 = v71;
  (*(v71 + 16))(v69, v45, v46);
  CRRegister.projectedValue.setter();
  (*(v47 + 8))(v45, v46);
  v48 = v72;
  v49 = v74;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v50 = v75;
  (*(v75 + 16))(v73, v48, v49);
  CRRegister.projectedValue.setter();
  (*(v50 + 8))(v48, v49);
  v51 = v76;
  v52 = v78;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v53 = v79;
  (*(v79 + 16))(v77, v51, v52);
  CRRegister.projectedValue.setter();
  (*(v53 + 8))(v51, v52);
  v54 = v80;
  v55 = v82;
  CRRegister.projectedValue.getter();
  CRRegister.finalizeTimestamps(_:)();
  v56 = v83;
  (*(v83 + 16))(v81, v54, v55);
  CRRegister.projectedValue.setter();
  (*(v56 + 8))(v54, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  CROrderedSet.finalizeTimestamps(_:)();
  return MEMORY[0x1DA6CBA30](v40);
}

uint64_t Paper.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v197 = a1;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v159 = v155 - v2;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v165 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v164 = v155 - v3;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v170 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v169 = v155 - v4;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v175 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v174 = v155 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v180 = *(v6 - 8);
  v181 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v179 = v155 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v185 = *(v8 - 8);
  v186 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v184 = v155 - v9;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v198 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v189 = v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v155 - v12;
  v14 = type metadata accessor for CRCodableVersion();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v156 = v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v157 = v155 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v158 = v155 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v162 = v155 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v163 = v155 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v167 = v155 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v168 = v155 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v172 = v155 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v173 = v155 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v177 = v155 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v178 = v155 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v182 = v155 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v183 = v155 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v187 = v155 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v188 = v155 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = v155 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = v155 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = v155 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = v155 - v55;
  v190 = type metadata accessor for Paper(0);
  v196 = v1;
  UnknownProperties.minEncodingVersion.getter();
  v57 = *(v15 + 104);
  v193 = *MEMORY[0x1E6995288];
  v194 = v15 + 104;
  v192 = v57;
  v57(v53);
  v58 = static CRCodableVersion.== infix(_:_:)();
  v60 = v15 + 8;
  v59 = *(v15 + 8);
  v195 = v53;
  v59(v53, v14);
  if (v58)
  {
    return (*(v15 + 32))(v197, v56, v14);
  }

  v62 = v191;
  CRRegister.projectedValue.getter();
  CRRegister.minEncodingVersion.getter();
  v63 = *(v198 + 1);
  v198 = (v198 + 8);
  v155[0] = v63;
  v63(v13, v62);
  v155[1] = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_8(&lazy protocol witness table cache variable for type CRCodableVersion and conformance CRCodableVersion, MEMORY[0x1E6995298]);
  v64 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v65 = (v64 & 1) == 0;
  if (v64)
  {
    v66 = v56;
  }

  else
  {
    v66 = v47;
  }

  if (v65)
  {
    v67 = v56;
  }

  else
  {
    v67 = v47;
  }

  v59(v66, v14);
  v68 = *(v15 + 32);
  v68(v50, v67, v14);
  v68(v56, v50, v14);
  v69 = v195;
  v192(v195, v193, v14);
  v70 = static CRCodableVersion.== infix(_:_:)();
  v59(v69, v14);
  if (v70)
  {
    return (v68)(v197, v56, v14);
  }

  v71 = v189;
  v72 = v191;
  CRRegister.projectedValue.getter();
  v73 = v187;
  CRRegister.minEncodingVersion.getter();
  (v155[0])(v71, v72);
  v74 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v75 = (v74 & 1) == 0;
  if (v74)
  {
    v76 = v56;
  }

  else
  {
    v76 = v73;
  }

  if (v75)
  {
    v77 = v56;
  }

  else
  {
    v77 = v73;
  }

  v78 = v68;
  v59(v76, v14);
  v79 = v188;
  v68(v188, v77, v14);
  v68(v56, v79, v14);
  v80 = v195;
  v192(v195, v193, v14);
  v81 = static CRCodableVersion.== infix(_:_:)();
  v59(v80, v14);
  if (v81)
  {
    goto LABEL_18;
  }

  v83 = v59;
  v84 = v184;
  v85 = v186;
  CRRegister.projectedValue.getter();
  v86 = v182;
  CRRegister.minEncodingVersion.getter();
  (*(v185 + 8))(v84, v85);
  v87 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v88 = (v87 & 1) == 0;
  if (v87)
  {
    v89 = v56;
  }

  else
  {
    v89 = v86;
  }

  if (v88)
  {
    v90 = v56;
  }

  else
  {
    v90 = v86;
  }

  v83(v89, v14);
  v91 = v183;
  v78(v183, v90, v14);
  v78(v56, v91, v14);
  v92 = v195;
  v192(v195, v193, v14);
  v93 = static CRCodableVersion.== infix(_:_:)();
  v198 = v83;
  v83(v92, v14);
  v94 = v197;
  if (v93 & 1) != 0 || ((v95 = v179, v96 = v181, CRRegister.projectedValue.getter(), v97 = v60, v98 = v177, CRRegister.minEncodingVersion.getter(), (*(v180 + 8))(v95, v96), v99 = dispatch thunk of static Comparable.>= infix(_:_:)(), v100 = (v99 & 1) == 0) ? (v101 = v98) : (v101 = v56), v100 ? (v102 = v56) : (v102 = v98), v103 = v198, v198(v101, v14), v104 = v178, v78(v178, v102, v14), v78(v56, v104, v14), v105 = v195, v192(v195, v193, v14), v106 = static CRCodableVersion.== infix(_:_:)(), v103(v105, v14), (v106))
  {
LABEL_33:
    v82 = v94;
    return (v78)(v82, v56, v14);
  }

  v107 = v174;
  v108 = v176;
  CRRegister.projectedValue.getter();
  v109 = v172;
  CRRegister.minEncodingVersion.getter();
  (*(v175 + 8))(v107, v108);
  v110 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v111 = (v110 & 1) == 0;
  if (v110)
  {
    v112 = v56;
  }

  else
  {
    v112 = v109;
  }

  if (v111)
  {
    v113 = v56;
  }

  else
  {
    v113 = v109;
  }

  v114 = v198;
  v198(v112, v14);
  v115 = v173;
  v78(v173, v113, v14);
  v78(v56, v115, v14);
  v116 = v195;
  v192(v195, v193, v14);
  v117 = static CRCodableVersion.== infix(_:_:)();
  v114(v116, v14);
  if ((v117 & 1) == 0)
  {
    v118 = v169;
    v119 = v171;
    CRRegister.projectedValue.getter();
    v120 = v167;
    CRRegister.minEncodingVersion.getter();
    (*(v170 + 8))(v118, v119);
    v121 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v122 = (v121 & 1) == 0;
    if (v121)
    {
      v123 = v56;
    }

    else
    {
      v123 = v120;
    }

    if (v122)
    {
      v124 = v56;
    }

    else
    {
      v124 = v120;
    }

    v114(v123, v14);
    v125 = v168;
    v78(v168, v124, v14);
    v78(v56, v125, v14);
    v126 = v195;
    v192(v195, v193, v14);
    v127 = static CRCodableVersion.== infix(_:_:)();
    v114(v126, v14);
    v94 = v197;
    if (v127)
    {
      goto LABEL_33;
    }

    v128 = v164;
    v129 = v166;
    CRRegister.projectedValue.getter();
    v130 = v162;
    CRRegister.minEncodingVersion.getter();
    (*(v165 + 8))(v128, v129);
    v131 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v132 = (v131 & 1) == 0;
    v133 = (v131 & 1) != 0 ? v56 : v130;
    v134 = v132 ? v56 : v130;
    v135 = v198;
    v198(v133, v14);
    v136 = v163;
    v78(v163, v134, v14);
    v78(v56, v136, v14);
    v137 = v195;
    v192(v195, v193, v14);
    v138 = static CRCodableVersion.== infix(_:_:)();
    v135(v137, v14);
    if (v138)
    {
      goto LABEL_33;
    }

    v139 = v159;
    v140 = v161;
    CRRegister.projectedValue.getter();
    v141 = v198;
    v191 = v97;
    v142 = v157;
    CRRegister.minEncodingVersion.getter();
    (*(v160 + 8))(v139, v140);
    v143 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v144 = (v143 & 1) == 0;
    if (v143)
    {
      v145 = v56;
    }

    else
    {
      v145 = v142;
    }

    if (v144)
    {
      v146 = v56;
    }

    else
    {
      v146 = v142;
    }

    v141(v145, v14);
    v147 = v158;
    v78(v158, v146, v14);
    v78(v56, v147, v14);
    v148 = v195;
    v192(v195, v193, v14);
    v149 = static CRCodableVersion.== infix(_:_:)();
    v141(v148, v14);
    if (v149)
    {
      v150 = v197;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
      v151 = v156;
      CROrderedSet.minEncodingVersion.getter();
      v152 = dispatch thunk of static Comparable.>= infix(_:_:)();
      v153 = v197;
      if (v152)
      {
        v141(v56, v14);
        v150 = v153;
        v154 = v151;
        return (v78)(v150, v154, v14);
      }

      v141(v151, v14);
      v150 = v153;
    }

    v154 = v56;
    return (v78)(v150, v154, v14);
  }

LABEL_18:
  v82 = v197;
  return (v78)(v82, v56, v14);
}

uint64_t Paper.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v106 = v91 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v6 = *(v5 - 8);
  v117 = v5;
  v118 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v116 = v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v115 = v91 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v11 = *(v10 - 8);
  v113 = v10;
  v114 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v112 = v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v111 = v91 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v16 = *(v15 - 8);
  v109 = v15;
  v110 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v108 = v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v107 = v91 - v19;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v105 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v103 = v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v102 = v91 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GSgMd);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v123 = v91 - v24;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v100 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v97 = v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v96 = v91 - v27;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v95 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v92 = v91 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = v91 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v122 = v91 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v99 = v91 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v120 = v91 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v124 = v91 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v125 = v91 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = v91 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v101 = v91 - v52;
  CRRegister.projectedValue.getter();
  v91[1] = a1;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v53 = *(v32 + 8);
  v91[2] = v32 + 8;
  v53(v34, v31);
  v53(v37, v31);
  type metadata accessor for Paper(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  v121 = v50;
  CRRegister.observableDifference(from:with:)();
  v53(v34, v31);
  v53(v37, v31);
  v54 = v92;
  v55 = v94;
  CRRegister.projectedValue.getter();
  v56 = v93;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v57 = *(v95 + 8);
  v57(v56, v55);
  v57(v54, v55);
  v58 = v96;
  v59 = v98;
  CRRegister.projectedValue.getter();
  v60 = v97;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v61 = *(v100 + 8);
  v61(v60, v59);
  v61(v58, v59);
  v62 = v102;
  v63 = v104;
  CRRegister.projectedValue.getter();
  v64 = v103;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v65 = *(v105 + 8);
  v65(v64, v63);
  v65(v62, v63);
  v66 = v107;
  v67 = v109;
  CRRegister.projectedValue.getter();
  v68 = v108;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v69 = *(v110 + 8);
  v69(v68, v67);
  v69(v66, v67);
  v70 = v111;
  v71 = v113;
  CRRegister.projectedValue.getter();
  v72 = v112;
  CRRegister.projectedValue.getter();
  v73 = v99;
  CRRegister.observableDifference(from:with:)();
  v74 = *(v114 + 8);
  v74(v72, v71);
  v74(v70, v71);
  v75 = v115;
  v76 = v117;
  CRRegister.projectedValue.getter();
  v77 = v116;
  CRRegister.projectedValue.getter();
  CRRegister.observableDifference(from:with:)();
  v78 = *(v118 + 8);
  v78(v77, v76);
  v78(v75, v76);
  v79 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v80 = v106;
  v81 = v101;
  CROrderedSet.observableDifference(from:with:)();
  v82 = type metadata accessor for CRValueObservableDifference();
  v83 = *(*(v82 - 8) + 48);
  if (v83(v81, 1, v82) == 1 && v83(v121, 1, v82) == 1 && v83(v125, 1, v82) == 1 && v83(v124, 1, v82) == 1 && (v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GMd), (*(*(v84 - 8) + 48))(v123, 1, v84) == 1) && v83(v120, 1, v82) == 1 && v83(v73, 1, v82) == 1 && v83(v122, 1, v82) == 1 && (v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd), (*(*(v85 - 8) + 48))(v80, 1, v85) == 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v81, &_s9Coherence27CRValueObservableDifferenceOSgMd);
    v86 = type metadata accessor for Paper.ObservableDifference(0);
    (*(*(v86 - 8) + 56))(v119, 1, 1, v86);
    v87 = v120;
  }

  else
  {
    v88 = v119;
    outlined init with copy of Date?(v81, v119, &_s9Coherence27CRValueObservableDifferenceOSgMd);
    v89 = type metadata accessor for Paper.ObservableDifference(0);
    outlined init with copy of Date?(v121, v88 + v89[5], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v125, v88 + v89[6], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v124, v88 + v89[7], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v123, v88 + v89[8], &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GSgMd);
    v87 = v120;
    outlined init with copy of Date?(v120, v88 + v89[9], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v79, v88 + v89[10], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v122, v88 + v89[11], &_s9Coherence27CRValueObservableDifferenceOSgMd);
    outlined init with copy of Date?(v80, v88 + v89[12], &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v81, &_s9Coherence27CRValueObservableDifferenceOSgMd);
    (*(*(v89 - 1) + 56))(v88, 0, 1, v89);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v80, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v122, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v79, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v87, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v123, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v124, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v125, &_s9Coherence27CRValueObservableDifferenceOSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v121, &_s9Coherence27CRValueObservableDifferenceOSgMd);
}

uint64_t Paper.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v45 = *(v0 - 8);
  v46 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v44 = &v38 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v56 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v57 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  v21 = v58;
  result = dispatch thunk of CREncoder.keyedContainer()();
  if (!v21)
  {
    v42 = v17;
    v43 = v15;
    v40 = v13;
    v41 = v11;
    v38 = v8;
    v39 = v10;
    v23 = result;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
    v58 = v23;
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v24 = *(v43 + 8);
    v24(v20, v14);
    type metadata accessor for Paper(0);
    v25 = v42;
    CRRegister.projectedValue.getter();
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    v24(v25, v14);
    v27 = v40;
    v26 = v41;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v57 + 8))(v27, v26);
    v28 = v38;
    v29 = v39;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGImagePropertyOrientation> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v56 + 8))(v29, v28);
    v30 = v53;
    v31 = v55;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Ref<PKDrawingStruct>?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v54 + 8))(v30, v31);
    v32 = v50;
    v33 = v52;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Color?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v51 + 8))(v32, v33);
    v34 = v47;
    v35 = v49;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<String> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySSGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v48 + 8))(v34, v35);
    v36 = v44;
    v37 = v46;
    CRRegister.projectedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CanvasElementFlags> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v45 + 8))(v36, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    UnknownProperties.encode(to:)();
  }

  return result;
}

uint64_t Paper.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v176 = a1;
  v129 = type metadata accessor for UnknownProperties();
  v128 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v127 = &v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v131 = (&v119 - v5);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9Coherence7AnyCRDTVtMd);
  v130 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v126 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v125 = &v119 - v8;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v138 = &v119 - v9;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v135 = &v119 - v10;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v170 = &v119 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v168 = *(v12 - 8);
  v169 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v145 = &v119 - v13;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v140 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v152 = &v119 - v14;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v158 = &v119 - v15;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v161 = &v119 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v163 = *(v17 - 8);
  v164 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v165 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v167 = &v119 - v20;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v174);
  v175 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v119 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v119 - v29;
  type metadata accessor for CGRect(0);
  v32 = v31;
  v33 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_8(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v177 = 0u;
  v178 = 0u;
  CRRegister.init(wrappedValue:)();
  v34 = type metadata accessor for Paper(0);
  v35 = v34[5];
  v177 = 0u;
  v178 = 0u;
  v159 = v35;
  v171 = v33;
  v172 = v32;
  CRRegister.init(wrappedValue:)();
  v36 = v34[6];
  *&v177 = 0;
  v37 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v153 = v36;
  v160 = v37;
  CRRegister.init(wrappedValue:)();
  v38 = v34[7];
  LODWORD(v177) = 1;
  type metadata accessor for CGImagePropertyOrientation(0);
  v40 = v39;
  v41 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_8(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation);
  v146 = v38;
  v166 = v40;
  v157 = v41;
  CRRegister.init(wrappedValue:)();
  v42 = v34[8];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  (*(*(v43 - 8) + 56))(v30, 1, 1, v43);
  outlined init with copy of Date?(v30, v27, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  v44 = lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  v139 = v42;
  v151 = v25;
  v156 = v44;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  v45 = v34[9];
  v46 = type metadata accessor for Color(0);
  (*(*(v46 - 8) + 56))(v24, 1, 1, v46);
  outlined init with copy of Date?(v24, v175, &_s8PaperKit5ColorVSgMd);
  v47 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  v150 = v45;
  v149 = v47;
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s8PaperKit5ColorVSgMd);
  v48 = v34[10];
  *&v177 = 0;
  *(&v177 + 1) = 0xE000000000000000;
  v141 = v48;
  CRRegister.init(wrappedValue:)();
  v49 = v34[11];
  *&v177 = 0;
  v50 = lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  v142 = v49;
  CRRegister.init(wrappedValue:)();
  v51 = v34[12];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v53 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  CROrderedSet.init()();
  v54 = v34[13];
  v175 = a2;
  UnknownProperties.init()();
  v55 = v173;
  v56 = dispatch thunk of CRDecoder.keyedContainer()();
  if (v55)
  {
LABEL_22:

    return outlined destroy of Paper.Partial(v175, type metadata accessor for Paper);
  }

  else
  {
    v57 = v167;
    v124 = v50;
    v122 = v53;
    v123 = v52;
    v121 = v51;
    v58 = v168;
    v59 = v169;
    v60 = v170;
    v120 = v54;
    v173 = v56;
    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      CRRegister.init(from:)();
      v61 = v60;
      (*(v163 + 40))(v175, v57, v164);
    }

    else
    {
      v61 = v60;
    }

    v62 = v59;
    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v63 = v165;
      CRRegister.init(from:)();
      v64 = v58;
      (*(v163 + 40))(v175 + v159, v63, v164);
    }

    else
    {
      v64 = v58;
    }

    v65 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v66 = v162;
    if (v65)
    {
      v67 = v161;
      CRRegister.init(from:)();
      (*(v154 + 40))(v175 + v153, v67, v155);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v68 = v158;
      CRRegister.init(from:)();
      (*(v147 + 40))(v175 + v146, v68, v148);
    }

    if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
    {
      v69 = v152;
      CRRegister.init(from:)();
      (*(v140 + 40))(v175 + v139, v69, v66);
    }

    v70 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v71 = v150;
    if (v70)
    {
      v72 = v145;
      CRRegister.init(from:)();
      (*(v64 + 40))(v175 + v71, v72, v62);
    }

    v73 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v74 = v144;
    v75 = v143;
    v76 = v142;
    v77 = v141;
    if (v73)
    {
      CRRegister.init(from:)();
      (*(v75 + 40))(v175 + v77, v61, v74);
    }

    v78 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v79 = v138;
    v80 = v137;
    v81 = v136;
    v82 = v135;
    if (v78)
    {
      CRRegister.init(from:)();
      (*(v81 + 40))(v175 + v76, v82, v80);
    }

    v83 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
    v84 = v134;
    v85 = v133;
    if (v83)
    {
      CROrderedSet.init(from:)();
      (*(v85 + 40))(v175 + v121, v79, v84);
    }

    v87 = dispatch thunk of CRDecoder.CRDTKeyedContainer.allKeys()();
    v172 = 0;
    v88 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v87);

    *&v177 = v88;
    specialized Set._Variant.remove(_:)(0x73646E756F62, 0xE600000000000000);

    specialized Set._Variant.remove(_:)(0x656D617266, 0xE500000000000000);

    specialized Set._Variant.remove(_:)(0x6E6F697461746F72, 0xE800000000000000);

    specialized Set._Variant.remove(_:)(0x7461746E6569726FLL, 0xEB000000006E6F69);

    specialized Set._Variant.remove(_:)(0x676E6977617264, 0xE700000000000000);

    specialized Set._Variant.remove(_:)(0x756F72676B636162, 0xEF726F6C6F43646ELL);

    specialized Set._Variant.remove(_:)(1701667182, 0xE400000000000000);

    specialized Set._Variant.remove(_:)(0x7367616C66, 0xE500000000000000);

    specialized Set._Variant.remove(_:)(0x656D656C65627573, 0xEB0000000073746ELL);

    v89 = v177;
    v90 = v177 + 56;
    v91 = 1 << *(v177 + 32);
    v92 = -1;
    if (v91 < 64)
    {
      v92 = ~(-1 << v91);
    }

    v93 = v92 & *(v177 + 56);
    v94 = (v91 + 63) >> 6;
    v95 = (v130 + 56);

    v96 = 0;
    v174 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v97 = v96;
      if (!v93)
      {
        break;
      }

LABEL_31:
      v98 = __clz(__rbit64(v93));
      v93 &= v93 - 1;
      v99 = (*(v89 + 48) + ((v96 << 10) | (16 * v98)));
      v101 = *v99;
      v100 = v99[1];

      if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
      {
        v171 = *(v132 + 48);
        v103 = v131;
        *v131 = v101;
        *(v103 + 8) = v100;

        v104 = v172;
        AnyCRDT.init(from:)();
        v172 = v104;
        if (v104)
        {
LABEL_46:

          swift_bridgeObjectRelease_n();
          return outlined destroy of Paper.Partial(v175, type metadata accessor for Paper);
        }

        (*v95)(v103, 0, 1, v132);
        v105 = v125;
        outlined init with take of (String, AnyCRDT)(v103, v125);
        outlined init with take of (String, AnyCRDT)(v105, v126);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v174[2] + 1, 1, v174);
        }

        v106 = v130;
        v108 = v174[2];
        v107 = v174[3];
        v109 = v126;
        if (v108 >= v107 >> 1)
        {
          v111 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v107 > 1, v108 + 1, 1, v174);
          v106 = v130;
          v174 = v111;
          v109 = v126;
        }

        v110 = v174;
        v174[2] = v108 + 1;
        outlined init with take of (String, AnyCRDT)(v109, v110 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v108);
      }

      else
      {

        v102 = v131;
        (*v95)(v131, 1, 1, v132);
        outlined destroy of StocksKitCurrencyCache.Provider?(v102, &_sSS_9Coherence7AnyCRDTVtSgMd);
      }
    }

    while (1)
    {
      v96 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v96 >= v94)
      {
        break;
      }

      v93 = *(v90 + 8 * v96);
      ++v97;
      if (v93)
      {
        goto LABEL_31;
      }
    }

    v112 = v174;
    if (v174[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMd);
      v113 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v113 = MEMORY[0x1E69E7CC8];
    }

    v114 = v129;
    v115 = v128;
    v116 = v127;
    v117 = v120;
    v179 = v113;
    v118 = v172;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v112, 1, &v179);
    if (v118)
    {

      goto LABEL_22;
    }

    UnknownProperties.init(_:)();

    return (*(v115 + 40))(v175 + v117, v116, v114);
  }
}

uint64_t Paper.delta(_:from:)@<X0>(uint64_t a1@<X8>)
{
  v138 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v146 = &v123 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v148 = &v123 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v151 = *(v5 - 8);
  v152 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v137 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v136 = &v123 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v145 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v162 = &v123 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v153 = *(v13 - 8);
  v154 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v135 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v134 = &v123 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v144 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v163 = &v123 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v155 = *(v21 - 8);
  v156 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v133 = &v123 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v132 = &v123 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v143 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v164 = &v123 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v157 = *(v29 - 8);
  v158 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v131 = &v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v130 = &v123 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v142 = &v123 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v165 = &v123 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v38 = *(v37 - 8);
  v159 = v37;
  v160 = v38;
  MEMORY[0x1EEE9AC00](v37);
  v129 = &v123 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v127 = &v123 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v141 = &v123 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v166 = &v123 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v47 = *(v46 - 8);
  v149 = v46;
  v150 = v47;
  MEMORY[0x1EEE9AC00](v46);
  v125 = &v123 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v124 = &v123 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v140 = &v123 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v161 = &v123 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v126 = v55;
  v128 = *(v55 - 8);
  v56 = v128;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v123 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v123 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v62 - 8);
  v139 = &v123 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v123 = &v123 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v167 = &v123 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v147 = &v123 - v69;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v70 = *(v56 + 8);
  v70(v58, v55);
  v70(v61, v55);
  type metadata accessor for Paper(0);
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v70(v58, v55);
  v70(v61, v55);
  v71 = v124;
  v72 = v149;
  CRRegister.projectedValue.getter();
  v73 = v125;
  CRRegister.projectedValue.getter();
  v74 = v73;
  CRRegister.delta(_:from:)();
  v75 = *(v150 + 8);
  v75(v74, v72);
  v75(v71, v72);
  v76 = v127;
  v77 = v159;
  CRRegister.projectedValue.getter();
  v78 = v129;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v79 = *(v160 + 8);
  v79(v78, v77);
  v79(v76, v77);
  v80 = v130;
  v81 = v158;
  CRRegister.projectedValue.getter();
  v82 = v131;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v83 = *(v157 + 8);
  v83(v82, v81);
  v83(v80, v81);
  v84 = v132;
  v85 = v156;
  CRRegister.projectedValue.getter();
  v86 = v133;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v87 = *(v155 + 8);
  v87(v86, v85);
  v87(v84, v85);
  v88 = v134;
  v89 = v154;
  CRRegister.projectedValue.getter();
  v90 = v135;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v91 = *(v153 + 8);
  v91(v90, v89);
  v91(v88, v89);
  v92 = v136;
  v93 = v152;
  CRRegister.projectedValue.getter();
  v94 = v137;
  CRRegister.projectedValue.getter();
  CRRegister.delta(_:from:)();
  v95 = *(v151 + 8);
  v96 = v94;
  v97 = v149;
  v95(v96, v93);
  v98 = v92;
  v99 = v147;
  v95(v98, v93);
  v100 = v161;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v101 = v150;
  v102 = v148;
  CROrderedSet.delta(_:from:)();
  v103 = v128;
  v104 = *(v128 + 48);
  v105 = v126;
  if (v104(v99, 1) == 1 && (v104)(v167, 1, v105) == 1 && (*(v101 + 48))(v100, 1, v97) == 1 && (*(v160 + 48))(v166, 1, v159) == 1 && (*(v157 + 48))(v165, 1, v158) == 1 && (*(v155 + 48))(v164, 1, v156) == 1 && (*(v153 + 48))(v163, 1, v154) == 1 && (*(v151 + 48))(v162, 1, v152) == 1 && (v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd), (*(*(v106 - 8) + 48))(v102, 1, v106) == 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v99, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v107 = type metadata accessor for Paper.Partial(0);
    (*(*(v107 - 8) + 56))(v138, 1, 1, v107);
  }

  else
  {
    v108 = v123;
    outlined init with copy of Date?(v99, v123, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    outlined init with copy of Date?(v167, v139, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    outlined init with copy of Date?(v100, v140, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    outlined init with copy of Date?(v166, v141, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
    outlined init with copy of Date?(v165, v142, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
    outlined init with copy of Date?(v164, v143, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    outlined init with copy of Date?(v163, v144, &_s9Coherence10CRRegisterVySSGSgMd);
    outlined init with copy of Date?(v162, v145, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
    outlined init with copy of Date?(v102, v146, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
    v109 = *(v103 + 56);
    v110 = v138;
    v109(v138, 1, 1, v105);
    v111 = type metadata accessor for Paper.Partial(0);
    v137 = v111[5];
    v109(&v137[v110], 1, 1, v105);
    v136 = v111[6];
    (*(v101 + 56))(&v136[v110], 1, 1, v97);
    v112 = v111[7];
    (*(v160 + 56))(v110 + v112, 1, 1, v159);
    v113 = v111[8];
    (*(v157 + 56))(v110 + v113, 1, 1, v158);
    v114 = v111[9];
    (*(v155 + 56))(v110 + v114, 1, 1, v156);
    v115 = v111[10];
    (*(v153 + 56))(v110 + v115, 1, 1, v154);
    v116 = v111[11];
    (*(v151 + 56))(v110 + v116, 1, 1, v152);
    v117 = v111[12];
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd);
    (*(*(v118 - 8) + 56))(v110 + v117, 1, 1, v118);
    outlined assign with take of UUID?(v108, v110, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    outlined assign with take of UUID?(v139, &v137[v110], &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    outlined assign with take of UUID?(v140, &v136[v110], &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    outlined assign with take of UUID?(v141, v110 + v112, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
    outlined assign with take of UUID?(v142, v110 + v113, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
    v119 = v110 + v114;
    v102 = v148;
    outlined assign with take of UUID?(v143, v119, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    outlined assign with take of UUID?(v144, v110 + v115, &_s9Coherence10CRRegisterVySSGSgMd);
    outlined assign with take of UUID?(v145, v110 + v116, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
    outlined assign with take of UUID?(v146, v110 + v117, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v147, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v120 = *(*(v111 - 1) + 56);
    v121 = v111;
    v100 = v161;
    v120(v110, 0, 1, v121);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v102, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v162, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v163, &_s9Coherence10CRRegisterVySSGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v164, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v165, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v166, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v100, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v167, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
}

BOOL Paper.canMerge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v126 = &v116 - v4;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd);
  v127 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v117 = &v116 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v131 = &v116 - v7;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v132 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v119 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v118 = &v116 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v150 = &v116 - v12;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v136 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v121 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v120 = &v116 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v149 = &v116 - v17;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v140 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v124 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v123 = &v116 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v143 = &v116 - v22;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v148 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v129 = &v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v128 = &v116 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v151 = &v116 - v27;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v147 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v134 = &v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v133 = &v116 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v144 = &v116 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v145 = *(v33 - 8);
  v146 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v138 = &v116 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v137 = &v116 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v39 = &v116 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v116 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v44 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v141 = &v116 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v116 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v116 - v50;
  v152 = a1;
  outlined init with copy of Date?(a1, v42, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v52 = *(v44 + 48);
  v53 = v52(v42, 1, v43);
  v153 = v1;
  if (v53 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    (*(v44 + 32))(v51, v42, v43);
    CRRegister.projectedValue.getter();
    v54 = CRRegister.canMerge(delta:)();
    v55 = *(v44 + 8);
    v55(v48, v43);
    v55(v51, v43);
    if ((v54 & 1) == 0)
    {
      return 0;
    }
  }

  v154 = type metadata accessor for Paper.Partial(0);
  v56 = v152;
  outlined init with copy of Date?(v152 + v154[5], v39, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v52(v39, 1, v43) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v39, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v57 = v151;
  }

  else
  {
    v58 = v141;
    (*(v44 + 32))(v141, v39, v43);
    type metadata accessor for Paper(0);
    CRRegister.projectedValue.getter();
    v59 = CRRegister.canMerge(delta:)();
    v60 = *(v44 + 8);
    v60(v48, v43);
    v60(v58, v43);
    v57 = v151;
    if ((v59 & 1) == 0)
    {
      return 0;
    }
  }

  v61 = v144;
  outlined init with copy of Date?(v56 + v154[6], v144, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v63 = v145;
  v62 = v146;
  if ((*(v145 + 48))(v61, 1, v146) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v65 = v149;
    v64 = v150;
    v66 = v147;
    v67 = v148;
  }

  else
  {
    v68 = v137;
    (*(v63 + 32))(v137, v61, v62);
    type metadata accessor for Paper(0);
    v69 = v138;
    CRRegister.projectedValue.getter();
    v70 = CRRegister.canMerge(delta:)();
    v71 = *(v63 + 8);
    v71(v69, v62);
    v71(v68, v62);
    v65 = v149;
    v64 = v150;
    v66 = v147;
    v67 = v148;
    if ((v70 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v56 + v154[7], v57, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  v72 = v142;
  if ((*(v66 + 48))(v57, 1, v142) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v57, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
    v73 = v143;
  }

  else
  {
    v74 = v133;
    (*(v66 + 32))(v133, v57, v72);
    type metadata accessor for Paper(0);
    v75 = v65;
    v76 = v134;
    CRRegister.projectedValue.getter();
    v77 = v72;
    v78 = CRRegister.canMerge(delta:)();
    v79 = *(v66 + 8);
    v80 = v76;
    v65 = v75;
    v79(v80, v77);
    v81 = v74;
    v56 = v152;
    v79(v81, v77);
    v73 = v143;
    if ((v78 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v56 + v154[8], v73, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  v82 = v139;
  if ((*(v67 + 48))(v73, 1, v139) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v73, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
    v83 = v140;
  }

  else
  {
    v84 = v128;
    (*(v67 + 32))(v128, v73, v82);
    type metadata accessor for Paper(0);
    v85 = v129;
    CRRegister.projectedValue.getter();
    v86 = v82;
    v87 = CRRegister.canMerge(delta:)();
    v88 = *(v67 + 8);
    v88(v85, v86);
    v88(v84, v86);
    v83 = v140;
    if ((v87 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v56 + v154[9], v65, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  v89 = v135;
  if ((*(v83 + 48))(v65, 1, v135) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v65, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    v90 = v136;
  }

  else
  {
    v91 = v123;
    (*(v83 + 32))(v123, v65, v89);
    type metadata accessor for Paper(0);
    v92 = v124;
    CRRegister.projectedValue.getter();
    v93 = v89;
    v94 = CRRegister.canMerge(delta:)();
    v95 = *(v83 + 8);
    v95(v92, v93);
    v95(v91, v93);
    v90 = v136;
    if ((v94 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v56 + v154[10], v64, &_s9Coherence10CRRegisterVySSGSgMd);
  v96 = v130;
  if ((*(v90 + 48))(v64, 1, v130) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v64, &_s9Coherence10CRRegisterVySSGSgMd);
    v97 = v132;
    v98 = v131;
  }

  else
  {
    v99 = v120;
    (*(v90 + 32))(v120, v64, v96);
    type metadata accessor for Paper(0);
    v100 = v121;
    CRRegister.projectedValue.getter();
    v101 = v96;
    v102 = CRRegister.canMerge(delta:)();
    v103 = *(v90 + 8);
    v103(v100, v101);
    v103(v99, v101);
    v97 = v132;
    v98 = v131;
    if ((v102 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v56 + v154[11], v98, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  v104 = v125;
  if ((*(v97 + 48))(v98, 1, v125) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v98, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
    v105 = v127;
    v106 = v126;
  }

  else
  {
    v107 = v118;
    (*(v97 + 32))(v118, v98, v104);
    type metadata accessor for Paper(0);
    v108 = v119;
    CRRegister.projectedValue.getter();
    v109 = CRRegister.canMerge(delta:)();
    v110 = *(v97 + 8);
    v110(v108, v104);
    v110(v107, v104);
    v105 = v127;
    v106 = v126;
    if ((v109 & 1) == 0)
    {
      return 0;
    }
  }

  outlined init with copy of Date?(v56 + v154[12], v106, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  v111 = v122;
  if ((*(v105 + 48))(v106, 1, v122) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v106, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
    return 1;
  }

  v112 = v106;
  v113 = v117;
  (*(v105 + 32))(v117, v112, v111);
  type metadata accessor for Paper(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v114 = CROrderedSet.canMerge(delta:)();
  (*(v105 + 8))(v113, v111);
  return (v114 & 1) != 0;
}

BOOL Paper.merge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v160 = &v121[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd);
  v161 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v143 = &v121[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v157 = &v121[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v158 = *(v9 - 8);
  v159 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v142 = &v121[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v141 = &v121[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v140 = &v121[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v154 = &v121[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v155 = *(v17 - 8);
  v156 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v139 = &v121[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v138 = &v121[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v137 = &v121[-v22];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v152 = &v121[-v24];
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v153 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v136 = &v121[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v26);
  v135 = &v121[-v27];
  MEMORY[0x1EEE9AC00](v28);
  v134 = &v121[-v29];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v150 = &v121[-v31];
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v151 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v133 = &v121[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v33);
  v132 = &v121[-v34];
  MEMORY[0x1EEE9AC00](v35);
  v131 = &v121[-v36];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v147 = &v121[-v38];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v148 = *(v39 - 8);
  v149 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v130 = &v121[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v41);
  v129 = &v121[-v42];
  MEMORY[0x1EEE9AC00](v43);
  v128 = &v121[-v44];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v144 = &v121[-v46];
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v127 = &v121[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v48);
  v126 = &v121[-v49];
  MEMORY[0x1EEE9AC00](v50);
  v125 = &v121[-v51];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v54 = &v121[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v121[-v56];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v59 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v124 = &v121[-((v60 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v121[-v62];
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v121[-v65];
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v121[-v68];
  v70 = Paper.canMerge(delta:)(a1);
  if (v70)
  {
    v122 = v70;
    v123 = v5;
    v164 = a1;
    v165 = v1;
    outlined init with copy of Date?(a1, v57, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v71 = *(v59 + 48);
    if (v71(v57, 1, v58) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v57, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      (*(v59 + 32))(v69, v57, v58);
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v59 + 16))(v63, v66, v58);
      CRRegister.projectedValue.setter();
      v72 = *(v59 + 8);
      v72(v66, v58);
      v72(v69, v58);
    }

    v166 = type metadata accessor for Paper.Partial(0);
    v73 = v164;
    outlined init with copy of Date?(v164 + v166[5], v54, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    if (v71(v54, 1, v58) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v54, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v74 = v124;
      (*(v59 + 32))(v124, v54, v58);
      type metadata accessor for Paper(0);
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v59 + 16))(v63, v66, v58);
      CRRegister.projectedValue.setter();
      v75 = *(v59 + 8);
      v75(v66, v58);
      v75(v74, v58);
    }

    v76 = v162;
    v77 = v149;
    v78 = v144;
    outlined init with copy of Date?(v73 + v166[6], v144, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v79 = v145;
    v80 = v146;
    if ((*(v145 + 48))(v78, 1, v146) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v78, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v81 = v125;
      (*(v79 + 32))(v125, v78, v80);
      type metadata accessor for Paper(0);
      v82 = v126;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v79 + 16))(v127, v82, v80);
      CRRegister.projectedValue.setter();
      v83 = *(v79 + 8);
      v84 = v82;
      v76 = v162;
      v83(v84, v80);
      v83(v81, v80);
    }

    v86 = v147;
    v85 = v148;
    outlined init with copy of Date?(v73 + v166[7], v147, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
    if ((*(v85 + 48))(v86, 1, v77) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v86, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v87 = v128;
      (*(v85 + 32))(v128, v86, v77);
      type metadata accessor for Paper(0);
      v88 = v129;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v85 + 16))(v130, v88, v77);
      CRRegister.projectedValue.setter();
      v89 = *(v85 + 8);
      v89(v88, v77);
      v89(v87, v77);
    }

    v90 = v150;
    v91 = v151;
    v92 = v153;
    outlined init with copy of Date?(v164 + v166[8], v150, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
    if ((*(v91 + 48))(v90, 1, v76) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
    }

    else
    {
      v93 = v131;
      (*(v91 + 32))(v131, v90, v76);
      type metadata accessor for Paper(0);
      v94 = v132;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v91 + 16))(v133, v94, v76);
      CRRegister.projectedValue.setter();
      v95 = *(v91 + 8);
      v95(v94, v76);
      v95(v93, v76);
    }

    v96 = v152;
    v97 = v164;
    outlined init with copy of Date?(v164 + v166[9], v152, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    v98 = (*(v92 + 48))(v96, 1, v163);
    v99 = v155;
    if (v98 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v96, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd);
    }

    else
    {
      v100 = v134;
      v101 = v163;
      (*(v92 + 32))(v134, v96, v163);
      type metadata accessor for Paper(0);
      v102 = v135;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v92 + 16))(v136, v102, v101);
      CRRegister.projectedValue.setter();
      v103 = *(v92 + 8);
      v103(v102, v101);
      v104 = v101;
      v97 = v164;
      v103(v100, v104);
    }

    v105 = v154;
    v107 = v158;
    v106 = v159;
    v108 = v156;
    outlined init with copy of Date?(v97 + v166[10], v154, &_s9Coherence10CRRegisterVySSGSgMd);
    if ((*(v99 + 48))(v105, 1, v108) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v105, &_s9Coherence10CRRegisterVySSGSgMd);
    }

    else
    {
      v109 = v137;
      (*(v99 + 32))(v137, v105, v108);
      type metadata accessor for Paper(0);
      v110 = v138;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v99 + 16))(v139, v110, v108);
      v97 = v164;
      CRRegister.projectedValue.setter();
      v111 = *(v99 + 8);
      v111(v110, v108);
      v111(v109, v108);
    }

    v112 = v157;
    v113 = v123;
    outlined init with copy of Date?(v97 + v166[11], v157, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
    if ((*(v107 + 48))(v112, 1, v106) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v112, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd);
    }

    else
    {
      v114 = v140;
      (*(v107 + 32))(v140, v112, v106);
      type metadata accessor for Paper(0);
      v115 = v141;
      CRRegister.projectedValue.getter();
      CRRegister.merge(delta:)();
      (*(v107 + 16))(v142, v115, v106);
      CRRegister.projectedValue.setter();
      v116 = *(v107 + 8);
      v116(v115, v106);
      v116(v114, v106);
    }

    v117 = v160;
    v118 = v161;
    outlined init with copy of Date?(v97 + v166[12], v160, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
    if ((*(v118 + 48))(v117, 1, v113) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v117, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
    }

    else
    {
      v119 = v143;
      (*(v118 + 32))(v143, v117, v113);
      type metadata accessor for Paper(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
      CROrderedSet.merge(delta:)();
      (*(v118 + 8))(v119, v113);
    }

    LOBYTE(v70) = v122;
  }

  return v70;
}

uint64_t protocol witness for CRDT.context.getter in conformance Paper(uint64_t a1)
{
  v2 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_8(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t protocol witness for CRMergeable.merge(_:) in conformance Paper(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Paper.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t specialized static Paper.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v70 = v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v69 = v68 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd);
  v75 = *(v7 - 8);
  v76 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v74 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v73 = v68 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v79 = *(v11 - 8);
  v80 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v78 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v77 = v68 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v83 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v82 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v81 = v68 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v86 = *(v19 - 8);
  v87 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v85 = v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v84 = v68 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v89 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v88 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v68 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v68 - v33;
  v90 = a1;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v35 = *(v29 + 8);
  v35(v31, v28);
  v35(v34, v28);
  if ((a1 & 1) != 0
    && (v68[0] = v15, v36 = type metadata accessor for Paper(0), CRRegister.projectedValue.getter(), v68[1] = v36, CRRegister.projectedValue.getter(), v37 = dispatch thunk of static Equatable.== infix(_:_:)(), v35(v31, v28), v35(v34, v28), (v37 & 1) != 0)
    && (CRRegister.projectedValue.getter(), v38 = v88, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd), v39 = dispatch thunk of static Equatable.== infix(_:_:)(), v40 = *(v89 + 8), v40(v38, v23), v40(v27, v23), (v39 & 1) != 0)
    && (v41 = v84, v42 = v87, CRRegister.projectedValue.getter(), v43 = v85, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGImagePropertyOrientation> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd), v44 = dispatch thunk of static Equatable.== infix(_:_:)(), v45 = *(v86 + 8), v45(v43, v42), v45(v41, v42), (v44 & 1) != 0)
    && (v46 = v81, v47 = v68[0], CRRegister.projectedValue.getter(), v48 = v82, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Ref<PKDrawingStruct>?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd), v49 = dispatch thunk of static Equatable.== infix(_:_:)(), v50 = *(v83 + 8), v50(v48, v47), v50(v46, v47), (v49 & 1) != 0)
    && (v51 = v77, v52 = v80, CRRegister.projectedValue.getter(), v53 = v78, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Color?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd), v54 = dispatch thunk of static Equatable.== infix(_:_:)(), v55 = *(v79 + 8), v55(v53, v52), v55(v51, v52), (v54 & 1) != 0)
    && (v56 = v73, v57 = v76, CRRegister.projectedValue.getter(), v58 = v74, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<String> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySSGMd), v59 = dispatch thunk of static Equatable.== infix(_:_:)(), v60 = *(v75 + 8), v60(v58, v57), v60(v56, v57), (v59 & 1) != 0)
    && (v61 = v69, v62 = v72, CRRegister.projectedValue.getter(), v63 = v70, CRRegister.projectedValue.getter(), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CanvasElementFlags> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd), v64 = dispatch thunk of static Equatable.== infix(_:_:)(), v65 = *(v71 + 8), v65(v63, v62), v65(v61, v62), (v64 & 1) != 0)
    && (__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0))
  {
    v66 = static UnknownProperties.== infix(_:_:)();
  }

  else
  {
    v66 = 0;
  }

  return v66 & 1;
}

uint64_t specialized Paper.finishDecode(from:pageID:assetManager:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v33 - v12;
  [a1 boundsForBox_];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v33 = a1;
  [a1 boundsForBox_];
  v23 = v22;
  v25 = v24;
  v36.origin.x = v15;
  v36.origin.y = v17;
  v36.size.width = v19;
  v36.size.height = v21;
  MinX = CGRectGetMinX(v36);
  v37.origin.x = v15;
  v37.origin.y = v17;
  v37.size.width = v19;
  v37.size.height = v21;
  v27 = v25 + v23 + v23 - CGRectGetMaxY(v37);
  v38.origin.x = v15;
  v38.origin.y = v17;
  v38.size.width = v19;
  v38.size.height = v21;
  Width = CGRectGetWidth(v38);
  v39.origin.x = v15;
  v39.origin.y = v17;
  v39.size.width = v19;
  v39.size.height = v21;
  Height = CGRectGetHeight(v39);
  v34 = v1;
  CRRegister.projectedValue.getter();
  CRRegister.value.getter();
  v40.origin.x = MinX;
  v40.origin.y = v27;
  v40.size.width = Width;
  v40.size.height = Height;
  if (!CGRectEqualToRect(v35, v40))
  {
    v35.origin.x = MinX;
    v35.origin.y = v27;
    v35.size.width = Width;
    v35.size.height = Height;
    CRRegister.value.setter();
  }

  v30 = *(v4 + 16);
  v30(v9, v13, v3);
  CRRegister.projectedValue.setter();
  v31 = *(v4 + 8);
  v31(v13, v3);
  type metadata accessor for Paper(0);
  CRRegister.projectedValue.getter();
  CRRegister.value.getter();
  v41.origin.x = MinX;
  v41.origin.y = v27;
  v41.size.width = Width;
  v41.size.height = Height;
  if (!CGRectEqualToRect(v35, v41))
  {
    v35.origin.x = MinX;
    v35.origin.y = v27;
    v35.size.width = Width;
    v35.size.height = Height;
    CRRegister.value.setter();
  }

  v30(v9, v6, v3);
  CRRegister.projectedValue.setter();
  v31(v6, v3);
  LODWORD(v35.origin.x) = specialized CGImagePropertyOrientation.init(rotationAngle:)([v33 rotation] / 180.0 * 3.14159265);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.setter();
  return 1;
}

uint64_t outlined init with take of Paper.MutatingAction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Paper.MutatingAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Paper.Partial(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata completion function for Paper.ObservableDifference()
{
  type metadata accessor for CRValueObservableDifference?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for Ref<PKDrawingStruct>.ObservableDifference?, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CROrderedSet<SharedTagged_10<TaggedCanvasElement>>.ObservableDifference?, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Paper.MutatingAction()
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGRect>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGFloat>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGImagePropertyOrientation>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GMd);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Ref<PKDrawingStruct>?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GMd);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Color?>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GMd);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<String>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVySS_GMd);
            if (v5 <= 0x3F)
            {
              type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CanvasElementFlags>.MutatingAction?, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GMd);
              if (v6 <= 0x3F)
              {
                type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CROrderedSet<SharedTagged_10<TaggedCanvasElement>>.MutatingAction?, &_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata completion function for Paper.Partial()
{
  type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGRect>?, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGFloat>?, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CGImagePropertyOrientation>?, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Ref<PKDrawingStruct>?>?, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<Color?>?, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<String>?, &_s9Coherence10CRRegisterVySSGMd);
            if (v5 <= 0x3F)
            {
              type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CRRegister<CanvasElementFlags>?, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd);
              if (v6 <= 0x3F)
              {
                type metadata accessor for Ref<PKStrokeInheritedProperties>.ObservableDifference?(319, &lazy cache variable for type metadata for CROrderedSet<SharedTagged_10<TaggedCanvasElement>>.MergeableDelta?, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void PKInk.tool.getter(uint64_t *a1@<X8>)
{
  v2 = objc_opt_self();
  isa = PKInk._bridgeToObjectiveC()().super.isa;
  v17 = [v2 _toolWithInk_];

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v4 = type metadata accessor for PKGenerationTool();
    v5 = MEMORY[0x1E6978398];
    a1[3] = v4;
    a1[4] = v5;
    __swift_allocate_boxed_opaque_existential_1(a1);
    PKGenerationTool.init()();
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v6 = type metadata accessor for PKInkingTool();
      v7 = MEMORY[0x1E6978370];
      a1[3] = v6;
      a1[4] = v7;
      __swift_allocate_boxed_opaque_existential_1(a1);
      v8 = v17;
      static PKInkingTool._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v9 = type metadata accessor for PKEraserTool();
        v10 = MEMORY[0x1E6978310];
        a1[3] = v9;
        a1[4] = v10;
        __swift_allocate_boxed_opaque_existential_1(a1);
        v11 = v17;
        static PKEraserTool._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v12 = type metadata accessor for PKLassoTool();
          v13 = MEMORY[0x1E69782F8];
          a1[3] = v12;
          a1[4] = v13;
          __swift_allocate_boxed_opaque_existential_1(a1);
          v14 = v17;
          static PKLassoTool._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return;
          }

          v15 = type metadata accessor for PKHandwritingTool();
          v16 = MEMORY[0x1E69783A0];
          a1[3] = v15;
          a1[4] = v16;
          __swift_allocate_boxed_opaque_existential_1(a1);
          PKHandwritingTool.init()();
        }
      }
    }
  }
}

uint64_t PKTool_decode(dataRepresentation:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a3;
  v5 = type metadata accessor for Color(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v60 = (&v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit12PKInkingToolV7InkTypeOSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v61 = &v57 - v8;
  v9 = type metadata accessor for PKInkingTool.InkType();
  v62 = *(v9 - 8);
  v63 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - v12;
  v14 = type metadata accessor for PKEraserTool.EraserType();
  v64 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit017ValueTypes_PencilB4ToolVSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v57 - v19;
  v21 = type metadata accessor for ValueTypes_PencilKitTool(0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = a1;
  v70 = a2;
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool();
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v57 = v13;
  v25 = v65;
  (*(v22 + 56))(v20, 0, 1, v21);
  outlined init with take of ValueTypes_PencilKitTool(v20, v24);
  v26 = *v24;
  v27 = v24[1];
  v29 = v24;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v26 && v28 == v27)
  {

    v30 = v16;
LABEL_5:
    (*(v64 + 104))(v30, *MEMORY[0x1E6978300], v14);
    v32 = type metadata accessor for PKEraserTool();
    v33 = MEMORY[0x1E6978310];
    *(v25 + 24) = v32;
    *(v25 + 32) = v33;
    __swift_allocate_boxed_opaque_existential_1(v25);
    PKEraserTool.init(_:width:)();
LABEL_6:
    v34 = v29;
    return outlined destroy of ValueTypes_PencilKitTool(v34, type metadata accessor for ValueTypes_PencilKitTool);
  }

  v58 = v24;
  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v29 = v58;

  v30 = v16;
  if (v31)
  {
    goto LABEL_5;
  }

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v64;
  if (v36 == v26 && v37 == v27)
  {

LABEL_12:
    (*(v38 + 104))(v30, *MEMORY[0x1E6978308], v14);
    v40 = type metadata accessor for PKEraserTool();
    v41 = MEMORY[0x1E6978310];
    *(v25 + 24) = v40;
    *(v25 + 32) = v41;
    __swift_allocate_boxed_opaque_existential_1(v25);
    PKEraserTool.init(_:)();
    goto LABEL_6;
  }

  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v29 = v58;

  if (v39)
  {
    goto LABEL_12;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v26 && v42 == v27)
  {

    v43 = v25;
LABEL_17:
    v45 = type metadata accessor for PKLassoTool();
    v46 = MEMORY[0x1E69782F8];
    v43[3] = v45;
    v43[4] = v46;
    __swift_allocate_boxed_opaque_existential_1(v43);
    PKLassoTool.init()();
    v34 = v58;
    return outlined destroy of ValueTypes_PencilKitTool(v34, type metadata accessor for ValueTypes_PencilKitTool);
  }

  v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v43 = v25;
  if (v44)
  {
    goto LABEL_17;
  }

  v47 = v61;
  PKInkingTool.InkType.init(rawValue:)();
  v49 = v62;
  v48 = v63;
  if ((*(v62 + 48))(v47, 1, v63) != 1)
  {
    v50 = v57;
    (*(v49 + 32))(v57, v47, v48);
    v51 = v58;
    v52 = v58[2];
    v53 = v58[3];
    outlined copy of Data._Representation(v52, v53);
    v54 = v60;
    Color.init(dataRepresentation:)(v52, v53, v60);
    [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
    outlined destroy of ValueTypes_PencilKitTool(v54, type metadata accessor for Color);
    (*(v49 + 16))(v59, v50, v48);
    v55 = type metadata accessor for PKInkingTool();
    v56 = MEMORY[0x1E6978370];
    v43[3] = v55;
    v43[4] = v56;
    __swift_allocate_boxed_opaque_existential_1(v43);
    PKInkingTool.init(_:color:width:azimuth:)();
    (*(v49 + 8))(v50, v48);
    v34 = v51;
    return outlined destroy of ValueTypes_PencilKitTool(v34, type metadata accessor for ValueTypes_PencilKitTool);
  }

  outlined destroy of ValueTypes_PencilKitTool(v58, type metadata accessor for ValueTypes_PencilKitTool);
  result = outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s9PencilKit12PKInkingToolV7InkTypeOSgMd);
  *(v25 + 32) = 0;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  return result;
}

void PKToolPickerItem.ink.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for PKLassoTool();
  v39 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PKEraserTool();
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PKInkingTool();
  v40 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PKInk();
  v42 = *(v12 - 8);
  v43 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - v16;
  objc_opt_self();
  v18 = v2;
  if (swift_dynamicCastObjCClass())
  {
    v19 = [objc_allocWithZone(MEMORY[0x1E6978438]) init];
    v20 = [v19 ink];

    if (v20)
    {
      static PKInk._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v42 + 32))(v44, v17, v43);
      return;
    }

    __break(1u);
    goto LABEL_20;
  }

  v37 = v15;
  v38 = v6;
  v22 = v40;
  v21 = v41;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v23 = v18;
    PKToolPickerInkingItem.inkingTool.getter();
    PKInkingTool.ink.getter();

    (*(v22 + 8))(v11, v9);
    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v24 = v18;
    PKToolPickerEraserItem.eraserTool.getter();
    specialized PKTool.ink.getter();

    (*(v21 + 8))(v8, v38);
    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v25 = v18;
    PKToolPickerLassoItem.lassoTool.getter();
    specialized PKTool.ink.getter();

    (*(v39 + 8))(v5, v3);
    return;
  }

  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (!v26)
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
LABEL_21:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v34 = [objc_allocWithZone(MEMORY[0x1E6978440]) init];
    v35 = [v34 ink];

    v36 = v37;
    if (v35)
    {
      static PKInk._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v42 + 32))(v44, v36, v43);
      return;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v27 = v26;
  v43 = v18;
  v28 = [v27 identifier];
  if (!v28)
  {
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = MEMORY[0x1DA6CCED0](v29);
  }

  v30 = [v27 color];
  [v27 width];
  v32 = [objc_opt_self() inkWithIdentifier:v28 color:v30 weight:v31];

  static PKInk._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v43;
}

void specialized PKTool.ink.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PKEraserTool();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = *(v3 + 16);
  v10(&v15 - v11, v1, v2);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKInkingTool);
  if (swift_dynamicCast())
  {
    v12 = v16;
    v13 = [v16 ink];
LABEL_7:
    static PKInk._unconditionallyBridgeFromObjectiveC(_:)();

    return;
  }

  v10(v9, v1, v2);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKEraserTool);
  swift_dynamicCast();
  v13 = v16;
  v14 = [v16 ink];
  if (v14)
  {
LABEL_6:
    v12 = v14;
    goto LABEL_7;
  }

  v10(v6, v1, v2);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKLassoTool);
  if (swift_dynamicCast())
  {
    v13 = v16;
    v14 = [v16 ink];
    if (v14)
    {
      goto LABEL_6;
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v1 = v0;
  v2 = type metadata accessor for PKLassoTool();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = *(v3 + 16);
  v10(&v15 - v11, v1, v2);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKInkingTool);
  if (swift_dynamicCast())
  {
    v12 = v16;
    v13 = [v16 ink];
LABEL_8:
    static PKInk._unconditionallyBridgeFromObjectiveC(_:)();

    return;
  }

  v10(v9, v1, v2);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKEraserTool);
  if (swift_dynamicCast())
  {
    v13 = v16;
    v14 = [v16 ink];
    if (v14)
    {
LABEL_7:
      v12 = v14;
      goto LABEL_8;
    }
  }

  v10(v6, v1, v2);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKLassoTool);
  swift_dynamicCast();
  v13 = v16;
  v14 = [v16 ink];
  if (v14)
  {
    goto LABEL_7;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void PKTool.ink.getter(char *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit12PKCustomToolVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v65 = &v60 - v5;
  v6 = type metadata accessor for PKCustomTool();
  v67 = *(v6 - 8);
  v68 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for PKHandwritingTool();
  v63 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PKInk();
  v75 = *(v9 - 8);
  v76 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v64 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v61 = &v60 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v69 = &v60 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v74 = &v60 - v16;
  v17 = type metadata accessor for PKGenerationTool();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v62 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v70 = &v60 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v72 = &v60 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v60 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v60 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = *(v34 + 16);
  v35(&v60 - v36);
  if (swift_dynamicCast())
  {
    (*(v18 + 8))(v21, v17);
    v37 = [objc_allocWithZone(MEMORY[0x1E6978438]) init];
    v38 = [v37 ink];

    if (v38)
    {
      v40 = v74;
LABEL_4:
      static PKInk._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_5:

      (*(v75 + 32))(v77, v40, v76);
      return;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  (v35)(v33, v2, a1);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKInkingTool);
  if (swift_dynamicCast())
  {
    v41 = v78;
    v42 = [v78 ink];
    static PKInk._unconditionallyBridgeFromObjectiveC(_:)();

    return;
  }

  v43 = a1;
  (v35)(v30, v2, a1);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKEraserTool);
  if (swift_dynamicCast())
  {
    v38 = v78;
    v44 = [v78 ink];
    a1 = v73;
    if (v44)
    {
      v40 = v69;
      v45 = v44;
      static PKInk._unconditionallyBridgeFromObjectiveC(_:)();

      goto LABEL_5;
    }
  }

  else
  {
    a1 = v73;
  }

  (v35)(v72, v2, v43);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKLassoTool);
  if (swift_dynamicCast())
  {
    v46 = v78;
    v47 = [v78 ink];
    if (v47)
    {
      v48 = v61;
      v49 = v47;
      static PKInk._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v75 + 32))(v77, v48, v76);
      return;
    }
  }

  v50 = v71;
  (v35)(v70, v2, v43);
  if (swift_dynamicCast())
  {
    (*(v63 + 8))(a1, v50);
    v51 = [objc_allocWithZone(MEMORY[0x1E6978440]) init];
    v38 = [v51 ink];

    if (v38)
    {
      v40 = v64;
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  (v35)(v62, v2, v43);
  v38 = v65;
  a1 = v68;
  v52 = swift_dynamicCast();
  v53 = v67;
  v39 = *(v67 + 56);
  if (v52)
  {
    v39(v38, 0, 1, a1);
    v54 = v66;
    (*(v53 + 32))(v66, v38, a1);
    v55 = PKCustomTool.customIdentifier.getter();
    v56 = MEMORY[0x1DA6CCED0](v55);

    v57 = PKCustomTool.color.getter();
    PKCustomTool.weight.getter();
    v59 = [objc_opt_self() inkWithIdentifier:v56 color:v57 weight:v58];

    static PKInk._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v53 + 8))(v54, a1);
    return;
  }

LABEL_24:
  v39(v38, 1, 1, a1);
  outlined destroy of StocksKitCurrencyCache.Provider?(v38, &_s9PencilKit12PKCustomToolVSgMd);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool()
{
  result = lazy protocol witness table cache variable for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool;
  if (!lazy protocol witness table cache variable for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool)
  {
    type metadata accessor for ValueTypes_PencilKitTool(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ValueTypes_PencilKitTool and conformance ValueTypes_PencilKitTool);
  }

  return result;
}

uint64_t outlined init with take of ValueTypes_PencilKitTool(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValueTypes_PencilKitTool(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ValueTypes_PencilKitTool(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Link.synapseDataRepresentation.getter()
{
  type metadata accessor for Link(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

double key path getter for Link.synapseDataRepresentation : Link@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for Link(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  CRRegister.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t key path setter for Link.synapseDataRepresentation : Link(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for Link(0);
  outlined copy of Data?(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t Link.synapseDataRepresentation.setter()
{
  type metadata accessor for Link(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  return CRRegister.wrappedValue.setter();
}

double Link.rotation.getter()
{
  type metadata accessor for Link(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

double key path getter for Link.rotation : Link@<D0>(double *a1@<X8>)
{
  type metadata accessor for Link(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t key path setter for Link.rotation : Link()
{
  type metadata accessor for Link(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t Link.rotation.setter()
{
  type metadata accessor for Link(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

double Link.frame.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t (*Link.frame.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t Link.$frame.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);

  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Link.$frame : Link(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Link.$frame.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

void (*Link.$frame.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$inherited.modify;
}

uint64_t (*Link.rotation.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Link(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t Link.$rotation.getter()
{
  type metadata accessor for Link(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for Link.$rotation : Link()
{
  type metadata accessor for Link(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Link.$rotation : Link(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Link(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Link.$rotation.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Link(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Link.$rotation.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Link(0) + 20);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t (*Link.synapseDataRepresentation.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Link(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeStruct.properties.modify;
}

uint64_t Link.$synapseDataRepresentation.getter()
{
  type metadata accessor for Link(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for Link.$synapseDataRepresentation : Link()
{
  type metadata accessor for Link(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Link.$synapseDataRepresentation : Link(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Link(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Link.$synapseDataRepresentation.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Link(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Link.$synapseDataRepresentation.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Link(0) + 24);
  CRRegister.projectedValue.getter();
  return PKStrokeStruct.$properties.modify;
}

BOOL Link.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v69 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v62 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v64 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v57 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v68 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v61 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v63 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v57 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v57 - v23;
  v65 = type metadata accessor for Link.Partial(0);
  MEMORY[0x1EEE9AC00](v65);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v2;
  outlined init with copy of Link.Partial(v2, v26, type metadata accessor for Link.Partial);
  v70 = a1;
  v28 = Link.Partial.canMerge(delta:)(a1);
  outlined destroy of Link.Partial(v26, type metadata accessor for Link.Partial);
  if (!v28)
  {
    return v28;
  }

  v58 = v28;
  v59 = v9;
  outlined init with copy of Date?(v2, v24, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v57 = v17;
  v29 = *(v17 + 48);
  v30 = v29(v24, 1, v16);
  outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v30 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v70, v27, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    outlined init with copy of Date?(v70, v21, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    if (v29(v21, 1, v16) != 1)
    {
      v33 = v57;
      v34 = v60;
      (*(v57 + 32))(v60, v21, v16);
      v31 = v27;
      v35 = v29(v27, 1, v16);
      v32 = v65;
      if (!v35)
      {
        CRRegister.merge(delta:)();
      }

      (*(v33 + 8))(v34, v16);
      goto LABEL_10;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  v31 = v27;
  v32 = v65;
LABEL_10:
  v36 = *(v32 + 20);
  outlined init with copy of Date?(v31 + v36, v15, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v37 = *(v68 + 48);
  v38 = v66;
  v39 = v37(v15, 1, v66);
  outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v40 = *(v32 + 20);
  v41 = v39 == 1;
  v42 = v69;
  if (v41)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v70 + v40, v31 + v36, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    v43 = v63;
    outlined init with copy of Date?(v70 + v40, v63, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v44 = v37(v43, 1, v38);
    if (v44 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v45 = v68;
      v46 = v61;
      (*(v68 + 32))(v61, v43, v38);
      if (!v37((v31 + v36), 1, v38))
      {
        CRRegister.merge(delta:)();
      }

      (*(v45 + 8))(v46, v38);
    }
  }

  v47 = v67;
  v48 = *(v32 + 24);
  v49 = v59;
  outlined init with copy of Date?(v31 + v48, v59, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
  v50 = *(v42 + 48);
  v51 = v50(v49, 1, v47);
  outlined destroy of StocksKitCurrencyCache.Provider?(v49, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
  v52 = *(v32 + 24);
  if (v51 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v70 + v52, v31 + v48, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
  }

  else
  {
    v53 = v64;
    outlined init with copy of Date?(v70 + v52, v64, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
    if (v50(v53, 1, v47) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v53, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
    }

    else
    {
      v54 = v69;
      v55 = v62;
      (*(v69 + 32))(v62, v53, v47);
      if (!v50(v31 + v48, 1, v47))
      {
        CRRegister.merge(delta:)();
      }

      (*(v54 + 8))(v55, v47);
    }
  }

  LOBYTE(v28) = v58;
  return v28;
}

BOOL Link.Partial.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v46 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v45 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v51 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v52 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v45 - v22;
  outlined init with copy of Date?(a1, v19, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v24 = *(v21 + 48);
  if (v24(v19, 1, v20) == 1)
  {
    v16 = v19;
    v25 = v54;
LABEL_5:
    outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v26 = v52;
    v27 = v53;
    goto LABEL_6;
  }

  (*(v21 + 32))(v23, v19, v20);
  v25 = v54;
  outlined init with copy of Date?(v54, v16, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v24(v16, 1, v20) == 1)
  {
    (*(v21 + 8))(v23, v20);
    goto LABEL_5;
  }

  v39 = CRRegister.canMerge(delta:)();
  v40 = *(v21 + 8);
  v40(v23, v20);
  v40(v16, v20);
  v26 = v52;
  v27 = v53;
  if ((v39 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v28 = type metadata accessor for Link.Partial(0);
  outlined init with copy of Date?(a1 + *(v28 + 20), v11, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v29 = *(v26 + 48);
  if (v29(v11, 1, v12) == 1)
  {
    v27 = v11;
    v31 = v50;
    v30 = v51;
    v32 = v49;
  }

  else
  {
    v33 = v25;
    v34 = v47;
    (*(v26 + 32))(v47, v11, v12);
    outlined init with copy of Date?(v33 + *(v28 + 20), v27, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v35 = v29(v27, 1, v12);
    v32 = v49;
    if (v35 != 1)
    {
      v41 = CRRegister.canMerge(delta:)();
      v42 = *(v26 + 8);
      v42(v34, v12);
      v42(v27, v12);
      v31 = v50;
      v30 = v51;
      v25 = v54;
      if ((v41 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v26 + 8))(v34, v12);
    v31 = v50;
    v30 = v51;
    v25 = v54;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
LABEL_11:
  outlined init with copy of Date?(a1 + *(v28 + 24), v32, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
  v36 = *(v30 + 48);
  v37 = v48;
  if (v36(v32, 1, v48) == 1)
  {
LABEL_14:
    outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
    return 1;
  }

  (*(v30 + 32))(v31, v32, v37);
  v32 = v46;
  outlined init with copy of Date?(v25 + *(v28 + 24), v46, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
  if (v36(v32, 1, v37) == 1)
  {
    (*(v30 + 8))(v31, v37);
    goto LABEL_14;
  }

  v43 = CRRegister.canMerge(delta:)();
  v44 = *(v30 + 8);
  v44(v31, v37);
  v44(v32, v37);
  return (v43 & 1) != 0;
}

uint64_t Link.Partial.visitReferences(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  outlined init with copy of Date?(v1, &v19 - v9, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v12 + 8))(v10, v11);
  }

  v13 = type metadata accessor for Link.Partial(0);
  outlined init with copy of Date?(v1 + *(v13 + 20), v7, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v7, 1, v14) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v15 + 8))(v7, v14);
  }

  outlined init with copy of Date?(v1 + *(v13 + 24), v4, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v4, 1, v16) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
  }

  CRRegister.visitReferences(_:)();
  return (*(v17 + 8))(v4, v16);
}

uint64_t Link.Partial.init(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v44 = v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v50 = v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v9 = *(v8 - 8);
  v46 = *(v9 + 56);
  v47 = v8;
  v45 = v9 + 56;
  v46(a1, 1, 1);
  v10 = type metadata accessor for Link.Partial(0);
  v11 = *(v10 + 20);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v48 = v11;
  v43 = v14;
  v14(a1 + v11, 1, 1, v12);
  v16 = *(v10 + 24);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v20 = v18 + 56;
  v19(a1 + v16, 1, 1, v17);
  v21 = v51;
  dispatch thunk of CRDecoder.keyedContainer()();
  v51 = v21;
  if (v21)
  {

    v22 = a1;
    return outlined destroy of Link.Partial(v22, type metadata accessor for Link.Partial);
  }

  v38[0] = v20;
  v38[1] = v15;
  v39 = v17;
  v40 = v19;
  v24 = v50;
  v41 = v16;
  v42 = a1;
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    type metadata accessor for CGRect(0);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_9(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
    v25 = v49;
    v26 = v51;
    CRRegister.init(from:)();
    v51 = v26;
    if (v26)
    {
LABEL_6:

      v22 = v42;
      return outlined destroy of Link.Partial(v22, type metadata accessor for Link.Partial);
    }

    v27 = v12;
    (v46)(v25, 0, 1, v47);
    outlined assign with take of UUID?(v25, v42, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    v27 = v12;
  }

  v28 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v29 = v48;
  if (v28)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v30 = v51;
    CRRegister.init(from:)();
    v31 = v30;
    if (v30)
    {
      goto LABEL_6;
    }

    v43(v24, 0, 1, v27);
    outlined assign with take of UUID?(v24, v42 + v29, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    v31 = v51;
  }

  v32 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v33 = v40;
  v34 = v41;
  v35 = v39;
  if (v32)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd);
    lazy protocol witness table accessor for type Data? and conformance <A> A?();
    v36 = v44;
    CRRegister.init(from:)();

    v22 = v42;
    if (v31)
    {
      return outlined destroy of Link.Partial(v22, type metadata accessor for Link.Partial);
    }

    v37 = v42;
    v33(v36, 0, 1, v35);
    return outlined assign with take of UUID?(v36, v37 + v34, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type Data? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Data? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Data? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DataVSgMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data? and conformance <A> A?);
  }

  return result;
}

uint64_t Link.Partial.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v34 = &v30 - v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v3 = &v30 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v36 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  v17 = v38;
  result = dispatch thunk of CREncoder.keyedContainer()();
  if (!v17)
  {
    v31 = v3;
    v32 = v6;
    v38 = v9;
    v19 = v37;
    outlined init with copy of Date?(v37, v12, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v14 + 8))(v16, v13);
    }

    v20 = type metadata accessor for Link.Partial(0);
    v21 = v32;
    outlined init with copy of Date?(v19 + *(v20 + 20), v32, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v22 = v36;
    v23 = (*(v36 + 48))(v21, 1, v7);
    v24 = v38;
    if (v23 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      (*(v22 + 32))(v38, v21, v7);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v22 + 8))(v24, v7);
    }

    v25 = v34;
    outlined init with copy of Date?(v19 + *(v20 + 24), v34, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
    v26 = v35;
    v27 = v33;
    v28 = (*(v35 + 48))(v25, 1, v33);
    v29 = v31;
    if (v28 == 1)
    {

      return outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
    }

    else
    {
      (*(v26 + 32))(v31, v25, v27);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Data?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v26 + 8))(v29, v27);
    }
  }

  return result;
}

uint64_t Link.init(url:frame:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v12 = specialized static Link.synapseDataRepresentation(from:)();
  if (v13 >> 60 == 15)
  {
    v14 = 1;
  }

  else
  {
    Link.init(synapseDataRepresentation:frame:)(v12, v13, a2, a3, a4, a5, a6);
    v14 = 0;
  }

  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 8))(a1, v15);
  v16 = type metadata accessor for Link(0);
  v17 = *(*(v16 - 8) + 56);

  return v17(a2, v14, 1, v16);
}

uint64_t Link.init(synapseDataRepresentation:frame:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  *&v23 = a1;
  *(&v23 + 1) = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v13 = &v20 - v12;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v14 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v16 = &v20 - v15;
  type metadata accessor for CGRect(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_9(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v25 = 0u;
  v26 = 0u;
  CRRegister.init(wrappedValue:)();
  v17 = type metadata accessor for Link(0);
  *&v25 = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(wrappedValue:)();
  v18 = *(v17 + 24);
  v25 = xmmword_1D405C100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd);
  lazy protocol witness table accessor for type Data? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  UnknownProperties.init()();
  *&v25 = a4;
  *(&v25 + 1) = a5;
  *&v26 = a6;
  *(&v26 + 1) = a7;
  CRRegister.init(_:)();
  (*(v14 + 40))(a3, v16, v21);
  v25 = v23;
  CRRegister.init(_:)();
  return (*(v22 + 40))(a3 + v18, v13, v24);
}

uint64_t Link.shared(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v10[15] = 4;
  (*(v7 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v5);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Link.thumbnail.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CRAsset();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t Link.render<A>(in:id:capsule:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return (specialized Link.render<A>(in:id:capsule:options:))(a1, a2, a4, a5, a6);
}

void Link.update<A>(use:ref:pdfAnnotation:in:capsule:options:)(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v95 = a5;
  v96 = a6;
  v94 = a4;
  v90 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v82 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v92 = *(v17 - 8);
  v93 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v91 = &v82 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v84 = &v82 - v23;
  v86 = type metadata accessor for URL();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v83 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = *a1;
  type metadata accessor for CanvasElementPDFAnnotation();
  v29 = swift_dynamicCastClass();
  if (v29)
  {
    v30 = v29;
    v88 = a7;
    v31 = a8;
    *(v29 + OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation_writingAKAnnotation) = 2;
    v32 = *MEMORY[0x1E69780F8];
    v97 = a3;
    [v30 setType_];
    [v30 setWidgetFieldType_];
    [v30 setWidgetControlType_];
    specialized CanvasElement.renderFrame(in:)();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    Height = v39;
    v41 = [v30 page];
    if (v41)
    {
      v42 = v41;
      [v41 boundsForBox_];
      v44 = v43;
      v46 = v45;

      v100.origin.x = v34;
      v100.origin.y = v36;
      v100.size.width = v38;
      v100.size.height = Height;
      MinX = CGRectGetMinX(v100);
      v101.origin.x = v34;
      v101.origin.y = v36;
      v101.size.width = v38;
      v101.size.height = Height;
      v48 = v46 + v44 + v44 - CGRectGetMaxY(v101);
      v102.origin.x = v34;
      v102.origin.y = v36;
      v102.size.width = v38;
      v102.size.height = Height;
      Width = CGRectGetWidth(v102);
      v103.origin.x = v34;
      v103.origin.y = v36;
      v103.size.width = v38;
      v103.size.height = Height;
      Height = CGRectGetHeight(v103);
      v38 = Width;
      v34 = MinX;
      v36 = v48;
    }

    v104.origin.x = v34;
    v104.origin.y = v36;
    v104.size.width = v38;
    v104.size.height = Height;
    v105 = CGRectIntegral(v104);
    [v30 setBounds_];
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v26 + 8))(v28, v25);
    [v30 setModificationDate_];

    v51 = [v30 action];
    v52 = v31;
    v87 = v9;
    if (v51)
    {

      v53 = v88;
    }

    else
    {
      type metadata accessor for Link(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
      CRRegister.wrappedValue.getter();
      v54 = v99;
      v53 = v88;
      if (v99 >> 60 != 15)
      {
        v63 = v98;
        v64 = objc_allocWithZone(MEMORY[0x1E69D53F8]);
        outlined copy of Data?(v63, v54);
        v65 = specialized @nonobjc PKDrawingConcrete.init(data:)();
        v55 = v95;
        v69 = v65;
        v82 = v63;
        outlined consume of Data?(v63, v54);
        v70 = [v69 itemURL];

        v71 = v86;
        if (v70)
        {
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v72 = 0;
        }

        else
        {
          v72 = 1;
        }

        v73 = v85;
        (*(v85 + 56))(v21, v72, 1, v71);
        v74 = v84;
        outlined init with take of Range<AttributedString.Index>(v21, v84, &_s10Foundation3URLVSgMd);
        if ((*(v73 + 48))(v74, 1, v71) == 1)
        {

          outlined consume of Data?(v82, v54);
          v56 = v93;
          outlined destroy of StocksKitCurrencyCache.Provider?(v74, &_s10Foundation3URLVSgMd);
LABEL_10:
          v57 = v92;
          outlined init with copy of Date?(v90, v16, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
          if ((*(v57 + 48))(v16, 1, v56) == 1)
          {
            outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
          }

          else
          {
            (*(v57 + 32))(v91, v16, v56);
            v58 = v89;
            v59 = v89;
            if (v89 >> 62)
            {
              if (v89 >> 62 != 1)
              {
                (*(v57 + 8))(v91, v56);
                goto LABEL_18;
              }

              v59 = (v89 & 0x3FFFFFFFFFFFFFFFLL);
            }

            outlined copy of PaperDocument.PDFDocumentUse(v89);
            v60 = type metadata accessor for Link(0);
            v61 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_9(&lazy protocol witness table cache variable for type Link and conformance Link, type metadata accessor for Link);
            v62 = v91;
            specialized CanvasElementPDFAnnotation.encodeCanvasElement<A, B>(_:_:ref:writeCanvasElement:capsule:)(v59, v91, 1, v55, v60, v53, v61, &protocol witness table for Link, v52);
            outlined consume of PaperDocument.PDFDocumentUse(v58);
            (*(v57 + 8))(v62, v56);
          }

LABEL_18:
          v66 = v96;
          v67 = v94;
          v68 = type metadata accessor for Link(0);
          CanvasElementPDFAnnotation.setRendered<A, B>(in:element:capsule:options:)(v67, v87, v55, v66, v53, v68, v52, &protocol witness table for Link);

          return;
        }

        v75 = v83;
        (*(v73 + 32))();
        v76 = objc_allocWithZone(MEMORY[0x1E6978010]);
        v77 = v73;
        URL._bridgeToObjectiveC()(v78);
        v80 = v79;
        v81 = [v76 initWithURL_];

        [v30 setAction_];
        outlined consume of Data?(v82, v54);
        (*(v77 + 8))(v75, v86);
LABEL_9:
        v56 = v93;
        goto LABEL_10;
      }
    }

    v55 = v95;
    goto LABEL_9;
  }
}

uint64_t (*protocol witness for CanvasElement.frame.modify in conformance Link(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t (*protocol witness for CanvasElement.rotation.modify in conformance Link(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t protocol witness for CanvasElement.shared(_:) in conformance Link@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v10[15] = 4;
  (*(v7 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v5);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t protocol witness for PaperRenderable.render<A>(in:id:capsule:options:) in conformance Link(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return (specialized Link.render<A>(in:id:capsule:options:))(a1, a2, a4, a5, a6);
}

uint64_t Link.merge(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MergeResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Link.merge(_:)(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t Link.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v53 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v50 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v40 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v40 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v45 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v40 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - v20;
  v22 = type metadata accessor for MergeResult();
  v23 = *(v22 - 8);
  v54 = v22;
  v55 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MergeResult.init()();
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v26 = *(v13 + 8);
  v26(v21, v12);
  (*(v13 + 16))(v15, v18, v12);
  CRRegister.projectedValue.setter();
  v26(v18, v12);
  MergeResult.merge(_:)();
  v40 = *(v55 + 8);
  v55 += 8;
  v40(v25, v54);
  v51 = type metadata accessor for Link(0);
  v27 = v41;
  v28 = v43;
  CRRegister.projectedValue.getter();
  v29 = v42;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v30 = v45;
  v31 = *(v45 + 8);
  v31(v27, v28);
  (*(v30 + 16))(v44, v29, v28);
  CRRegister.projectedValue.setter();
  v31(v29, v28);
  MergeResult.merge(_:)();
  v32 = v40;
  v40(v25, v54);
  v33 = v46;
  v34 = v48;
  CRRegister.projectedValue.getter();
  v35 = v47;
  CRRegister.projectedValue.getter();
  CRRegister.merge(_:)();
  v36 = v50;
  v37 = *(v50 + 8);
  v37(v33, v34);
  (*(v36 + 16))(v49, v35, v34);
  CRRegister.projectedValue.setter();
  v37(v35, v34);
  MergeResult.merge(_:)();
  v38 = v54;
  v32(v25, v54);
  UnknownProperties.merge(_:)();
  MergeResult.merge(_:)();
  return (v32)(v25, v38);
}

uint64_t Link.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v2 = *(v1 - 8);
  v50 = v1;
  v51 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v49 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DataVSg_GSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v47 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v46 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v44 = &v43 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v43 - v23;
  CRRegister.projectedValue.getter();
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v25 = *(v16 + 8);
  v26 = v18;
  v27 = v44;
  v25(v26, v15);
  v25(v21, v15);
  type metadata accessor for Link(0);
  CRRegister.projectedValue.getter();
  v28 = v45;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v29 = *(v46 + 8);
  v29(v28, v8);
  v30 = v12;
  v31 = v47;
  v29(v30, v8);
  v32 = v48;
  v33 = v50;
  CRRegister.projectedValue.getter();
  v34 = v49;
  CRRegister.projectedValue.getter();
  CRRegister.actionUndoingDifference(from:)();
  v35 = *(v51 + 8);
  v35(v34, v33);
  v35(v32, v33);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GMd);
  if ((*(*(v36 - 8) + 48))(v24, 1, v36) == 1 && (v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GMd), (*(*(v37 - 8) + 48))(v27, 1, v37) == 1) && (v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DataVSg_GMd), (*(*(v38 - 8) + 48))(v31, 1, v38) == 1))
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
    v39 = type metadata accessor for Link.MutatingAction(0);
    (*(*(v39 - 8) + 56))(v52, 1, 1, v39);
  }

  else
  {
    v40 = v52;
    outlined init with copy of Date?(v24, v52, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
    v41 = type metadata accessor for Link.MutatingAction(0);
    outlined init with copy of Date?(v27, v40 + *(v41 + 20), &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd);
    outlined init with copy of Date?(v31, v40 + *(v41 + 24), &_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DataVSg_GSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd);
    (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DataVSg_GSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd);
}