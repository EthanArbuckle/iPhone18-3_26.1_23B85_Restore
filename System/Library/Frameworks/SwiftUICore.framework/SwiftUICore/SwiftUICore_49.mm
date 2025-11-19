uint64_t getEnumTagSinglePayload for ResolvedStyledText.TextLayoutManager.Metrics(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 120))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 96);
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

void specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(CGContext *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v58 = *MEMORY[0x1E69E9840];
  v16 = *a2;
  v15 = *(a2 + 8);
  v51 = 0;
  v52 = 1.0;
  v17 = MEMORY[0x193AC3360](a1, &v52, &v51);
  if (v17)
  {
    v18 = v17;
    type metadata accessor for GraphicsContext.Storage();
    v19 = swift_allocObject();
    *(v19 + 32) = xmmword_18DD85500;
    *(v19 + 48) = 1065353216;
    *(v19 + 56) = 0x7FF8000000000000;
    v20 = RBDrawingStateGetDisplayList();
    v53 = v16;
    v54 = v15;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    *(v19 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v20, &v53);
    *(v19 + 24) = v18;
    *(v19 + 64) = 0;
    v50 = v19;
    v21 = v52;
    if (v52 == 1.0)
    {
      v22 = 0;
    }

    else
    {
      GraphicsContext.copyOnWrite()();
      v19 = v50;
      *(v50 + 48) = v21;
      v22 = *(v19 + 52);
    }

    v26 = v51;
    if (v22 != v51)
    {
      GraphicsContext.copyOnWrite()();
      v19 = v50;
      *(v50 + 52) = v26;
    }

    if (a5)
    {
      v27 = *(*a5 + 120);

      v29 = v27(v28);
      if (v30 != 0.0 || v29 != 0.0)
      {
        GraphicsContext.copyOnWrite()();
        RBDrawingStateTranslateCTM();
      }

      v53 = a6;
      LOBYTE(v54) = a7 & 1;
      v55 = a8;
      (*(*a5 + 96))(&v53, &v50);
    }

    else
    {
      v31 = *(a6 + 16);
      if (v31)
      {

        v32 = a6 + 40;
        do
        {
          v33 = *(v32 + 32);
          v34 = *(v32 + 8);
          v36 = *(v32 - 8);
          v35 = *v32;
          v53 = v36;
          v54 = v35;
          LOBYTE(v55) = v34;
          v56 = *(v32 + 16);
          v57 = v33;
          outlined copy of Text.Layout.Line.Line(v36);
          GraphicsContext.draw(_:options:)(&v53, 0, v19);
          outlined consume of Text.Layout.Line.Line(v36);
          v32 += 48;
          --v31;
        }

        while (v31);
      }

      else
      {
      }
    }
  }

  else
  {
    v23 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
    [v23 setProfile_];
    [v23 setDefaultColorSpace_];
    ClipBoundingBox = CGContextGetClipBoundingBox(a1);
    [v23 setContentRect_];
    if (a4)
    {
      if (v15)
      {

        v24 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v16);

        v25 = v24;
      }

      else
      {
        v49 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v16);
        if (v49)
        {
          v25 = v49[9];
        }

        else
        {
          v25 = 1.0;
        }
      }
    }

    else
    {
      v25 = *&a3;
    }

    [v23 setDeviceScale_];
    type metadata accessor for GraphicsContext.Storage();
    v37 = swift_allocObject();
    *(v37 + 32) = xmmword_18DD85500;
    *(v37 + 48) = 1065353216;
    *(v37 + 56) = 0x7FF8000000000000;
    v53 = v16;
    v54 = v15;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();

    v38 = v23;

    *(v37 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v38, &v53);
    *(v37 + 24) = RBDisplayListGetState();
    *(v37 + 64) = 0;
    v50 = v37;
    if (a5)
    {
      v39 = *(*a5 + 120);

      v41 = v39(v40);
      if (v42 != 0.0 || v41 != 0.0)
      {
        GraphicsContext.copyOnWrite()();
        RBDrawingStateTranslateCTM();
      }

      v53 = a6;
      LOBYTE(v54) = a7 & 1;
      v55 = a8;
      (*(*a5 + 96))(&v53, &v50);
    }

    else
    {
      v43 = *(a6 + 16);
      if (v43)
      {

        v44 = a6 + 40;
        do
        {
          v45 = *(v44 + 32);
          v46 = *(v44 + 8);
          v48 = *(v44 - 8);
          v47 = *v44;
          v53 = v48;
          v54 = v47;
          LOBYTE(v55) = v46;
          v56 = *(v44 + 16);
          v57 = v45;
          outlined copy of Text.Layout.Line.Line(v48);
          GraphicsContext.draw(_:options:)(&v53, 0, v37);
          outlined consume of Text.Layout.Line.Line(v48);
          v44 += 48;
          --v43;
        }

        while (v43);
      }

      else
      {
      }
    }

    [v38 renderInContext:a1 options:0];
  }
}

uint64_t Text.Layout.Decorations.init(run:scale:)@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v6 = *(a1 + 8);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v7 < v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = a2;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v2 = *a1;
  v10 = CTLineGetRunAtIndex();
  specialized Text.Layout.TypographicBounds.init(run:range:)(v10, 0, v41);

  v11 = v8 + v41[0];
  v40 = MEMORY[0x1E69E7CC0];
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  v12 = v8 + v41[0] + v41[2];
  v35[0] = 0;
  v35[1] = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = &v36;
  *(v13 + 24) = &v40;
  *(v13 + 32) = v35;
  *(v13 + 40) = v6;
  *(v13 + 48) = v7;
  *(v13 + 56) = v11;
  *(v13 + 64) = 0;
  *(v13 + 72) = v12;
  *(v13 + 80) = 768;
  v6 = swift_allocObject();
  *(v6 + 16) = closure #1 in Text.Layout.Decorations.init(line:origin:scale:runs:flags:typographicBounds:)partial apply;
  *(v6 + 24) = v13;
  *&v33 = thunk for @callee_guaranteed (@unowned CTLineDecorationElementType, @unowned OpaquePointer) -> ()partial apply;
  *(&v33 + 1) = v6;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v32 = thunk for @escaping @callee_guaranteed (@unowned CTLineDecorationElementType, @unowned OpaquePointer) -> ();
  *(&v32 + 1) = &block_descriptor_68;
  v14 = _Block_copy(&aBlock);
  v3 = *(&v33 + 1);

  aBlock = 0x3FF0000000000000uLL;
  *&v32 = 0;
  *(&v32 + 1) = 0xBFF0000000000000;
  *&v33 = v8;
  *(&v33 + 1) = v9;
  CTLineDecorationApplyWithBlock();
  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
    v40 = v6;
    goto LABEL_6;
  }

  v29 = v4;
  v3 = *(&v38 + 1);
  if (!*(&v38 + 1))
  {

    v18 = v40;
    goto LABEL_10;
  }

  LODWORD(v4) = DWORD2(v36);
  v7 = v37;
  v5 = v36;
  v24 = DWORD1(v36);
  v25 = HIDWORD(*(&v36 + 1));
  v26 = *(&v37 + 1);
  v6 = v40;
  aBlock = v36;
  v32 = v37;
  v27 = v38;
  v28 = v39;
  v33 = v38;
  v34 = v39;
  outlined init with copy of Text.Layout.Decorations.Segment(&aBlock, v30);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  v17 = *(v6 + 16);
  v16 = *(v6 + 24);
  if (v17 >= v16 >> 1)
  {
    v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v6);
  }

  v18 = v40;
  *(v40 + 2) = v17 + 1;
  v19 = &v18[56 * v17];
  *(v19 + 8) = v5;
  *(v19 + 9) = v24;
  *(v19 + 10) = v4;
  *(v19 + 11) = v25;
  *(v19 + 6) = v7;
  *(v19 + 7) = v26;
  *(v19 + 8) = v27;
  *(v19 + 9) = v3;
  *(v19 + 10) = v28;
  v40 = v18;
LABEL_10:
  v20 = v36;
  v21 = v37;
  v22 = v38;

  outlined consume of Text.Layout.Decorations.Segment?(v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1));

  *v29 = v18;
  return result;
}

uint64_t TextRendererBox.draw(layout:in:)(uint64_t *a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a1 + 8);
  v5 = a1[2];
  v7 = *a1;
  v8 = v4;
  v9 = v5;
  return (*(*(v3 + 136) + 16))(&v7, a2, *(v3 + 128));
}

uint64_t initializeBufferWithCopyOfBuffer for Text.Layout(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

void (*protocol witness for Collection.subscript.read in conformance Text.Layout(void (**a1)(void ***a1), unint64_t *a2))(void ***a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x2CuLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    v8 = *v2 + 48 * v7;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    v11 = *(v8 + 48);
    v12 = *(v8 + 72);
    v13 = *(v8 + 56);
    *v6 = v9;
    *(v6 + 1) = v10;
    *(v6 + 16) = v11;
    *(v6 + 24) = v13;
    *(v6 + 10) = v12;
    outlined copy of Text.Layout.Line.Line(v9);
    return protocol witness for Collection.subscript.read in conformance Text.Layout;
  }

  __break(1u);
  return result;
}

uint64_t initializeWithCopy for Text.Layout.Line(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Layout.Line.Line(*a2);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

id outlined copy of Text.Layout.Line.Line(void *a1)
{

  return a1;
}

uint64_t outlined consume of Text.Layout.Line.Line(void *a1)
{
}

void *protocol witness for Collection.formIndex(after:) in conformance Text.Layout(void *result)
{
  if (*result >= *(*v1 + 16))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void protocol witness for Collection.endIndex.getter in conformance Text.Layout.Line(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *v1;
  v5 = v4;
  if (v3 != 1 || (RunCount = _NSTextLineFragmentGetCTLine(v4), v5, (v5 = RunCount) != 0))
  {
    RunCount = CTLineGetRunCount();
  }

  *a1 = RunCount;
}

uint64_t _NSTextLineFragmentGetCTLine(void *a1)
{
  v1 = a1;

  return [v1 lineRef];
}

uint64_t sub_18D2D5560(id *a1)
{
}

uint64_t GlyphContext.drawAttachment(_:cgContext:)(uint64_t a1, CGContext *a2)
{
  v3 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v3;
  v25 = *(a1 + 32);
  if (one-time initialization token for kitAttachment != -1)
  {
    swift_once();
  }

  v4 = static NSAttributedStringKey.kitAttachment;
  v5 = CTLineGetRunAtIndex();
  v6 = _CTRunGetAttributeValueForKey(v5, v4);

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v18 = v20;
  v19 = v21;
  if (*(&v21 + 1))
  {
    outlined init with take of Any(&v18, &v22);
    outlined init with copy of Any(&v22, &v18);
    type metadata accessor for SwiftUITextAttachment();
    if (swift_dynamicCast())
    {
      v7 = v20;
      outlined init with copy of Text.Layout.Run(v24, &v18);
      EnvironmentValues.init()(&v18);
      v20 = v18;
      specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(a2, &v20, 0, 1, v7, v24);
      sub_18D36CCC8(v24);

LABEL_13:

      return __swift_destroy_boxed_opaque_existential_1(&v22);
    }

    outlined init with copy of Any(&v22, &v18);
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSTextAttachment);
    if (swift_dynamicCast())
    {
      v8 = v20;
      v9 = *(&v25 + 1);
      v26 = *(&v25 + 1);
      if (*(&v25 + 1))
      {
        outlined init with copy of Text.Layout.Run(v24, &v18);
        outlined init with copy of AnyTextLayoutRenderer?(&v26, &v18, v10);
        v7 = v8;
        EnvironmentValues.init()(&v18);
        v20 = v18;
        specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(a2, &v20, 0, 1, v9, v7, v24);
        sub_18D36CCC8(v24);

        outlined destroy of AnyTextLayoutRenderer?(&v26, v11, v12);
        goto LABEL_13;
      }

      __swift_destroy_boxed_opaque_existential_1(&v22);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v22);
    }
  }

  else
  {
    outlined destroy of Any?(&v18);
  }

  if (one-time initialization token for customAttachment != -1)
  {
    swift_once();
  }

  v14 = static NSAttributedStringKey.customAttachment;
  v15 = CTLineGetRunAtIndex();
  v16 = _CTRunGetAttributeValueForKey(v15, v14);

  if (v16)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v18 = v22;
  v19 = v23;
  if (!*(&v23 + 1))
  {
    return outlined destroy of Any?(&v18);
  }

  type metadata accessor for AnyCustomTextAttachment();
  result = swift_dynamicCast();
  if (result)
  {
    v17 = v22;
    outlined init with copy of Text.Layout.Run(v24, &v18);

    EnvironmentValues.init()(&v18);
    v22 = v18;
    specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(a2, &v22, 0, 1, v17, v24);
    sub_18D36CCC8(v24);
  }

  return result;
}

void GlyphContext.drawRun(_:range:foregroundColor:)(uint64_t a1, uint64_t a2, CFIndex a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = *a1;
  v11 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = GlyphContext.currentContext()();
  if ((*(v6 + 48) & 8) == 0)
  {
    v32 = a6;
    v18 = a4;
    v19 = a5;
    v20 = v12;
    v21 = v11;
    v22 = a3;
    v23 = CTLineGetRunAtIndex();
    _CGContextSetTextRunRange(v17, v23, a2, v22);

    a3 = v22;
    v11 = v21;
    v12 = v20;
    a5 = v19;
    a4 = v18;
    a6 = v32;
  }

  transform.a = v12;
  transform.b = v11;
  transform.c = v13;
  transform.d = v14;
  LODWORD(transform.tx) = v15;
  transform.ty = v16;
  GlyphContext.drawAttachment(_:cgContext:)(&transform, v17);
  CGContextSaveGState(v17);
  transform.a = 1.0;
  transform.b = 0.0;
  transform.c = 0.0;
  transform.d = -1.0;
  transform.tx = v13;
  transform.ty = v14;
  CGContextConcatCTM(v17, &transform);
  if (a6)
  {
    isa = CTLineGetRunAtIndex();
    v35.location = a2;
    v35.length = a3;
    CTRunDraw(isa, v17, v35);
  }

  else
  {
    v25 = a5;
    type metadata accessor for Attribute<TextRendererBoxBase>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(NSAttributedStringKey, CGColorRef)>, 255, type metadata accessor for (NSAttributedStringKey, CGColorRef), MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18DDA6EB0;
    v27 = *MEMORY[0x1E69DB650];
    *(inited + 32) = *MEMORY[0x1E69DB650];
    v28 = one-time initialization token for cache;
    v29 = v27;
    if (v28 != -1)
    {
      swift_once();
    }

    specialized ObjectCache.subscript.getter(*&a4, *(&a4 + 1), *&v25, *(&v25 + 1));
    *(inited + 40) = v30;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_So10CGColorRefaTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (NSAttributedStringKey, CGColorRef)(inited + 32, type metadata accessor for (NSAttributedStringKey, CGColorRef));
    type metadata accessor for NSAttributedStringKey(0);
    type metadata accessor for CGColorRef(0);
    _sSo21NSAttributedStringKeyaABSHSCWlTm_2(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, 255, type metadata accessor for NSAttributedStringKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v31 = CTLineGetRunAtIndex();
    CTRunDrawWithAttributeOverrides();
  }

  CGContextRestoreGState(v17);
}

void protocol witness for Collection.subscript.read in conformance Text.Layout.Line(id **a1)
{
  v1 = *a1;

  free(v1);
}

uint64_t initializeWithCopy for Text.Layout.Run(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v5 = v3;

  return a1;
}

void protocol witness for Collection.formIndex(after:) in conformance Text.Layout.Line(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(v1 + 16);
  v5 = *v1;
  v6 = v5;
  if (v4 != 1 || (RunCount = _NSTextLineFragmentGetCTLine(v5), v6, (v6 = RunCount) != 0))
  {
    RunCount = CTLineGetRunCount();
  }

  if (v3 < 0 || v3 >= RunCount)
  {
    __break(1u);
  }

  else
  {
    *a1 = v3 + 1;
  }
}

CFDictionaryRef _CTRunGetAttributeValueForKey(const __CTRun *a1, const void *a2)
{
  Attributes = CTRunGetAttributes(a1);
  if (Attributes)
  {
    Attributes = CFDictionaryGetValue(Attributes, a2);
  }

  return Attributes;
}

void GraphicsContext.draw(_:options:)(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6[0] = *a1;
  v6[1] = v3;
  v7 = *(a1 + 16);
  v8 = v4;
  v9 = v5;
  GraphicsContext.draw(_:foregroundColor:options:)(v6, 0, 0, 1, a2, a3);
}

uint64_t Text.Layout.Run.drawingOptions.getter()
{
  v1 = *(v0 + 32);
  if ((v1 & 0x10) != 0)
  {
    v2 = MEMORY[0x193ABEC20](0xD00000000000001DLL, 0x800000018DD7A720);
    v3 = CTLineGetRunAtIndex();
    v4 = _CTRunGetAttributeValueForKey(v3, v2);

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8[0] = v6;
    v8[1] = v7;

    if (*(&v7 + 1))
    {
      outlined init with take of Any(v8, v9);
      outlined init with copy of Any(v9, v8);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v9);
        if (v6 == 1)
        {
          return v1 | 4;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v9);
      }
    }

    else
    {
      outlined destroy of Any?(v8);
    }
  }

  return v1;
}

void _CGContextSetTextRunRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (a3 | a4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLong:a2];
    v8[1] = v5;
    v6 = [MEMORY[0x1E696AD98] numberWithLong:a4];
    v8[2] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

    CGContextGetDelegate();
    CGContextGetRenderingState();
    CGContextGetGState();
    CGContextDelegateOperation();
  }

  else
  {
    CGContextGetDelegate();
    CGContextGetRenderingState();
    CGContextGetGState();

    CGContextDelegateOperation();
  }
}

void specialized Text.Layout.TypographicBounds.init(run:range:)(const __CTRun *a1@<X0>, CFRange a2@<X2:X1>, CGFloat *a3@<X8>)
{
  length = a2.length;
  location = a2.location;
  v17 = *MEMORY[0x1E69E9840];
  buffer.x = 0.0;
  buffer.y = 0.0;
  descent = 0.0;
  ascent = 0.0;
  leading = 0.0;
  v12 = 0uLL;
  a2.length = 1;
  CTRunGetPositions(a1, a2, &buffer);
  v18.location = location;
  v18.length = 1;
  CTRunGetBaseAdvancesAndOrigins(a1, v18, 0, &v12);
  buffer = vsubq_f64(buffer, v12);
  v19.location = location;
  v19.length = length;
  TypographicBounds = CTRunGetTypographicBounds(a1, v19, &ascent, &descent, &leading);
  v8 = ascent;
  v9 = fabs(descent);
  v10 = -buffer.y;
  v11 = leading;
  *a3 = buffer.x;
  a3[1] = v10;
  a3[2] = TypographicBounds;
  a3[3] = v8;
  a3[4] = v9;
  a3[5] = v11;
}

uint64_t outlined consume of Text.Layout.Decorations.Segment?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
  }

  return result;
}

uint64_t GraphicsContext.draw(_:)(uint64_t *a1, double *a2)
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v43 = *(*a1 + 16);
  if (!v43)
  {
    goto LABEL_54;
  }

  v42 = v2 + 32;

  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider, &type metadata for ResolvedColorProvider, type metadata accessor for ColorBox);
  v41 = v2;
  v3 = 0;
  do
  {
    v4 = (v42 + 56 * v3);
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v53 = *(v4 + 6);
    v51 = v6;
    v52 = v7;
    v50 = v5;
    if (v3 == v43)
    {
      goto LABEL_58;
    }

    v8 = swift_allocObject();
    *(v8 + 16) = v50;
    *(v8 + 32) = 2143289344;
    v10 = *(&v52 + 1);
    v9 = v53;
    v47 = *(v53 + 16);
    if (v47)
    {
      v44 = v3;
      v11 = v51;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      outlined init with copy of Text.Layout.Decorations.Segment(&v50, &v58);
      outlined init with copy of Text.Layout.Decorations.Segment(&v50, &v58);
      type metadata accessor for Path.PathBox();
      v12 = 0;
      v45 = v9;
      v13 = (v9 + 48);
      while (1)
      {
        if (v47 == v12)
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
        }

        v48 = *v13;
        v49 = *(v13 - 1);
        v14 = swift_allocObject();
        v15 = v64;
        *(v14 + 56) = v63;
        *(v14 + 72) = v15;
        v16 = v66;
        *(v14 + 88) = v65;
        *(v14 + 104) = v16;
        v17 = v62;
        *(v14 + 24) = v61;
        *(v14 + 40) = v17;
        *(v14 + 16) = 2;
        RBPathStorageInit();
        v18 = *(v14 + 16);

        if (v18 == 2 || (Path.PathBox.prepareBuffer()(), *(v14 + 16) == 2))
        {
        }

        else
        {

          Path.PathBox.prepareBuffer()();
        }

        v58 = v49;
        MEMORY[0x193AC35E0](v14 + 24, 0, &v58, 0);

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v19 = v14;
        }

        else
        {
          v20 = swift_allocObject();
          v19 = v20;
          v21 = v64;
          *(v20 + 56) = v63;
          *(v20 + 72) = v21;
          v22 = v66;
          *(v20 + 88) = v65;
          *(v20 + 104) = v22;
          v23 = v62;
          *(v20 + 24) = v61;
          *(v20 + 40) = v23;
          v24 = *(v14 + 16);
          *(v20 + 16) = v24;
          if (v24)
          {
            if (v24 == 1)
            {
              *(v20 + 24) = RBPathRetain();
              *(v19 + 32) = v25;
            }

            else
            {
              RBPathStorageInit();
            }
          }

          else
          {
            v26 = *(v14 + 24);
            if (!v26)
            {
              goto LABEL_61;
            }

            *(v20 + 24) = v26;
            v27 = v26;
          }
        }

        v28 = *(v19 + 16);
        swift_retain_n();
        if (v28 != 2)
        {
          Path.PathBox.prepareBuffer()();
        }

        v58 = v48;
        MEMORY[0x193AC35E0](v19 + 24, 1, &v58, 0);

        if (*(v19 + 16))
        {
          if (*(v19 + 16) == 1)
          {

            v9 = v45;
          }

          else
          {
            v29 = one-time initialization token for bufferCallbacks;

            if (v29 != -1)
            {
              swift_once();
            }
          }
        }

        else
        {
          if (!*(v19 + 24))
          {
            goto LABEL_59;
          }
        }

        IsEmpty = RBPathIsEmpty();

        if (IsEmpty)
        {

          v31 = 0;
          v32 = 6;
          goto LABEL_46;
        }

        if (*(v19 + 16))
        {
          if (*(v19 + 16) != 1)
          {
            v33 = one-time initialization token for bufferCallbacks;

            if (v33 != -1)
            {
              swift_once();
            }

            goto LABEL_38;
          }
        }

        else if (!*(v19 + 24))
        {
          goto LABEL_62;
        }

LABEL_38:
        RBPathRetain();

        v31 = swift_allocObject();
        v34 = v64;
        *(v31 + 56) = v63;
        *(v31 + 72) = v34;
        v35 = v66;
        *(v31 + 88) = v65;
        *(v31 + 104) = v35;
        v36 = v62;
        *(v31 + 24) = v61;
        *(v31 + 40) = v36;
        *(v31 + 16) = 2;
        RBPathStorageInit();
        *&v58 = v11;
        *(&v58 + 1) = 0x4024000000000000;
        v59 = v49;
        v37 = *(v10 + 16);
        v54 = 0;
        *&v55 = v37;
        *(&v55 + 1) = v10 + 32;
        MEMORY[0x193AC35E0](v31 + 24, 19, &v58, &v54);

        if (*(v19 + 16))
        {
          if (*(v19 + 16) != 1 && one-time initialization token for bufferCallbacks != -1)
          {
            swift_once();
          }
        }

        else if (!*(v19 + 24))
        {
          goto LABEL_60;
        }

        RBPathStorageAppendPath();

        MEMORY[0x193AC35E0](v31 + 24, 16, 0, 0);
        RBPathRelease();
        v32 = 5;
        v9 = v45;
LABEL_46:
        ++v12;

        v67[0] = v31;
        memset(&v67[1], 0, 24);
        v68 = v32;
        *&v58 = v8;
        v60 = 1;
        v54 = 256;
        v55 = 0u;
        v56 = 0u;
        v57 = 0;
        outlined copy of Path.Storage(v31, 0, 0, 0, v32);

        GraphicsContext.draw(_:with:style:)(v67, &v58, &v54, a2);
        outlined consume of Path.Storage(v31, 0, 0, 0, v32);
        outlined consume of Path.Storage(v31, 0, 0, 0, v32);

        v38 = *(v9 + 16);
        if (v12 == v38)
        {

          outlined destroy of Text.Layout.Decorations.Segment(&v50);
          v2 = v41;
          v3 = v44;
          goto LABEL_51;
        }

        v13 += 2;
        if (v12 >= v38)
        {
          goto LABEL_57;
        }
      }
    }

    outlined init with copy of Text.Layout.Decorations.Segment(&v50, &v61);

LABEL_51:
    ++v3;

    v39 = *(v2 + 16);
    if (v3 == v39)
    {
    }
  }

  while (v3 < v39);
  __break(1u);
LABEL_54:
}

uint64_t protocol witness for static FontDefinition.resolveFontInfo(_:) in conformance DefaultFontDefinition@<X0>(const __CTFont *a1@<X0>, uint64_t a2@<X8>)
{
  Size = CTFontGetSize(a1);
  result = CTFontGetWeight();
  *a2 = Size;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  return result;
}

uint64_t ResolvedStyledText.TextLayoutManager.deinit()
{
  v1 = *(v0 + 128);
  v8[6] = *(v0 + 112);
  v8[7] = v1;
  v8[8] = *(v0 + 144);
  v9 = *(v0 + 160);
  v2 = *(v0 + 64);
  v8[2] = *(v0 + 48);
  v8[3] = v2;
  v3 = *(v0 + 96);
  v8[4] = *(v0 + 80);
  v8[5] = v3;
  v4 = *(v0 + 32);
  v8[0] = *(v0 + 16);
  v8[1] = v4;
  outlined destroy of TextLayoutProperties(v8);

  outlined consume of ResolvedTextSuffix(*(v0 + 352), *(v0 + 360), *(v0 + 368), *(v0 + 376), *(v0 + 384), *(v0 + 392));

  v5 = *(v0 + 496);
  v6 = *(v0 + 520);

  return v0;
}

uint64_t ResolvedStyledText.TextLayoutManager.__deallocating_deinit()
{
  ResolvedStyledText.TextLayoutManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t _AnyResolvedPaint.isEqual(to:)()
{
  result = swift_dynamicCastClass();
  if (result)
  {

    v1 = dispatch thunk of static Equatable.== infix(_:_:)();

    return v1 & 1;
  }

  return result;
}

BOOL specialized static LinearGradient.AbsolutePaint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v22 = *(a1 + 12);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v23 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a2 + 8);
  v9 = *(a2 + 12);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v14 = *(a2 + 40);
  v13 = *(a2 + 48);
  v15 = *(a2 + 56);
  v16 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI22ResolvedGradientVectorV4Stop026_3CA72A515D037D62EA3FD1FE1M4F3CBLLV_Tt1g5(*a1, *a2);
  result = 0;
  if ((v16 & 1) != 0 && v2 == v8)
  {
    if (v3)
    {
      if (v5 == v11)
      {
        v18 = v10;
      }

      else
      {
        v18 = 0;
      }

      if (v18 != 1 || v4 != v12 || v6 != v14 || v23 != v13)
      {
        return 0;
      }

      return v7 == v15;
    }

    result = 0;
    if ((v10 & 1) == 0 && v22 == v9 && v5 == v11 && v4 == v12 && v6 == v14 && v23 == v13)
    {
      return v7 == v15;
    }
  }

  return result;
}

uint64_t initializeWithCopy for DisplayList.InterpolatorLayer.Contents(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);

  swift_unknownObjectRetain();
  return a1;
}

id ContentTransition.rbTransition.getter()
{
  v1 = *v0;
  v34 = *(v0 + 8) | (*(v0 + 12) << 32);
  v2 = *(v0 + 14);
  if (!*(v0 + 13))
  {
    if (one-time initialization token for namedTransitions != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&static ContentTransition.namedTransitions);
    v21 = off_1ED527450;
    if (v2)
    {
      v22 = 0x10000000000;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22 & 0xFFFFFF0000000000 | v34 & 0xFFFFFFFFFFLL;
    if (*(off_1ED527450 + 2) && (v24 = specialized __RawDictionaryStorage.find<A>(_:)(v1, v23), (v25 & 1) != 0))
    {
      v3 = *(v21[7] + 8 * v24);
      os_unfair_lock_unlock(&static ContentTransition.namedTransitions);
      if (v3)
      {
        return v3;
      }
    }

    else
    {
      os_unfair_lock_unlock(&static ContentTransition.namedTransitions);
    }

    v29 = ContentTransition.NamedTransition.makeRBTransition()();
    [v29 setReplaceable_];
    os_unfair_lock_lock(&static ContentTransition.namedTransitions);
    v3 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = off_1ED527450;
    off_1ED527450 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v1, v23, isUniquelyReferenced_nonNull_native);
    off_1ED527450 = v35;
    os_unfair_lock_unlock(&static ContentTransition.namedTransitions);
    return v3;
  }

  if (*(v0 + 13) == 1)
  {
    v32 = *(v0 + 14);
    v3 = [objc_allocWithZone(MEMORY[0x1E69C7118]) init];
    [v3 setMethod_];
    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = (v1 + 64);
      v33 = v3;
      do
      {
        v7 = *(v5 - 8);
        if ((v34 & 0x100000000) != 0)
        {
          v8 = v7 - 7;
          if (v7 - 7) <= 5 && ((0x33u >> v8))
          {
            v7 = dword_18DE11E78[v8];
          }
        }

        v9 = *(v5 - 7);
        v10 = *(v5 - 24);
        v11 = *(v5 - 5);
        v12 = *(v5 - 16);
        v14 = *(v5 - 3);
        v13 = *(v5 - 2);
        v16 = *(v5 - 1);
        v15 = *v5;
        v17 = [objc_allocWithZone(MEMORY[0x1E69C7120]) init];
        [v17 setType_];
        if (v10)
        {
          if (v10 == 1)
          {
            [v17 setIntegerArgumentValue:v9 atIndex:0];
          }

          if (v12)
          {
LABEL_14:
            v19 = v12 == 1;
            v3 = v33;
            if (v19)
            {
              [v17 setIntegerArgumentValue:v11 atIndex:1];
            }

            goto LABEL_19;
          }
        }

        else
        {
          LODWORD(v18) = v9;
          [v17 setArgumentValue:0 atIndex:v18];
          if (v12)
          {
            goto LABEL_14;
          }
        }

        LODWORD(v18) = v11;
        [v17 setArgumentValue:1 atIndex:v18];
        v3 = v33;
LABEL_19:
        [v17 setEvents_];
        if (v15)
        {
          [v17 setFlags_];
        }

        v5 += 9;
        LODWORD(v20) = v14;
        [v17 setBeginTime_];
        LODWORD(v6) = v13;
        [v17 setDuration_];
        [v3 addEffect_];

        --v4;
      }

      while (v4);
    }

    [v3 setReplaceable_];
  }

  else
  {
    v26 = [objc_allocWithZone(MEMORY[0x1E69C7120]) init];
    [v26 setType_];
    if ((v1 & 0x100000000) != 0)
    {
      v27 = v1;
    }

    else
    {
      v27 = v1 | 0x10;
    }

    [v26 setIntegerArgumentValue:v27 atIndex:0];
    LODWORD(v28) = 1.0;
    [v26 setArgumentValue:1 atIndex:v28];
    v3 = [objc_allocWithZone(MEMORY[0x1E69C7118]) init];
    [v3 setMethod_];
    [v3 addEffect_];
  }

  return v3;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1, unint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = (a1 >> 38) & 3;
  if (v4)
  {
    if (v4 == 1)
    {
      MEMORY[0x193AC11A0](6);
      ContentTransition.NumericTextConfiguration.hash(into:)();
    }

    else
    {
      if (a1 <= 0x8000000001)
      {
        v5 = (a1 ^ 0x8000000000 | a2 & 0xFFFFFF) != 0;
      }

      else if (a1 ^ 0x8000000002 | a2 & 0xFFFFFF)
      {
        if (a1 ^ 0x8000000003 | a2 & 0xFFFFFF)
        {
          v5 = 4;
        }

        else
        {
          v5 = 3;
        }
      }

      else
      {
        v5 = 2;
      }

      MEMORY[0x193AC11A0](v5);
    }
  }

  else
  {
    MEMORY[0x193AC11A0](5);
    Hasher._combine(_:)(a1 & 1);
  }

  if ((a2 & 0xFF000000) == 0x2000000)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0]((a2 >> 24) & 1);
  }

  if ((a2 & 0xFF00000000) == 0x300000000)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](BYTE4(a2));
  }

  Hasher._combine(_:)(BYTE5(a2) & 1);
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2 & 0x1FFFFFFFFFFLL, v6);
}

{
  v4 = HIDWORD(a1);
  v5 = HIDWORD(a2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v5);
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v3 + 64;
  v6 = -1 << *(v3 + 32);
  result = a3 & ~v6;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    v9 = *(v3 + 48);
    v10 = a1 & 0xC000000000;
    v11 = a1 != 0x8000000004;
    v12 = a1 != 0x8000000003;
    v13 = a1 != 0x8000000002;
    v14 = a1 != 0x8000000001;
    if ((a2 & 0xFFFFFF) != 0)
    {
      v11 = 1;
      v12 = 1;
      v13 = 1;
      v14 = 1;
      v15 = 1;
    }

    else
    {
      v15 = a1 != 0x8000000000;
    }

    v16 = a1 & 0xFF0000000000;
    if (v10 != 0x8000000000)
    {
      v11 = 1;
    }

    v27 = v11;
    v17 = v10 != 0x8000000000 || v12;
    v18 = v10 != 0x8000000000 || v13;
    v19 = v10 != 0x8000000000 || v14;
    if (v10 != 0x8000000000)
    {
      v15 = 1;
    }

    do
    {
      v20 = v9 + 16 * result;
      v21 = *v20;
      v22 = *(v20 + 11);
      v23 = *(v20 + 12);
      v24 = (*v20 >> 38) & 3;
      if (v24)
      {
        v25 = *(v20 + 8) | (*(v20 + 10) << 16);
        if (v24 == 1)
        {
          if (v10 != 0x4000000000)
          {
            goto LABEL_21;
          }

          if ((v21 & 0x100000000) != 0)
          {
            if ((a1 & 0x100000000) == 0 || *&v21 != *&a1)
            {
              goto LABEL_21;
            }
          }

          else if (a1 & 0x100000000) != 0 || ((v21 ^ a1))
          {
            goto LABEL_21;
          }

          v26 = BYTE2(v25);
          if ((v21 & 0xFF0000000000) == 0x20000000000)
          {
            if (v16 != 0x20000000000)
            {
              goto LABEL_21;
            }
          }

          else if (v16 == 0x20000000000 || ((v21 ^ a1) & 0x10000000000) != 0)
          {
            goto LABEL_21;
          }

          if (BYTE6(v21) != BYTE6(a1) || HIBYTE(v21) != HIBYTE(a1) || *(v20 + 8) != a2 || HIBYTE(*(v20 + 8)) != BYTE1(a2) || v26 != BYTE2(a2))
          {
            goto LABEL_21;
          }
        }

        else if (v21 <= 0x8000000001)
        {
          if (v21 ^ 0x8000000000 | *&v25 & 0xFFFFFFLL)
          {
            if (v19)
            {
              goto LABEL_21;
            }
          }

          else if (v15)
          {
            goto LABEL_21;
          }
        }

        else if (v21 ^ 0x8000000002 | *&v25 & 0xFFFFFFLL)
        {
          if (v21 ^ 0x8000000003 | *&v25 & 0xFFFFFFLL)
          {
            if (v27)
            {
              goto LABEL_21;
            }
          }

          else if (v17)
          {
            goto LABEL_21;
          }
        }

        else if (v18)
        {
          goto LABEL_21;
        }
      }

      else if (v10 || ((v21 ^ a1) & 1) != 0)
      {
        goto LABEL_21;
      }

      if (v22 == 2)
      {
        if (BYTE3(a2) != 2)
        {
          goto LABEL_21;
        }
      }

      else if (BYTE3(a2) == 2 || ((a2 >> 24) & 1) != (v22 & 1))
      {
        goto LABEL_21;
      }

      if (v23 == 3)
      {
        if (BYTE4(a2) == 3)
        {
          goto LABEL_20;
        }
      }

      else if (BYTE4(a2) != 3 && v23 == BYTE4(a2))
      {
LABEL_20:
        if ((((a2 >> 40) & 1 ^ *(v20 + 13)) & 1) == 0)
        {
          return result;
        }
      }

LABEL_21:
      result = (result + 1) & v8;
    }

    while (((*(v5 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

id Animation.Function.apply(to:)(void *a1, double a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v9 = *v6;
  v8 = v6[1];
  v10 = v7[2];
  v11 = v7[3];
  v12 = v7[4];
  v13 = *(v7 + 40);
  if (v13 <= 4)
  {
    v14 = v9;
    if (v13 <= 1)
    {
      v15 = sel_addPreset_duration_;
    }

    else
    {
      if (v13 != 2)
      {
        if (v13 == 3)
        {
          v15 = sel_addPreset_duration_;
          goto LABEL_22;
        }

        a3 = v8;
        a4 = v10;
        a5 = v11;
        a6 = v12;
        v15 = sel_addBezierDuration_controlPoint1_controlPoint2_;
LABEL_17:

        return [a1 v15];
      }

      v15 = sel_addPreset_duration_;
    }

LABEL_22:

    return [a1 v15];
  }

  if (v13 > 6)
  {
    if (v13 == 7)
    {
      v16 = *(*&v9 + 16);
      v17 = *(*&v9 + 56);
      v18 = *(*&v9 + 64);
      v19 = sel_addDelay_;
    }

    else
    {
      if (v13 != 8)
      {
        v17 = *(*&v9 + 64);
        v18 = *(*&v9 + 72);
        v48 = *(*&v9 + 48);
        v49 = *(*&v9 + 32);
        v20 = a1;
        [a1 addRepeatCount:*(*&v9 + 24) autoreverses:*(*&v9 + 16)];
        goto LABEL_21;
      }

      v16 = *(*&v9 + 16);
      v17 = *(*&v9 + 56);
      v18 = *(*&v9 + 64);
      v19 = sel_addSpeed_;
    }

    v49 = *(*&v9 + 24);
    v20 = a1;
    [a1 v19];
LABEL_21:
    v52 = v49;
    v53 = v48;
    v54 = v17;
    v55 = v18;
    return Animation.Function.apply(to:)(v20);
  }

  if (v13 == 5)
  {
    v14 = v9;
    a3 = v8;
    a4 = v10;
    a5 = v11;
    a6 = v12;
    v15 = sel_addSpringDuration_mass_stiffness_damping_initialVelocity_;
    goto LABEL_17;
  }

  v23 = MEMORY[0x1E69E7CC0];
  v52 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  LOWORD(v53) = 0;
  *&v24 = 0;
  while (1)
  {
    v50 = v24;
    *&v25 = COERCE_DOUBLE((*&v9)(&v52));
    if (v26)
    {
      break;
    }

    v27 = *&v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
    }

    v29 = *(v23 + 2);
    v28 = *(v23 + 3);
    v24 = v50;
    if (v29 >= v28 >> 1)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v23);
      v24 = v50;
      v23 = v31;
    }

    *&v30.f64[0] = v24;
    v30.f64[1] = v27;
    *(v23 + 2) = v29 + 1;
    *&v23[8 * v29 + 32] = vcvt_f32_f64(v30);
    *&v24 = *&v24 + 0.1;
    if (*&v24 >= 10.0)
    {
      goto LABEL_34;
    }
  }

  *&v24 = v50;
LABEL_34:
  v51 = *&v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
  }

  v33 = *(v23 + 2);
  v32 = *(v23 + 3);
  v34 = v51;
  if (v33 >= v32 >> 1)
  {
    v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v23);
    v34 = v51;
    v23 = v47;
  }

  v35 = v34;
  *(v23 + 2) = v33 + 1;
  v36 = &v23[8 * v33 + 32];
  *v36 = v35;
  *(v36 + 4) = 1065353216;
  v37 = 1.0 / v34;
  if (v33 >= 4)
  {
    v39 = (v33 + 1) & 3;
    if (!v39)
    {
      v39 = 4;
    }

    v38 = v33 + 1 - v39;
    v40 = v38;
    v41 = (v23 + 32);
    v42 = (v23 + 32);
    do
    {
      v43 = vld2q_f32(v42);
      v42 += 8;
      v44 = vmulq_n_f32(v43, v37);
      *v41 = v44.f32[0];
      v41[2] = v44.f32[1];
      v41[4] = v44.f32[2];
      v41[6] = v44.f32[3];
      v41 = v42;
      v40 -= 4;
    }

    while (v40);
  }

  else
  {
    v38 = 0;
  }

  v45 = v33 - v38 + 1;
  v46 = 8 * v38 + 32;
  do
  {
    *&v23[v46] = *&v23[v46] * v37;
    v46 += 8;
    --v45;
  }

  while (v45);

  [a1 addSampledFunctionWithDuration:v33 + 1 count:v23 + 32 values:v51];
}

Swift::Void __swiftcall DisplayList.InterpolatorLayer.updateInterpolators(contentsScale:maxDuration:)(Swift::Float contentsScale, Swift::Double maxDuration)
{
  if (*(v2 + 83) != 1)
  {
    return;
  }

  v3 = v2;
  *(v2 + 83) = 0;
  v125[0] = 0;
  v4 = *(v2 + 56);
  v5 = *(v4 + 2);
  if (!v5)
  {
    goto LABEL_139;
  }

  v113 = 0;
  v115 = 0;
  v7 = 0;
  v8 = 0;
  v9 = contentsScale;
  v10 = MEMORY[0x1E69E7CA0];
  v112 = v2;
  do
  {
    while (1)
    {
      if (v7 < 0)
      {
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
        return;
      }

      if (v7 >= *(v4 + 2))
      {
        goto LABEL_144;
      }

      v11 = 112 * v7;
      if (v4[112 * v7 + 136] <= 1u)
      {
        if (v4[112 * v7 + 136])
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
          }

          if (v7 >= *(v4 + 2))
          {
            goto LABEL_156;
          }

          v13 = &v4[v11];
          v4[v11 + 136] = 2;
          *(v3 + 56) = v4;
LABEL_24:
          swift_beginAccess();
          if (static CoreTesting.isRunning)
          {
            goto LABEL_27;
          }

          *(v13 + 15) = *(v3 + 64);
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
          }

          if (v7 >= *(v4 + 2))
          {
            goto LABEL_157;
          }

          v12 = &v4[v11];
          v12[136] = 1;
          *(v12 + 15) = *(v3 + 64);
        }

        *(v3 + 56) = v4;
        goto LABEL_27;
      }

      if (v4[112 * v7 + 136] == 2)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
        }

        if (v7 >= *(v4 + 2))
        {
          goto LABEL_155;
        }

        v13 = &v4[v11];
        v4[v11 + 136] = 3;
        *(v3 + 56) = v4;
        if (*(v3 + 64) - *&v4[v11 + 120] > 0.0333333333)
        {
          goto LABEL_24;
        }
      }

LABEL_27:
      v14 = *(v4 + 2);
      if (v7 >= v14)
      {
        goto LABEL_145;
      }

      v15 = &v4[v11];
      v16 = *&v4[v11 + 128];
      if (v16 >= 0.0 && v16 <= *(v3 + 64) - *(v15 + 15))
      {
        DisplayList.InterpolatorLayer.remove(prefix:)(v7);
        goto LABEL_5;
      }

      if (v7)
      {
        if (!v8)
        {
          v8 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
          v125[0] = v8;
          v14 = *(v4 + 2);
        }

        if (v7 > v14)
        {
          goto LABEL_150;
        }

        v17 = *(v15 + 1);
        if (*(v3 + 64) - v17 < 0.0)
        {
          v18 = 0.0;
        }

        else
        {
          v18 = *(v3 + 64) - v17;
        }

        v19 = *(v15 - 3);
        if (!v19)
        {
          goto LABEL_162;
        }

        if (!v8)
        {
          goto LABEL_161;
        }

        State = RBDisplayListGetState();
        *&v21 = v18;
        [v19 drawInState:State by:v21];
        v116 = [v8 moveContents];
        goto LABEL_50;
      }

      v22 = *(v3 + 64);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (!*(v4 + 2))
        {
          goto LABEL_152;
        }
      }

      else
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
        if (!*(v4 + 2))
        {
          goto LABEL_152;
        }
      }

      v23 = &v4[v11 + 32];
      v116 = *&v4[v11 + 64];
      if (v116 && v22 < *&v4[v11 + 72])
      {
        goto LABEL_50;
      }

      if (!v8)
      {
        v69 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
        v125[0] = v69;
        if (!v69)
        {
          goto LABEL_165;
        }

        v8 = v69;
        [v69 setDeviceScale_];
        v24 = *(v3 + 72);
        if (v24)
        {
          goto LABEL_46;
        }

LABEL_93:
        LOBYTE(v118) = 3;
        type metadata accessor for DisplayList.GraphicsRenderer();
        swift_allocObject();
        v24 = DisplayList.GraphicsRenderer.init(platformViewMode:)(&v118);
        *(v3 + 72) = v24;
        goto LABEL_46;
      }

      v24 = *(v3 + 72);
      if (!v24)
      {
        goto LABEL_93;
      }

LABEL_46:
      v25 = v5;
      if (v4[v11 + 84] != 1)
      {
        isa = Float._bridgeToObjectiveC()().super.super.isa;
        [v8 setValue:isa forAttribute:0];
      }

      v27 = v8;
      v28 = *(v24 + 64);
      *(v24 + 72) = v22;
      *(v24 + 80) = 0x7FF0000000000000;

      v29 = *(v24 + 48);
      v30 = *(v24 + 56);
      closure #1 in DisplayList.InterpolatorLayer.Contents.render(at:renderer:storage:contentsScale:)(v125, v23, (v3 + 72));
      swift_beginAccess();

      v31 = MEMORY[0x1E69E7CC8];
      *(v24 + 16) = MEMORY[0x1E69E7CC8];

      swift_beginAccess();
      v32 = *(v24 + 32);
      *(v24 + 32) = v31;
      *(v24 + 40) = v31;
      *(v24 + 16) = v32;
      swift_endAccess();
      *(v24 + 48) = v29;
      *(v24 + 56) = v30;
      *(v24 + 64) = v28;

      *(v23 + 40) = *(v24 + 80);
      v33 = [v27 moveContents];
      swift_unknownObjectRelease();
      v116 = v33;
      *(v23 + 32) = v33;
      if (!*(v4 + 2))
      {
        goto LABEL_153;
      }

      v8 = v27;
      v115 = 1;
      v5 = v25;
      v10 = MEMORY[0x1E69E7CA0];
      v11 = 112 * v7;
LABEL_50:
      v34 = *(v3 + 64);
      v114 = v5;
      if (v7 < v5 - 1)
      {
        break;
      }

      v40 = *(v3 + 32);
      if (!v40 || v34 >= *(v3 + 40))
      {
        if (v8)
        {
          swift_unknownObjectRetain();
          v41 = *(v3 + 72);
          if (v41)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v62 = objc_allocWithZone(MEMORY[0x1E69C70A8]);
          swift_unknownObjectRetain();
          v63 = [v62 init];
          v125[0] = v63;
          if (!v63)
          {
            goto LABEL_163;
          }

          v8 = v63;
          [v63 setDeviceScale_];
          v41 = *(v3 + 72);
          if (v41)
          {
LABEL_64:
            if (*(v3 + 52))
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          }
        }

        type metadata accessor for DisplayList.GraphicsRenderer();
        v64 = swift_allocObject();
        v41 = v64;
        v65 = MEMORY[0x1E69E7CC8];
        *(v64 + 16) = MEMORY[0x1E69E7CC8];
        *(v64 + 24) = v65;
        *(v64 + 32) = v65;
        *(v64 + 40) = v65;
        *(v64 + 48) = 0;
        *(v64 + 56) = 0;
        *(v64 + 72) = xmmword_18DDAB910;
        *(v64 + 88) = 0;
        *(v64 + 96) = 0;
        *(v64 + 104) = MEMORY[0x1E69E7CC0];
        *(v64 + 112) = 3;
        v66 = __CFADD__(lastIdentity, 1);
        v67 = ++lastIdentity;
        if (v66)
        {
          v81 = 0;
          v80 = 1;
        }

        else
        {
          v80 = 0;
          *(v64 + 48) = v67;
          v81 = 1;
        }

        *(v64 + 52) = v80;
        *(v64 + 64) = v81;
        *(v3 + 72) = v64;
        if (*(v3 + 52))
        {
LABEL_66:
          v43 = *(v41 + 48);
          v44 = *(v41 + 56);
          v45 = *(v41 + 64);
          *(v41 + 72) = v34;
          *(v41 + 80) = 0x7FF0000000000000;
          v118 = 0uLL;
          swift_beginAccess();
          if (static ViewGraphHost.isDefaultEnvironmentConfigured != 1)
          {
            v57 = one-time initialization token for shared;

            v49 = v8;
            v58 = v8;
            if (v57 != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v59 = *((*MEMORY[0x1E69E7D40] & *static CoreGlue2.shared) + 0x68);
            v60 = static CoreGlue2.shared;
            v59(&v118);

            v61 = *(&v118 + 1);
            v48 = v118;
            goto LABEL_111;
          }

          v46 = one-time initialization token for _defaultEnvironment;

          v47 = v8;
          if (v46 != -1)
          {
            swift_once();
          }

          v48 = static ViewGraphHost._defaultEnvironment;
          if (static ViewGraphHost._defaultEnvironment)
          {
            v49 = v8;
            if (!*(static ViewGraphHost._defaultEnvironment + 64))
            {
              v61 = 0;
              v48 = 0;
LABEL_111:
              type metadata accessor for GraphicsContext.Storage();
              v82 = swift_allocObject();
              *(v82 + 32) = xmmword_18DD85500;
              *(v82 + 48) = 1065353216;
              *(v82 + 56) = 0x7FF8000000000000;
              *&v118 = v48;
              *(&v118 + 1) = v61;
              type metadata accessor for GraphicsContext.Storage.Shared();
              swift_allocObject();
              v83 = v49;
              *(v82 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v83, &v118);
              *(v82 + 24) = RBDisplayListGetState();
              *(v82 + 64) = 0;

              *&v117[0] = v82;
              if (*(v3 + 16) != 0.0 || *(v3 + 24) != 0.0)
              {
                GraphicsContext.copyOnWrite()();
                RBDrawingStateTranslateCTM();
              }

              v84 = *(v3 + 8);
              v85 = *(v3 + 12);
              *&v118 = *v3;
              WORD4(v118) = v84;
              HIDWORD(v118) = v85;

              DisplayList.GraphicsRenderer.render(list:in:)(&v118, v117);

              swift_beginAccess();

              v86 = MEMORY[0x1E69E7CC8];
              *(v41 + 16) = MEMORY[0x1E69E7CC8];

              v115 = 1;
              swift_beginAccess();
              v87 = *(v41 + 32);
              *(v41 + 32) = v86;
              *(v41 + 40) = v86;
              *(v41 + 16) = v87;
              swift_endAccess();
              *(v41 + 48) = v43;
              *(v41 + 56) = v44;
              *(v41 + 64) = v45;

              *(v3 + 40) = *(v41 + 80);
              v88 = [v83 moveContents];
              swift_unknownObjectRelease();
              *(v3 + 32) = v88;
              v40 = v88;
              v8 = v49;
              v11 = 112 * v7;
              v10 = MEMORY[0x1E69E7CA0];
              goto LABEL_115;
            }
          }

          else
          {
            v49 = v8;
          }

          v61 = 0;
          goto LABEL_111;
        }

LABEL_65:
        v42 = Float._bridgeToObjectiveC()().super.super.isa;
        [v8 setValue:v42 forAttribute:0];

        goto LABEL_66;
      }

      swift_unknownObjectRetain();
      if ((v115 & 1) == 0)
      {
        v37 = *(v4 + 2);
        goto LABEL_96;
      }

      v115 = 1;
LABEL_115:
      if (v7 >= *(v4 + 2))
      {
        goto LABEL_146;
      }

      v89 = *MEMORY[0x1E69C7150];
      v90 = *&v4[v11 + 104];
      *(&v119 + 1) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for RBAnimation);
      *&v118 = v90;
      outlined init with take of Any(&v118, v117);
      swift_unknownObjectRetain();
      v91 = v90;
      v92 = MEMORY[0x1E69E7CC8];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v124 = v92;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v117, v89, isUniquelyReferenced_nonNull_native);
      if (v7 >= *(v4 + 2))
      {
        goto LABEL_147;
      }

      v94 = v124;
      v95 = *MEMORY[0x1E69C7158];
      v96 = *&v4[v11 + 96];
      if (v96)
      {
        *(&v119 + 1) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for RBTransition);
        *&v118 = v96;
        outlined init with take of Any(&v118, v117);
        v97 = v95;
        v98 = v96;
        v99 = swift_isUniquelyReferenced_nonNull_native();
        v124 = v94;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v117, v97, v99);
      }

      else
      {
        v100 = v95;
        v101 = specialized __RawDictionaryStorage.find<A>(_:)(v100);
        if (v102)
        {
          v103 = v101;
          v104 = swift_isUniquelyReferenced_nonNull_native();
          *&v117[0] = v94;
          if ((v104 & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
            v94 = *&v117[0];
          }

          outlined init with take of Any((*(v94 + 56) + 32 * v103), &v118);
          specialized _NativeDictionary._delete(at:)(v103, v94);
        }

        else
        {
          v118 = 0u;
          v119 = 0u;
        }

        _sypSgWOhTm_0(&v118, &lazy cache variable for type metadata for Any?, v10 + 8);
      }

      type metadata accessor for RBDisplayListInterpolatorOptionKey(0);
      lazy protocol witness table accessor for type RBDisplayListInterpolatorOptionKey and conformance RBDisplayListInterpolatorOptionKey();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v105 = Dictionary._bridgeToObjectiveC()().super.isa;

      v106 = [objc_opt_self() newInterpolatorWithFrom:v116 to:v40 options:v105];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v107 = v106;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
      }

      if (v7 >= *(v4 + 2))
      {
        goto LABEL_148;
      }

      v108 = &v4[v11];
      v109 = *&v4[v11 + 88];
      *&v4[v11 + 88] = v107;

      [v107 activeDuration];
      if (v7 >= *(v4 + 2))
      {
        goto LABEL_149;
      }

      if (v110 > maxDuration)
      {
        v110 = maxDuration;
      }

      *(v108 + 16) = v110;
      v3 = v112;
      *(v112 + 56) = v4;
      if (*(v108 + 16) > v34 - *(v108 + 15))
      {

        if (v113)
        {
          goto LABEL_133;
        }

        goto LABEL_102;
      }

      DisplayList.InterpolatorLayer.remove(prefix:)(v7);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
LABEL_5:
      v7 = 0;
      v4 = *(v3 + 56);
      v5 = *(v4 + 2);
      if (v5 <= 0)
      {
        goto LABEL_138;
      }
    }

    swift_unknownObjectRetain();
    v35 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    }

    v36 = v7 + 1;
    v37 = *(v4 + 2);
    if (v7 + 1 >= v37)
    {
      goto LABEL_151;
    }

    v38 = &v4[112 * v36];
    v39 = (v38 + 32);
    v40 = *(v38 + 8);
    if (!v40 || v34 >= *(v38 + 9))
    {
      if (v35)
      {
        v50 = *(v3 + 72);
        if (v50)
        {
LABEL_74:
          if (*(v39 + 52) != 1)
          {
            v51 = Float._bridgeToObjectiveC()().super.super.isa;
            [v35 setValue:v51 forAttribute:0];
          }

          v52 = *(v50 + 64);
          *(v50 + 72) = v34;
          *(v50 + 80) = 0x7FF0000000000000;

          v53 = *(v50 + 48);
          v54 = *(v50 + 56);
          closure #1 in DisplayList.InterpolatorLayer.Contents.render(at:renderer:storage:contentsScale:)(v125, v39, (v3 + 72));
          swift_beginAccess();

          v55 = MEMORY[0x1E69E7CC8];
          *(v50 + 16) = MEMORY[0x1E69E7CC8];

          swift_beginAccess();
          v56 = *(v50 + 32);
          *(v50 + 32) = v55;
          *(v50 + 40) = v55;
          *(v50 + 16) = v56;
          swift_endAccess();
          *(v50 + 48) = v53;
          *(v50 + 56) = v54;
          *(v50 + 64) = v52;

          *(v39 + 40) = *(v50 + 80);
          v40 = [v35 moveContents];
          swift_unknownObjectRelease();
          *(v39 + 32) = v40;
          if (v36 >= *(v4 + 2))
          {
            goto LABEL_154;
          }

          v115 = 1;
          v10 = MEMORY[0x1E69E7CA0];
          v8 = v35;
          goto LABEL_78;
        }
      }

      else
      {
        v68 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
        v125[0] = v68;
        if (!v68)
        {
          goto LABEL_164;
        }

        v35 = v68;
        [v68 setDeviceScale_];
        v50 = *(v3 + 72);
        if (v50)
        {
          goto LABEL_74;
        }
      }

      LOBYTE(v118) = 3;
      type metadata accessor for DisplayList.GraphicsRenderer();
      swift_allocObject();
      v50 = DisplayList.GraphicsRenderer.init(platformViewMode:)(&v118);
      *(v3 + 72) = v50;
      goto LABEL_74;
    }

    if (v115)
    {
      v115 = 1;
      v8 = v35;
LABEL_78:
      v11 = 112 * v7;
      goto LABEL_115;
    }

    v8 = v35;
    v11 = 112 * v7;
LABEL_96:
    if (v7 >= v37)
    {
      goto LABEL_159;
    }

    v70 = *&v4[v11 + 88];
    if (!v70)
    {
      v115 = 0;
      goto LABEL_115;
    }

    swift_unknownObjectRetain();
    v71 = v70;
    [v71 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for RBDisplayListInterpolator);
    swift_dynamicCast();
    v72 = *&v117[0];
    [v72 setFrom_];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    }

    if (v7 >= *(v4 + 2))
    {
      goto LABEL_160;
    }

    v73 = *&v4[v11 + 88];
    *&v4[v11 + 88] = v72;

    v115 = 0;
    *(v3 + 56) = v4;
    if (v113)
    {
LABEL_133:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v79 = 1;
      goto LABEL_134;
    }

LABEL_102:
    if (v7 >= *(v4 + 2))
    {
      goto LABEL_158;
    }

    v74 = *&v4[v11 + 32];
    v75 = *&v4[v11 + 64];
    v119 = *&v4[v11 + 48];
    v120 = v75;
    v118 = v74;
    v76 = *&v4[v11 + 80];
    v77 = *&v4[v11 + 96];
    v78 = *&v4[v11 + 112];
    *(v123 + 9) = *&v4[v11 + 121];
    v122 = v77;
    v123[0] = v78;
    v121 = v76;
    outlined init with copy of DisplayList.InterpolatorLayer.Removed(&v118, v117);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    outlined destroy of DisplayList.InterpolatorLayer.Removed(&v118);
    v79 = *(&v120 + 1) < INFINITY;
    if (*(&v120 + 1) > INFINITY)
    {
      v79 = 1;
    }

LABEL_134:
    v113 = v79;
    ++v7;
    v5 = v114;
  }

  while (v7 < v114);
LABEL_138:

  if (v113)
  {
    return;
  }

LABEL_139:
  v111 = *(v3 + 40);
  if (v111 >= INFINITY && v111 <= INFINITY)
  {

    *(v3 + 72) = 0;
  }
}

void closure #1 in DisplayList.InterpolatorLayer.Contents.render(at:renderer:storage:contentsScale:)(id *a1, uint64_t a2, void *a3)
{
  if (!*a1)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v5 = *a1;
  EnvironmentValues.init()(&v13);
  v6 = v13;
  v7 = v14;
  type metadata accessor for GraphicsContext.Storage();
  v8 = swift_allocObject();
  *(v8 + 32) = xmmword_18DD85500;
  *(v8 + 48) = 1065353216;
  *(v8 + 56) = 0x7FF8000000000000;
  v12[0] = v6;
  v12[1] = v7;
  type metadata accessor for GraphicsContext.Storage.Shared();
  swift_allocObject();
  v9 = v5;
  *(v8 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v9, v12);
  *(v8 + 24) = RBDisplayListGetState();
  *(v8 + 64) = 0;

  v12[0] = v8;
  if (*(a2 + 16) != 0.0 || *(a2 + 24) != 0.0)
  {
    GraphicsContext.copyOnWrite()();
    RBDrawingStateTranslateCTM();
  }

  if (!*a3)
  {
    goto LABEL_10;
  }

  v10 = *(a2 + 8);
  v11 = *(a2 + 12);
  v13 = *a2;
  LOWORD(v14) = v10;
  HIDWORD(v14) = v11;

  DisplayList.GraphicsRenderer.render(list:in:)(&v13, v12);
}

void type metadata accessor for _DictionaryStorage<RBDisplayListInterpolatorOptionKey, Any>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<RBDisplayListInterpolatorOptionKey, Any>)
  {
    type metadata accessor for RBDisplayListInterpolatorOptionKey(255);
    lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type RBDisplayListInterpolatorOptionKey and conformance RBDisplayListInterpolatorOptionKey, type metadata accessor for RBDisplayListInterpolatorOptionKey);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<RBDisplayListInterpolatorOptionKey, Any>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type RBDisplayListInterpolatorOptionKey and conformance RBDisplayListInterpolatorOptionKey()
{
  result = lazy protocol witness table cache variable for type RBDisplayListInterpolatorOptionKey and conformance RBDisplayListInterpolatorOptionKey;
  if (!lazy protocol witness table cache variable for type RBDisplayListInterpolatorOptionKey and conformance RBDisplayListInterpolatorOptionKey)
  {
    type metadata accessor for RBDisplayListInterpolatorOptionKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RBDisplayListInterpolatorOptionKey and conformance RBDisplayListInterpolatorOptionKey);
  }

  return result;
}

void DisplayList.InterpolatorLayer.remove(prefix:)(uint64_t a1)
{
  if (a1 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = a1;
  v4 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v1 = v2;
  v3 = (v2 + 56);
  v6 = *(v2 + 7);
  if (*(v6 + 16) < v4)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v4 < 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    goto LABEL_12;
  }

  for (i = 32; ; i += 112)
  {
    v8 = *(v6 + i + 48);
    v9 = *(v6 + i + 64);
    v10 = *(v6 + i + 89);
    v20[0] = *(v6 + i + 80);
    v11 = *(v6 + i + 16);
    v12 = *(v6 + i + 32);
    v19[0] = *(v6 + i);
    v19[1] = v11;
    *(v20 + 9) = v10;
    v19[3] = v8;
    v19[4] = v9;
    v19[2] = v12;
    if (*&v20[0])
    {
      v13 = *(**&v20[0] + 96);
      outlined init with copy of DisplayList.InterpolatorLayer.Removed(v19, &v18);

      v13(v14);
      outlined destroy of DisplayList.InterpolatorLayer.Removed(v19);
    }

    if (!v5)
    {
      break;
    }

    --v5;
  }

  specialized Array.replaceSubrange<A>(_:with:)(0, v4);
  v2 = *v3;
  v4 = *(*v3 + 2);
  if (!v4)
  {
    goto LABEL_16;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  v15 = 0;
  v16 = 88;
  do
  {
    if (v15 >= *(v2 + 2))
    {
      __break(1u);
      goto LABEL_18;
    }

    ++v15;
    v17 = *&v2[v16];
    *&v2[v16] = 0;

    v16 += 112;
  }

  while (v4 != v15);
  *v3 = v2;
LABEL_16:
  v1[83] = 1;
}

uint64_t destroy for DisplayList.InterpolatorLayer.Removed(id *a1)
{

  swift_unknownObjectRelease();
}

uint64_t DisplayList.InterpolatorLayer.updateOutput(list:frame:contentOffset:version:rasterizationOptions:)(uint64_t a1, uint64_t *a2, int *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = *(v9 + 7);
  v11 = *(v10 + 16);
  if (!v11)
  {
    return 0;
  }

  v85 = *a2;
  v17 = *(a3 + 4);
  v18 = *(a3 + 5);
  v82 = *a3;
  v83 = a3[2];
  v84 = *(a3 + 12);
  v19 = *v9;
  v20 = *(v9 + 4);
  v80 = *(v9 + 3);
  v22 = v9[2];
  v21 = v9[3];
  v23 = v9[8];
  v24 = *(v9 + 82);

  if (v11 == 1)
  {
    if (!*(v10 + 16))
    {
      goto LABEL_27;
    }

    v26 = *(v10 + 88);
    if (!v26 || (result = [v26 onlyFades], result))
    {
      v27 = *(v10 + 32);
      v28 = *(v10 + 40);
      v29 = *(v10 + 44);
      *&v89 = MEMORY[0x1E69E7CC0];
      *&v93 = v27;
      WORD4(v93) = v28;
      HIDWORD(v93) = v29;

      specialized DisplayList.forEachIdentity(_:)(&v93, &v89);
      if (*(v89 + 16))
      {
        specialized MutableCollection<>.sort(by:)(&v89);
        *&v93 = v19;
        WORD4(v93) = v20;
        HIDWORD(v93) = v80;
        v30 = specialized DisplayList.forEachIdentity(_:)(&v93, &v89);

        if ((v30 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }

      [*(v10 + 104) evaluateAtTime_];
      v67 = COERCE_UNSIGNED_INT(1.0 - *&v66);
      v68 = *(v10 + 32);
      v69 = *(v10 + 40) | (*(v10 + 44) << 32) | 0x40000000;
      v70 = *(v10 + 48) - v22 + a8;
      v71 = *(v10 + 56) - v21 + a9;
      v72 = v66;
      v73 = v20 | (v80 << 32) | 0x40000000;
      _ss23_ContiguousArrayStorageCy7SwiftUI11DisplayListV4ItemVGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item, MEMORY[0x1E69E6F90]);
      v74 = swift_allocObject();
      *&v89 = v70;
      *(&v89 + 1) = v71;
      *&v90 = a6;
      *(&v90 + 1) = a7;
      *&v91 = v85;
      *(&v91 + 1) = v67;
      *v92 = 0x400000000;
      *&v92[8] = v68;
      v75 = v91;
      v76 = *v92;
      v77 = v89;
      *(v74 + 48) = v90;
      *(v74 + 64) = v75;
      *&v92[16] = v69;
      *&v92[24] = 0;
      *(v74 + 80) = v76;
      *(v74 + 92) = *&v92[12];
      *(v74 + 16) = xmmword_18DDAB4C0;
      *(v74 + 32) = v77;
      *(v74 + 112) = a8;
      *(v74 + 120) = a9;
      *(v74 + 128) = a6;
      *(v74 + 136) = a7;
      *(v74 + 144) = v85;
      *(v74 + 152) = v72;
      *(v74 + 160) = 0x400000000;
      *(v74 + 168) = v19;
      *(v74 + 176) = v73;
      *(v74 + 184) = 0;

      outlined init with copy of DisplayList.Item(&v89, &v93);
      DisplayList.init(_:)(v74, &v86);
      *&v93 = v70;
      *(&v93 + 1) = v71;
      *&v94 = a6;
      *(&v94 + 1) = a7;
      *&v95 = v85;
      *(&v95 + 1) = v67;
      v96 = 0x400000000;
      *v97 = v68;
      *&v97[8] = v69;
      *&v97[16] = 0;
      outlined destroy of DisplayList.Item(&v93);
      v78 = v87;
      v79 = v88;
      *a1 = v86;
      *(a1 + 8) = v78;
      *(a1 + 12) = v79;
      return 1;
    }
  }

LABEL_8:
  if (v11 <= *(v10 + 16))
  {
    v31 = v10 + 112 * v11;
    v32 = *(v31 - 24);
    if (!v32)
    {
      result = 0;
      *a1 = MEMORY[0x1E69E7CC0];
      *(a1 + 8) = 0;
      *(a1 + 12) = 0;
      return result;
    }

    v33 = v17;
    v81 = v21;
    v34 = v24;
    v35 = v23 - *(v31 + 8);
    if (v35 < 0.0)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = v23 - *(v31 + 8);
    }

    v37 = v32;
    *&v38 = v36;
    [v37 boundingRectWithProgress_];
    x = v98.origin.x;
    y = v98.origin.y;
    width = v98.size.width;
    height = v98.size.height;
    IsNull = CGRectIsNull(v98);
    v44 = 0.0;
    v45 = 0.0;
    v46 = 0.0;
    v47 = 0.0;
    if (!IsNull)
    {
      v44 = x;
      v45 = y;
      v46 = width;
      v47 = height;
    }

    v99 = CGRectIntegral(*&v44);
    v48 = v99.origin.x;
    v49 = v99.origin.y;
    v50 = v99.size.width;
    v51 = v99.size.height;
    *&v99.origin.x = v36;
    v52 = [v37 copyContentsWithProgress_];
    v53 = swift_allocObject();
    *(v53 + 16) = v52;
    *(v53 + 24) = v48;
    *(v53 + 32) = v49;
    *(v53 + 40) = v82;
    *(v53 + 44) = v33;
    *(v53 + 45) = v18;
    *(v53 + 48) = v83 | 0x100;
    *(v53 + 52) = v84;
    if (v85)
    {
      v54 = (2 * (((33 * WORD1(v85)) ^ v85) & 0x7FFFLL)) | 1;
    }

    else
    {
      v54 = 0;
    }

    v55 = v53 | 0xC000000000000000;
    v56 = a8 - v22 + v48;
    v57 = a9 - v81 + v49;
    _ss23_ContiguousArrayStorageCy7SwiftUI11DisplayListV4ItemVGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item, MEMORY[0x1E69E6F90]);
    v58 = swift_allocObject();
    *&v93 = v56;
    *(&v93 + 1) = v57;
    *&v94 = v50;
    *(&v94 + 1) = v51;
    *&v95 = v85;
    *(&v95 + 1) = v55;
    v96 = v54;
    *v97 = 0;
    v59 = v95;
    v60 = v93;
    v58[3] = v94;
    v58[4] = v59;
    *&v97[16] = 0;
    *&v97[8] = 0;
    v58[5] = v54;
    *(v58 + 92) = *&v97[4];
    v58[1] = xmmword_18DDA6EB0;
    v58[2] = v60;
    swift_unknownObjectRetain();
    outlined init with copy of DisplayList.Item(&v93, &v89);
    DisplayList.init(_:)(v58, &v89);
    v62 = WORD4(v89);
    v63 = HIDWORD(v89);
    *a1 = v89;
    *(a1 + 8) = v62;
    *(a1 + 12) = v63;
    if (v34)
    {
      *&v61 = v36;
      [v37 maxAbsoluteVelocityWithProgress_];
      v65 = v64;
      specialized static GraphHost.currentHost.getter();
      type metadata accessor for ViewGraph();
      swift_dynamicCastClassUnconditional();
      swift_beginAccess();
      ViewGraph.NextUpdate.maxVelocity(_:)(v65);
      swift_endAccess();
      swift_unknownObjectRelease();

      *&v89 = v56;
      *(&v89 + 1) = v57;
      *&v90 = v50;
      *(&v90 + 1) = v51;
      *&v91 = v85;
      *(&v91 + 1) = v55;
      *&v92[16] = 0;
      *v92 = v54;
      *&v92[24] = 0;
      outlined destroy of DisplayList.Item(&v89);
    }

    else
    {
      *&v89 = v56;
      *(&v89 + 1) = a9 - v81 + v49;
      *&v90 = v50;
      *(&v90 + 1) = v51;
      *&v91 = v85;
      *(&v91 + 1) = v55;
      *&v92[16] = 0;
      *v92 = v54;
      *&v92[24] = 0;
      outlined destroy of DisplayList.Item(&v89);

      swift_unknownObjectRelease();
    }

    return 1;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_18D2D99AC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t destroy for DisplayList.InterpolatorLayer()
{

  swift_unknownObjectRelease();
}

uint64_t closure #1 in AnyTransition.animation(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(*a1);
  if (!v5 || *(v5 + 72) != 1)
  {
    goto LABEL_11;
  }

  if (one-time initialization token for v7 != -1)
  {
    swift_once();
  }

  v6 = static Semantics.v7;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced >= v6)
    {
      return result;
    }

    goto LABEL_11;
  }

  result = dyld_program_sdk_at_least();
  if ((result & 1) == 0)
  {
LABEL_11:

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a1, a3);
  }

  return result;
}

uint64_t key path getter for _ValueTransactionModifier.transform : <A>_ValueTransactionModifier<A>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for _ValueTransactionModifier() + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = partial apply for specialized closure #1 in StatefulRule<>.update<A>(modify:create:);
  a2[1] = v6;
}

uint64_t sub_18D2D9C14()
{

  return swift_deallocObject();
}

uint64_t AnimationBox.shouldMerge<A>(previous:value:time:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v13 = *v6;
  v14 = *(*v6 + 160);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v20 - v17;
  (*(v15 + 16))(&v20 - v17, v6 + *(v13 + 176), v14, v16);
  LOBYTE(a5) = (*(*(v13 + 168) + 32))(a1, a2, a3, a4, a5, v14, a6);
  (*(v15 + 8))(v18, v14);
  return a5 & 1;
}

uint64_t FluidSpringAnimation.shouldMerge<A>(previous:value:time:context:)(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = type metadata accessor for Optional();
  v42 = *(v12 - 8);
  v43 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  v17 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v44 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v41 - v21;
  v23 = type metadata accessor for SpringState();
  v48 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v41 - v24;
  v26 = *v50;
  v46 = type metadata accessor for AnimationContext();
  AnimationContext.springState.getter();
  v27 = *a3;
  v28 = *(a3 + 1);
  v29 = *(a3 + 16);
  v50 = a3;
  v30 = *(a3 + 17);
  v52[0] = v27;
  v52[1] = v28;
  v53 = v29;
  v54 = v30;

  v31 = a2;
  v49 = a1;
  v45 = a5;
  Animation.velocity<A>(value:time:context:)(a2, v52, a1, a4, a5);

  v32 = *(v17 + 48);
  v33 = v32(v16, 1, a4);
  v51 = v23;
  if (v33 == 1)
  {
    (*(v17 + 16))(v22, &v25[*(v23 + 36)], a4);
    if (v32(v16, 1, a4) != 1)
    {
      (*(v42 + 8))(v16, v43);
    }
  }

  else
  {
    (*(v17 + 32))(v22, v16, a4);
  }

  v34 = *(v17 + 40);
  v34(&v25[v51[9]], v22, a4);
  v35 = v47;
  Animation.animate<A>(value:time:context:)(v31, v50, v49, a4, v45, v47, a6);
  if (v32(v35, 1, a4) == 1)
  {
    v36 = v44;
    (*(v17 + 16))();
    if (v32(v35, 1, a4) != 1)
    {
      (*(v42 + 8))(v35, v43);
    }
  }

  else
  {
    v36 = v44;
    (*(v17 + 32))(v44, v35, a4);
  }

  v34(v25, v36, a4);
  v37 = v51;
  *&v25[v51[11]] = a6;
  *&v25[v37[12]] = a6;
  type metadata accessor for InternalAnimationBox<FluidSpringAnimation>(0, &lazy cache variable for type metadata for AnimationBox<FluidSpringAnimation>, lazy protocol witness table accessor for type FluidSpringAnimation and conformance FluidSpringAnimation, type metadata accessor for AnimationBox);
  v38 = swift_dynamicCastClass();
  if (v38)
  {
    v39 = *(v38 + 16);
    if (v26 != v39)
    {
      *&v25[v37[14]] = v39 - v26;
      *&v25[v37[13]] = a6;
    }
  }

  specialized AnimationContext.springState.setter(v25);
  (*(v48 + 8))(v25, v37);
  return 1;
}

uint64_t _s7SwiftUI21MaterialBackdropProxyV14removeObserveryyAA0cdG0_pFyAC7Storage33_DEF3755CDC6B87C0368876C9F497EC3DLLC4DataVzYuYTXEfU_(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = 0;
    v6 = v2 + 32;
    while (v5 < *(v2 + 16))
    {
      outlined init with copy of MaterialBackdropProxy.Observer(v6, v8);
      Strong = swift_unknownObjectWeakLoadStrong();
      result = outlined destroy of weak GestureGraphDelegate?(v8);
      if (Strong)
      {
        result = swift_unknownObjectRelease();
        if (Strong == a2)
        {
          specialized Array.remove(at:)(v5, v8);
          return outlined destroy of weak GestureGraphDelegate?(v8);
        }
      }

      ++v5;
      v6 += 16;
      if (v3 == v5)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized SDFLayer.backdropLayer(_:didChangeLuma:)(double a1)
{
  v2 = a1;
  v3 = roundf(v2 * 32.0) * 0.03125;
  if (*(v1 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_currentLuminance) != v3)
  {
    *(v1 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_currentLuminance) = v3;
    v4 = *(v1 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_backdropObserver);
    if (v4)
    {
      v5 = LODWORD(v3);
      v6 = *(*v4 + 80);

      v6(v5);
    }
  }

  return result;
}

uint64_t _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA18LogForEachSlowPath33_1A3DD35AB7F6976908CD7AF959F34D1FLLV_Ttg5()
{
  swift_beginAccess();
  v0 = static LogForEachSlowPath.cachedValue;
  if (static LogForEachSlowPath.cachedValue == 2)
  {
    if (one-time initialization token for defaults != -1)
    {
      swift_once();
    }

    v1 = static LogForEachSlowPath.defaults;
    v2 = MEMORY[0x193ABEC20](0xD000000000000012, 0x800000018DD771D0);
    v3 = [v1 objectForKey_];

    if (v3)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      _sypSgWOhTm_1(v6, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v4 = MEMORY[0x193ABEC20](0xD000000000000012, 0x800000018DD771D0);
      v0 = [v1 BOOLForKey_];

      static LogForEachSlowPath.cachedValue = v0;
    }

    else
    {
      memset(v6, 0, sizeof(v6));
      _sypSgWOhTm_1(v6, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v0 = 0;
      static LogForEachSlowPath.cachedValue = 0;
    }
  }

  return v0 & 1;
}

id one-time initialization function for defaults()
{
  if (one-time initialization token for swiftUI != -1)
  {
    swift_once();
  }

  v0 = static NSUserDefaults.swiftUI;
  if (static NSUserDefaults.swiftUI)
  {
    v1 = static NSUserDefaults.swiftUI;
  }

  else
  {
    v1 = [objc_opt_self() standardUserDefaults];
    v0 = 0;
  }

  static LogForEachSlowPath.defaults = v1;

  return v0;
}

uint64_t MakeSection.value.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = AGGraphGetCurrentAttribute();
  v7 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = HIDWORD(a2);
    v10 = *(a1 + 16);
    v11 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      v21 = HIDWORD(a2);
      v22 = a2;
      v25 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
      type metadata accessor for ViewList();
      v11 = v25;
      v12 = (a1 + 32);
      do
      {
        v13 = *v12++;
        Value = AGGraphGetValue();
        outlined init with copy of AnyTrackedValue(Value, &v23);
        *&v24[24] = v13;
        v25 = v11;
        v16 = *(v11 + 16);
        v15 = *(v11 + 24);
        if (v16 >= v15 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
          v11 = v25;
        }

        *(v11 + 16) = v16 + 1;
        v17 = (v11 + 48 * v16);
        v18 = v23;
        v19 = *v24;
        *(v17 + 60) = *&v24[12];
        v17[2] = v18;
        v17[3] = v19;
        --v10;
      }

      while (v10);
      LOBYTE(a2) = v22;
      LODWORD(v9) = v21;
    }

    if (v7 == v9)
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v20 = *AGGraphGetValue();
    }

    a3[3] = &type metadata for _ViewList_Section;
    a3[4] = lazy protocol witness table accessor for type _ViewList_Section and conformance _ViewList_Section();
    result = swift_allocObject();
    *a3 = result;
    *(result + 16) = v8;
    *(result + 24) = v11;
    *(result + 32) = v20;
    *(result + 40) = a2 & 1;
  }

  return result;
}

uint64_t sub_18D2DAA54()
{

  return swift_deallocObject();
}

uint64_t CountViews.MakeDynamicContent.value.getter@<X0>(int a1@<W1>, char *a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void (*a6)(char *, uint64_t, uint64_t)@<X6>, uint64_t *a7@<X7>, uint64_t a8@<X8>)
{
  if (*AGGraphGetValue() < 1)
  {
    v16 = 1;
  }

  else
  {
    CountViews.CountHelper.value.getter(a1, a2, a3 & 1, a4, a5, a6, a7, a8);
    v16 = 0;
  }

  v17 = *(*(a5 - 8) + 56);

  return v17(a8, v16, 1, a5);
}

void type metadata accessor for FontBox<Font.SystemProvider>()
{
  if (!lazy cache variable for type metadata for FontBox<Font.SystemProvider>)
  {
    lazy protocol witness table accessor for type Font.SystemProvider and conformance Font.SystemProvider();
    v0 = type metadata accessor for FontBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FontBox<Font.SystemProvider>);
    }
  }
}

uint64_t one-time initialization function for list()
{
  type metadata accessor for FontBox<Font.SystemProvider>();
  result = swift_allocObject();
  *(result + 16) = 0x4034000000000000;
  *(result + 24) = 0x3FD3333333333333;
  *(result + 32) = 0;
  *(result + 33) = 3588;
  *(result + 40) = 0;
  *(result + 48) = 1;
  static SystemStyleMetrics.list = result;
  byte_1EAB0F2A0 = 1;
  qword_1EAB0F2A8 = 0;
  return result;
}

BOOL specialized static Text.Suffix.Storage.== infix(_:_:)(uint64_t *a1, int64x2_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v20[0] = *a1;
  v20[1] = v3;
  v20[2] = v5;
  v20[3] = v4;
  v21 = v6;
  v22 = v7;
  if (!(v5 >> 62))
  {
    v8 = v7.i64[0];
    if (!(v7.i64[0] >> 62))
    {
      v9 = v7.i64[1];
      if ((v5 & 1) == 0)
      {
        if ((v7.i8[0] & 1) == 0)
        {
          v11 = v6.i64[1];
          v10 = v6.i64[0];
          if (__PAIR128__(v3, v2) == *&v6)
          {
LABEL_29:
            outlined copy of Text.Suffix.Storage(v2, v3, v8);
            outlined copy of Text.Suffix.Storage(v2, v3, v5);
            goto LABEL_31;
          }

          goto LABEL_30;
        }

        goto LABEL_24;
      }

      goto LABEL_10;
    }

LABEL_22:
    v15 = v6.i64[1];
    v14 = v6.i64[0];
    v8 = v7.i64[0];
LABEL_25:
    outlined copy of Text.Suffix.Storage(v14, v15, v8);
    outlined copy of Text.Suffix.Storage(v2, v3, v5);
    goto LABEL_26;
  }

  if (v5 >> 62 == 1)
  {
    v8 = v7.i64[0];
    if (v7.i64[0] >> 62 == 1)
    {
      v9 = v7.i64[1];
      if ((v5 & 1) == 0)
      {
        if ((v7.i8[0] & 1) == 0)
        {
          v11 = v6.i64[1];
          v10 = v6.i64[0];
          if (__PAIR128__(v3, v2) == *&v6)
          {
            goto LABEL_29;
          }

LABEL_30:
          v17 = v8;
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of Text.Suffix.Storage(v10, v11, v17);
          outlined copy of Text.Suffix.Storage(v2, v3, v5);
          if (v18)
          {
LABEL_31:
            v19 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v4, v9);
            outlined destroy of ResolvedOptionalTextFilter(v20, type metadata accessor for (Text.Suffix.Storage, Text.Suffix.Storage));
            return (v19 & 1) != 0;
          }

LABEL_26:
          outlined destroy of ResolvedOptionalTextFilter(v20, type metadata accessor for (Text.Suffix.Storage, Text.Suffix.Storage));
          return 0;
        }

        goto LABEL_24;
      }

LABEL_10:
      if (v8)
      {
        v12 = v6.i64[0];
        v13 = *(*v2 + 96);
        outlined copy of Text.Suffix.Storage(v6.i64[0], v6.i64[1], v8);
        outlined copy of Text.Suffix.Storage(v2, v3, v5);
        if (v13(v12))
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

LABEL_24:
      v15 = v6.i64[1];
      v14 = v6.i64[0];
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (v5 != 0x8000000000000000 || v4 | v3 | v2)
  {
    if (v7.i64[0] >> 62 != 2 || (vaddvq_s32(vbicq_s8(xmmword_18DDA9F30, vuzp1q_s32(vceqq_s64(v6, xmmword_18DD85500), vceqq_s64(v7, xmmword_18DD85510)))) & 0xF) != 0)
    {
      goto LABEL_22;
    }
  }

  else if (v7.i64[0] >> 62 != 2 || v7.i64[0] != 0x8000000000000000 || v6.i64[1] | v6.i64[0] | v7.i64[1])
  {
    goto LABEL_22;
  }

  outlined destroy of ResolvedOptionalTextFilter(v20, type metadata accessor for (Text.Suffix.Storage, Text.Suffix.Storage));
  return 1;
}

uint64_t outlined destroy of ResolvedOptionalTextFilter(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (Text.Suffix.Storage, Text.Suffix.Storage)()
{
  if (!lazy cache variable for type metadata for (Text.Suffix.Storage, Text.Suffix.Storage))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Text.Suffix.Storage, Text.Suffix.Storage));
    }
  }
}

uint64_t _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA011IsSectioneddG0V_Tt0g5(char a1)
{
  v2 = v1;
  v3 = 0;
  v4 = 0;
  v18 = a1 & 1;
  v22 = a1;
  v5 = *v1;
  v6 = *v1 + 32;
  v7 = *(*v1 + 16);
  do
  {
    if (v7 == v4)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:
        v16 = v5[2];
        v15 = v5[3];
        if (v16 >= v15 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v5);
          *v2 = v5;
        }

        type metadata accessor for ViewTraitCollection.AnyTrait<LeafContentType.TraitKey>(0, &lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<IsSectionedTraitKey>, &type metadata for IsSectionedTraitKey, &protocol witness table for IsSectionedTraitKey, type metadata accessor for ViewTraitCollection.AnyTrait);
        v20 = v17;
        v21 = &protocol witness table for ViewTraitCollection.AnyTrait<A>;
        LOBYTE(v19) = v18;
        v5[2] = v16 + 1;
        result = outlined init with take of AnyTrackedValue(&v19, &v5[5 * v16 + 4]);
        goto LABEL_13;
      }

LABEL_15:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
      *v2 = v5;
      goto LABEL_10;
    }

    if (v4 >= v5[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    ++v4;
    outlined init with copy of AnyTrackedValue(v6 + v3 * 8, &v19);
    v8 = v20;
    v9 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    v10 = (v9[1])(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(&v19);
    v3 += 5;
  }

  while (v10 != &type metadata for IsSectionedTraitKey);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    *v2 = result;
  }

  if (v4 - 1 < v5[2])
  {
    v12 = v5[v3 + 2];
    v13 = v5[v3 + 3];
    __swift_mutable_project_boxed_opaque_existential_1(&v5[v3 - 1], v12);
    result = (*(v13 + 24))(&v22, MEMORY[0x1E69E6370], v12, v13);
LABEL_13:
    *v2 = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_18D2DB268(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720]);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t partial apply for specialized closure #1 in Attribute.subscript.getter@<X0>(void *a1@<X8>)
{
  result = swift_getAtKeyPath();
  *a1 = v3;
  return result;
}

uint64_t outlined consume of Text.Suffix.Storage(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    outlined consume of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA05DepthdG0V_Tt0g5(uint64_t a1)
{
  v2 = v1;
  v3 = 0;
  v4 = 0;
  v22 = a1;
  v5 = *v1;
  v6 = *v1 + 32;
  v7 = *(*v1 + 16);
  do
  {
    if (v7 == v4)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:
        v16 = v5[2];
        v15 = v5[3];
        if (v16 >= v15 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v5);
          *v2 = v5;
        }

        type metadata accessor for ViewTraitCollection.AnyTrait<LeafContentType.TraitKey>(0, &lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<DepthTraitKey>, &type metadata for DepthTraitKey, &protocol witness table for DepthTraitKey, type metadata accessor for ViewTraitCollection.AnyTrait);
        v20 = v17;
        v21 = &protocol witness table for ViewTraitCollection.AnyTrait<A>;
        *&v19 = a1;
        v5[2] = v16 + 1;
        result = outlined init with take of AnyTrackedValue(&v19, &v5[5 * v16 + 4]);
        goto LABEL_13;
      }

LABEL_15:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
      *v2 = v5;
      goto LABEL_10;
    }

    if (v4 >= v5[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    ++v4;
    outlined init with copy of AnyTrackedValue(v6 + v3 * 8, &v19);
    v8 = v20;
    v9 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    v10 = (v9[1])(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(&v19);
    v3 += 5;
  }

  while (v10 != &type metadata for DepthTraitKey);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    *v2 = result;
  }

  if (v4 - 1 < v5[2])
  {
    v12 = v5[v3 + 2];
    v13 = v5[v3 + 3];
    __swift_mutable_project_boxed_opaque_existential_1(&v5[v3 - 1], v12);
    result = (*(v13 + 24))(&v22, MEMORY[0x1E69E6530], v12, v13);
LABEL_13:
    *v2 = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t static _TagTraitWritingModifier._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  outlined init with copy of _ViewListInputs(a2, v23);
  v10 = *(a2 + 64);
  v18[0] = v9;
  v18[1] = v10;
  v20 = type metadata accessor for _TagTraitWritingModifier.AddTrait();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<ViewTraitCollection>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v18, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_16, v19, v20, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  v24 = v17;
  v13 = type metadata accessor for TagValueTraitKey();
  swift_getWitnessTable();
  _ViewListInputs.addTraitKey<A>(_:)(v13, v13);
  type metadata accessor for Optional();
  v22 = a6;
  swift_getWitnessTable();
  v14 = type metadata accessor for TagValueTraitKey();
  swift_getWitnessTable();
  v15 = _ViewListInputs.addTraitKey<A>(_:)(v14, v14);
  a3(v15, v23);
  return outlined destroy of _ViewListInputs(v23);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _TagTraitWritingModifier<A>.AddTrait()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for _TagTraitWritingModifier<A>.AddTrait(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t _TagTraitWritingModifier.AddTrait.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v39 = a4;
  v7 = type metadata accessor for Optional();
  v42 = a3;
  WitnessTable = swift_getWitnessTable();
  v38 = v7;
  v8 = type metadata accessor for TagValueTraitKey.Value();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v36 = &v31 - v9;
  v10 = type metadata accessor for TagValueTraitKey.Value();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for _TagTraitWritingModifier();
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  _TagTraitWritingModifier.AddTrait.traits.getter(a1, &v40);
  v20 = v40;
  if (!v40)
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v41 = v20;
  _TagTraitWritingModifier.AddTrait.modifier.getter(v15);
  (*(v16 + 32))(v19, v15, a2);
  v32 = *(v16 + 16);
  v32(v12, v19, a2);
  v31 = *(v16 + 56);
  v31(v12, 0, 1, a2);
  v21 = type metadata accessor for TagValueTraitKey();
  v22 = swift_getWitnessTable();
  ViewTraitCollection.subscript.setter(v12, v21, v21, v22);
  v23 = 1;
  _TagTraitWritingModifier.AddTrait.modifier.getter(v15);
  v24 = v15[*(v35 + 36)];
  v25 = v15;
  v26 = v36;
  (*(v34 + 8))(v25);
  if (v24 == 1)
  {
    v32(v26, v19, a2);
    v31(v26, 0, 1, a2);
    v23 = 0;
  }

  v27 = swift_checkMetadataState();
  (*(*(v27 - 8) + 56))(v26, v23, 1, v27);
  v28 = type metadata accessor for TagValueTraitKey();
  v29 = swift_getWitnessTable();
  ViewTraitCollection.subscript.setter(v26, v28, v28, v29);
  result = (*(v16 + 8))(v19, a2);
  *v39 = v41;
  return result;
}

uint64_t _TagTraitWritingModifier.AddTrait.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _TagTraitWritingModifier();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

double SectionAccumulator.formResult(from:listAttribute:)(void *a1, unint64_t a2)
{
  v3 = v2;
  _s7SwiftUI8ViewList_pSgWOhTm_0(v3 + 112, &lazy cache variable for type metadata for ViewList?, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  outlined init with copy of AnyTrackedValue(a1, v3 + 112);
  specialized static Update.begin()();
  v17 = 0;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v16 = 2;
  v13 = 0;
  v14 = 0;
  v12[2] = v3;
  (*(v7 + 64))(&v17, &v16, a2 | ((HIDWORD(a2) & 1) << 32), &v13, partial apply for closure #1 in SectionAccumulator.formResult(from:listAttribute:), v12, v6, v7);
  if (*(v3 + 104) < *(v3 + 184))
  {
    SectionAccumulator.appendImplicitSection()();
  }

  if (!*(*(v3 + 160) + 16))
  {
    if (*(v3 + 184) < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SectionAccumulator.Item>);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_18DDA6EB0;
      outlined init with copy of SectionAccumulator.RowIDAccumulator(v3, &v13);
      v9 = v15;
      outlined destroy of SectionAccumulator.RowIDAccumulator(&v13);
      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      v10 = static Update._lock;
      _MovableLockLock(static Update._lock);
      specialized static Update.begin()();
      closure #1 in static SectionAccumulator.Item.implicitSentinel(_:contentSubgraph:accumulationStrategy:)(a1, 0, v9, v8 + 32);
      static Update.end()();
      _MovableLockUnlock(v10);
    }

    *(v3 + 160) = v8;
  }

  static Update.end()();
  _s7SwiftUI8ViewList_pSgWOhTm_0(v3 + 112, &lazy cache variable for type metadata for ViewList?, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  result = 0.0;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0;
  return result;
}

void type metadata accessor for ViewList?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for AnyTrackedValue(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t SectionAccumulator.apply(start:style:node:transform:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v152 = a1;
  v6 = v181;
  v7 = &v162;
  v194 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v9 = *a4;
  LODWORD(v153) = *(a4 + 8);
  outlined init with copy of _ViewList_Node(a3, &v188);
  if (v193 > 1u)
  {
    if (v193 == 2)
    {
      v21 = 0;
      v22 = v188;
      v23 = *(v188 + 16);
      v7 = v188 + 32;
      while (1)
      {
        if (v21 == v23)
        {
          v21 = v23;
          memset(v181, 0, 44);
        }

        else
        {
          if ((v21 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_102:
            __break(1u);
            goto LABEL_103;
          }

          if (v21 >= *(v22 + 16))
          {
            goto LABEL_102;
          }

          outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v7 + 48 * v21++, v181);
        }

        *(v163 + 12) = *&v181[28];
        v163[0] = *&v181[16];
        v162 = *v181;
        if (!*&v181[24])
        {
          break;
        }

        v24 = DWORD2(v163[1]);
        v177 = v8;
        outlined init with take of _ViewList_Elements(&v162, v181);
        *&v181[40] = v24;
        v181[44] = 0;
        v181[93] = 0;
        *&v157 = v9;
        BYTE8(v157) = v153;
        v4 = SectionAccumulator.apply(start:style:node:transform:)(v152, &v177, v181, &v157);
        outlined destroy of _ViewList_Node(v181);
        if ((v4 & 1) == 0)
        {

          v20 = 0;
          return v20 & 1;
        }
      }

      goto LABEL_99;
    }

    v7 = v188;
    v29 = *(&v188 + 1);
    v11 = v189;
    v30 = BYTE8(v189);
    if (*(v4 + 104) < *(v4 + 184))
    {
      SectionAccumulator.appendImplicitSection()();
    }

    *v181 = v7;
    *&v181[8] = v29;
    *&v181[16] = v11;
    v181[24] = v30;
    *&v162 = 2;
    v4 = v181;
    v31 = _ViewList_Section.count(style:)(&v162);
    if (v31 >= 1)
    {
      v152 = v31;
      if (*(v29 + 16) >= 2uLL)
      {
        outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v29 + 80, v181);
        outlined init with take of _ViewList_Elements(v181, &v162);
        v32 = *(&v163[0] + 1);
        v33 = *&v163[1];
        __swift_project_boxed_opaque_existential_1(&v162, *(&v163[0] + 1));
        v145 = ViewList.count.getter(v32, v33);
        __swift_destroy_boxed_opaque_existential_1(&v162);
        if ((*(v5 + 176) & 1) != 0 && *(v5 + 168))
        {
          *v181 = v9;
          v181[8] = v153;
          _ViewList_TemporarySublistTransform.wrapSubgraphs(into:)((v5 + 168));
        }

        *(&v158 + 1) = &type metadata for _ViewList_Section;
        *&v159 = lazy protocol witness table accessor for type _ViewList_Section and conformance _ViewList_Section();
        v34 = swift_allocObject();
        *&v157 = v34;
        *(v34 + 16) = v7;
        *(v34 + 24) = v29;
        *(v34 + 32) = v11;
        *(v34 + 40) = v30;
        v35 = *(v5 + 152);
        v149 = v35;
        v150 = v7;
        if (v153)
        {
          v4 = *v9;
          v7 = *(v9 + 8);
          v36 = v35;

          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
        }

        else
        {
          v162 = MEMORY[0x1E69E7CC0];
          if (v9)
          {
            v59 = v35;
            outlined init with copy of _ViewList_TemporarySublistTransform.ItemNode(v9, v181);
            v60 = v5;
            v61 = *&v181[48];
            v62 = *&v181[56] & ~(*&v181[56] >> 63);
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            v63 = v59;
            *&v162 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62, 0, MEMORY[0x1E69E7CC0]);
            outlined destroy of _AnyAnimatableData(v181);
            *(&v162 + 1) = v61;
            v5 = v60;
            do
            {
              outlined init with copy of AnyTrackedValue(v9 + 8, v181);
              LOBYTE(v177) = 0;
              v64 = *&v181[24];
              v65 = *&v181[32];
              v66 = __swift_project_boxed_opaque_existential_1(v181, *&v181[24]);
              specialized _ViewList_SublistTransform.push(_:flags:)(v66, &v177, &v162, v64, v65);
              __swift_destroy_boxed_opaque_existential_1(v181);
              v9 = *v9;
            }

            while (v9);
          }

          else
          {
            v72 = v35;
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
          }

          specialized MutableCollection<>.reverse()();
          v7 = *(&v162 + 1);
          v4 = v162;
        }

        if (*(v29 + 16) >= 2uLL)
        {
          v146 = v7;
          v147 = v4;
          v153 = v11;
          outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v29 + 80, v181);
          outlined init with take of _ViewList_Elements(v181, &v177);
          outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v29 + 80, v181);
          v7 = *&v181[40];
          __swift_destroy_boxed_opaque_existential_1(v181);
          outlined init with copy of SectionAccumulator.RowIDAccumulator(v5, v181);
          v73 = v181[97];
          outlined destroy of SectionAccumulator.RowIDAccumulator(v181);
          v148 = v30;
          if (v73)
          {
            v74 = v5;
            outlined init with copy of AnyTrackedValue(&v177, &v174);
            *v181 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC7SwiftUI29AbstractHomogeneousCollectionC_Tt0g5(MEMORY[0x1E69E7CC0]);
            memset(&v181[8], 0, 89);
            v75 = v175;
            v76 = v176;
            __swift_project_boxed_opaque_existential_1(&v174, v175);
            (*(v76 + 48))(v181, v75, v76);
            outlined init with copy of HeterogeneousViewIDsAccumulator(v181, &v162);
            HeterogeneousViewIDsAccumulator.finalize()(&v171);
            outlined destroy of HeterogeneousViewIDsAccumulator(v181);
            v4 = *(&v171 + 1);
            v77 = v171;
            v7 = v172;
            v78 = v173;
            __swift_destroy_boxed_opaque_existential_1(&v174);
            type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SectionAccumulator.RowIDs.Chunk>);
            v79 = swift_allocObject();
            v9 = v79;
            *(v79 + 16) = xmmword_18DDA6EB0;
            v80 = *(v4 + 16);
            if (v80)
            {
              v80 = *(v4 + 4 * v80 + 28);
            }

            *(v79 + 32) = v77;
            *(v79 + 40) = v4;
            *(v79 + 48) = v7;
            *(v79 + 56) = v78;
            *(v79 + 64) = 3;
            *(v79 + 72) = v80;
            *(v79 + 80) = 0;
          }

          else
          {
            type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SectionAccumulator.RowIDs.Chunk>);
            v9 = swift_allocObject();
            *(v9 + 16) = xmmword_18DDA6EB0;
            outlined init with copy of AnyTrackedValue(&v177, v181);
            v81 = *&v181[24];
            v82 = *&v181[32];
            __swift_project_boxed_opaque_existential_1(v181, *&v181[24]);
            v83 = (*(v82 + 40))(v81, v82);
            if (v83)
            {
              v4 = v83;
              v74 = v5;
              v7 = MEMORY[0x1E69E7CC0];
              v84 = v145;
              if (*(MEMORY[0x1E69E7CC0] + 16))
              {
                type metadata accessor for _ViewList_ID._Views<SectionAccumulator.TransformedIDs>();
                v85 = swift_allocObject();
                v86 = 0;
                *(v85 + 24) = v4;
                *(v85 + 32) = v7;
                *(v85 + 40) = 0;
                *(v85 + 16) = 1;
                v4 = v85;
              }

              else
              {

                v86 = 0;
              }
            }

            else
            {
              v74 = v5;
              *&v171 = 0;
              v84 = v145;
              v156 = v145;
              v87 = MEMORY[0x1E69E7CC0];
              v155 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v156 & ~(v156 >> 63), 0, MEMORY[0x1E69E7CC0]);
              v162 = v87;
              v88 = *&v181[24];
              v144 = *&v181[32];
              v89 = __swift_project_boxed_opaque_existential_1(v181, *&v181[24]);
              *&v174 = &v162;
              v86 = 1;
              BYTE8(v174) = 1;
              MEMORY[0x1EEE9AC00](v89);
              v142 = &v155;
              v143 = &v156;
              v154 = 0;
              ViewList.applyIDs(from:listAttribute:transform:to:)(&v171, v7, &v174, closure #1 in closure #1 in SectionAccumulator.RowIDs.Chunk.init(list:listAttribute:transform:start:count:lowerBound:)partial apply, v141, v88, v144);

              v4 = v155;
            }

            *(v9 + 32) = v4;
            *(v9 + 40) = 0;
            *(v9 + 48) = 0;
            *(v9 + 56) = 0;
            *(v9 + 64) = v86;
            *(v9 + 72) = v84;
            *(v9 + 80) = 0;
            __swift_destroy_boxed_opaque_existential_1(v181);
          }

          __swift_destroy_boxed_opaque_existential_1(&v177);
          if (*(v29 + 16))
          {
            outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v29 + 32, v181);
            outlined init with take of _ViewList_Elements(v181, &v162);
            v100 = *(&v163[0] + 1);
            v101 = *&v163[1];
            v102 = __swift_project_boxed_opaque_existential_1(&v162, *(&v163[0] + 1));
            v103 = v100;
            v4 = v102;
            v145 = ViewList.count.getter(v103, v101);
            if (*(v29 + 16) >= 3uLL)
            {
              outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v29 + 128, v181);
              outlined init with take of _ViewList_Elements(v181, &v177);
              v104 = v179;
              v105 = v180;
              __swift_project_boxed_opaque_existential_1(&v177, v179);
              v106 = ViewList.count.getter(v104, v105);
              v151 = v74;
              v7 = v74 + 192;
              v107 = *(v74 + 192);
              type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ViewTraitCollection>);
              v108 = swift_allocObject();
              *(v108 + 16) = xmmword_18DDA6EB0;
              v109 = v153;
              *(v108 + 32) = v153;
              *v181 = v107;

              specialized Array.append<A>(contentsOf:)(v108);

              v110 = *v181;
              v181[0] = 0;
              outlined init with take of _ViewList_Elements(&v157, &v181[8]);
              *&v181[48] = v149;
              *&v181[56] = v150;
              *&v181[64] = v29;
              *&v181[72] = v109;
              v181[80] = v148;
              *&v181[88] = v147;
              *&v181[96] = v146;
              v182 = v9;
              v183 = v145;
              v184 = v106;
              v185 = v150;
              v186 = 0;
              v187 = v110;
              __swift_destroy_boxed_opaque_existential_1(&v177);
              __swift_destroy_boxed_opaque_existential_1(&v162);
              outlined init with copy of SectionAccumulator.Item(v181, &v162);
              v4 = *(v7 - 32);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_79;
              }

              goto LABEL_108;
            }

            goto LABEL_107;
          }

          goto LABEL_106;
        }

        goto LABEL_105;
      }

      goto LABEL_104;
    }

    *(v5 + 104) = *(v5 + 184);
    v45 = *(v5 + 160);
    v46 = v5;
    v5 = *(v45 + 2);
    if (!v5)
    {
      v69 = *(v46 + 192);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v69 + 2) + 1, 1, v69);
      }

      v71 = *(v69 + 2);
      v70 = *(v69 + 3);
      if (v71 >= v70 >> 1)
      {
        v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1, v69);
      }

      *(v69 + 2) = v71 + 1;
      *&v69[8 * v71 + 32] = v11;

      *(v46 + 192) = v69;
      goto LABEL_99;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_36:
      if (v5 > *(v45 + 2))
      {
        __break(1u);
      }

      else
      {
        v47 = v45 + 152 * v5;
        v48 = *(v47 + 3);
        v5 = (v47 + 24);
        v30 = v48;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v5 = v48;
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_38:
          v51 = *(v30 + 2);
          v50 = *(v30 + 3);
          if (v51 >= v50 >> 1)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v30);
            *v5 = v30;
          }

          *(v30 + 2) = v51 + 1;
          *&v30[8 * v51 + 32] = v11;

          *(v46 + 160) = v45;
          goto LABEL_99;
        }
      }

      v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
      *v5 = v30;
      goto LABEL_38;
    }

LABEL_112:
    v45 = specialized _ArrayBuffer._consumeAndCreateNew()(v45);
    goto LABEL_36;
  }

  if (v193)
  {
    v159 = v190;
    v160 = v191;
    v161[0] = *v192;
    *(v161 + 13) = *&v192[13];
    v157 = v188;
    v158 = v189;
    *v181 = v9;
    v181[8] = v153;
    _ViewList_TemporarySublistTransform.apply(sublist:)(&v157);
    v9 = *(&v157 + 1);
    v4 = SectionAccumulator.RowIDAccumulator.count.getter();
    outlined init with copy of SectionAccumulator.RowIDAccumulator(v5, v181);
    if ((v181[97] & 1) == 0)
    {
      v6 = v5;
      v37 = *v181;
      v7 = *(&v158 + 1);
      v38 = v158;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_29;
      }

      goto LABEL_110;
    }

    v164 = *&v181[48];
    v165 = *&v181[64];
    v166 = *&v181[80];
    LOBYTE(v167) = v181[96];
    v162 = *v181;
    v163[0] = *&v181[16];
    v163[1] = *&v181[32];
    v4 = &v157;
    _ViewList_Sublist.appendViewIDs(into:)(&v162);
    outlined destroy of _ViewList_Sublist(&v157);
    outlined destroy of SectionAccumulator.RowIDAccumulator(v5);
    v25 = v164;
    v26 = v166;
    *(v5 + 64) = v165;
    *(v5 + 80) = v26;
    v27 = v163[0];
    v28 = v163[1];
    *v5 = v162;
    *(v5 + 16) = v27;
    *(v5 + 96) = v167;
    *(v5 + 32) = v28;
    *(v5 + 48) = v25;
    *(v5 + 97) = 1;
    while (1)
    {
      v42 = *(v5 + 184);
      v43 = __OFADD__(v42, v9);
      v44 = v42 + v9;
      if (!v43)
      {
        *(v5 + 184) = v44;
        goto LABEL_99;
      }

LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
LABEL_79:
      v112 = *(v4 + 16);
      v111 = *(v4 + 24);
      v37 = (v112 + 1);
      if (v112 >= v111 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v111 > 1), v112 + 1, 1, v4);
      }

      *(v4 + 16) = v37;
      v113 = v4 + 152 * v112;
      v114 = v163[0];
      *(v113 + 32) = v162;
      *(v113 + 48) = v114;
      v115 = v163[1];
      v116 = v164;
      v117 = v166;
      *(v113 + 96) = v165;
      *(v113 + 112) = v117;
      *(v113 + 64) = v115;
      *(v113 + 80) = v116;
      v118 = v167;
      v119 = v168;
      v120 = v169;
      *(v113 + 176) = v170;
      *(v113 + 144) = v119;
      *(v113 + 160) = v120;
      *(v113 + 128) = v118;
      v38 = v151;
      v151[20] = v4;
      v121 = swift_isUniquelyReferenced_nonNull_native();
      v4 = v38[24];
      if (v121)
      {
        v122 = *(v4 + 16);
        v4 = v7;
        specialized Array.replaceSubrange<A>(_:with:)(0, v122);
        outlined destroy of SectionAccumulator.Item(v181);
      }

      else
      {
        v37 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19ViewTraitCollectionV_Tt1g5(0, *(v4 + 24) >> 1);
        outlined destroy of SectionAccumulator.Item(v181);

        *v7 = v37;
      }

      v123 = v38[23];
      v43 = __OFADD__(v123, v152);
      v124 = v152 + v123;
      if (!v43)
      {
        break;
      }

      __break(1u);
LABEL_110:
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37);
LABEL_29:
      v40 = *(v37 + 2);
      v39 = *(v37 + 3);
      if (v40 >= v39 >> 1)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v37);
      }

      outlined destroy of _ViewList_Sublist(&v157);
      *(v37 + 2) = v40 + 1;
      v41 = &v37[56 * v40];
      *(v41 + 4) = v38;
      *(v41 + 5) = v7;
      *(v41 + 6) = v9;
      *(v41 + 7) = 0;
      v41[64] = 2;
      *(v41 + 9) = v9;
      *(v41 + 10) = v4;
      v5 = v6;
      outlined destroy of SectionAccumulator.RowIDAccumulator(v6);
      *v6 = v37;
      v6[97] = 0;
    }

    v38[23] = v124;
    v38[13] = v124;
    goto LABEL_99;
  }

  v10 = DWORD2(v190);
  v11 = BYTE12(v190);
  outlined init with take of _ViewList_Elements(&v188, &v157);
  v12 = *(&v158 + 1);
  v13 = v159;
  __swift_project_boxed_opaque_existential_1(&v157, *(&v158 + 1));
  (*(v13 + 32))(v181, v12, v13);
  if (*v181)
  {
    v14 = specialized Set.contains(_:)(&type metadata for IsSectionedTraitKey, *v181);

    if (!v14)
    {
      v52 = *(&v158 + 1);
      v53 = v159;
      __swift_project_boxed_opaque_existential_1(&v157, *(&v158 + 1));
      v46 = ViewList.count.getter(v52, v53);
      v54 = SectionAccumulator.RowIDAccumulator.count.getter();
      outlined init with copy of SectionAccumulator.RowIDAccumulator(v5, v181);
      if (v181[97])
      {
        v164 = *&v181[48];
        v165 = *&v181[64];
        v166 = *&v181[80];
        v162 = *v181;
        LOBYTE(v167) = v181[96];
        v163[0] = *&v181[16];
        v163[1] = *&v181[32];
        *&v174 = 0;
        *(&v174 + 1) = MEMORY[0x1E69E7CC0];
        v177 = v9;
        LOBYTE(v178) = v153;
        _ViewList_TemporarySublistTransform.bindID(_:)(&v174);
        v30 = *(&v174 + 1);
        v171 = v174;

        v55 = _ViewList_ID.Canonical.init(id:)(&v171, &v177);
        if (v178)
        {
          v153 = v46;
          (*(*v178 + 104))(&v177, v55);
          v56 = v179;
          v57 = v180;
          v58 = __swift_project_boxed_opaque_existential_1(&v177, v179);
          if (*(v30 + 2))
          {
            v11 = v30[52];
          }

          else
          {
            v11 = 0;
          }

          MEMORY[0x1EEE9AC00](v129);
          v142 = &v157;
          v45 = &v162;
          HeterogeneousViewIDsAccumulator.withExplicitID<A>(_:isUnary:body:)(v58, v11, partial apply for closure #1 in SectionAccumulator.apply(start:style:node:transform:), v141, v56, v57);

          __swift_destroy_boxed_opaque_existential_1(&v177);
          v46 = v153;
        }

        else
        {

          v125 = *(&v158 + 1);
          v30 = v159;
          v45 = __swift_project_boxed_opaque_existential_1(&v157, *(&v158 + 1));
          (*(v30 + 6))(&v162, v125, v30);
        }

        outlined destroy of SectionAccumulator.RowIDAccumulator(v5);
        v130 = v164;
        v131 = v166;
        *(v5 + 64) = v165;
        *(v5 + 80) = v131;
        v132 = v163[0];
        v133 = v163[1];
        *v5 = v162;
        *(v5 + 16) = v132;
        *(v5 + 96) = v167;
        *(v5 + 32) = v133;
        *(v5 + 48) = v130;
        *(v5 + 97) = 1;
      }

      else
      {
        v30 = *v181;
        outlined init with copy of AnyTrackedValue(&v157, &v177);
        v150 = v54;
        v151 = v5;
        v149 = v10;
        v148 = v11;
        if (v153)
        {
          v11 = v46;
          v68 = *v9;
          v67 = *(v9 + 8);
        }

        else
        {
          v174 = MEMORY[0x1E69E7CC0];
          v11 = v46;
          if (v9)
          {
            outlined init with copy of _ViewList_TemporarySublistTransform.ItemNode(v9, &v162);
            v90 = v164;
            *&v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(&v164 + 1) & ~(*(&v164 + 1) >> 63), 0, MEMORY[0x1E69E7CC0]);
            outlined destroy of _AnyAnimatableData(&v162);
            *(&v174 + 1) = v90;
            do
            {
              outlined init with copy of AnyTrackedValue(v9 + 8, &v162);
              LOBYTE(v171) = 0;
              v91 = *(&v163[0] + 1);
              v92 = *&v163[1];
              v93 = __swift_project_boxed_opaque_existential_1(&v162, *(&v163[0] + 1));
              specialized _ViewList_SublistTransform.push(_:flags:)(v93, &v171, &v174, v91, v92);
              __swift_destroy_boxed_opaque_existential_1(&v162);
              v9 = *v9;
            }

            while (v9);
          }

          specialized MutableCollection<>.reverse()();
          v67 = *(&v174 + 1);
          v68 = v174;
        }

        v94 = *v152;
        v95 = v179;
        v96 = v180;
        __swift_project_boxed_opaque_existential_1(&v177, v179);
        v97 = (*(v96 + 40))(v95, v96);
        if (v97)
        {
          v45 = v97;
          if (*(v68 + 16))
          {
            type metadata accessor for _ViewList_ID._Views<SectionAccumulator.TransformedIDs>();
            v98 = swift_allocObject();
            v99 = 0;
            *(v98 + 24) = v45;
            *(v98 + 32) = v68;
            *(v98 + 40) = v67;
            *(v98 + 16) = 1;
            v45 = v98;
          }

          else
          {

            v99 = 0;
          }
        }

        else
        {
          *&v171 = v94;
          v156 = v11;
          v155 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 & ~(v11 >> 63), 0, MEMORY[0x1E69E7CC0]);
          *&v162 = v68;
          *(&v162 + 1) = v67;
          v126 = v179;
          v127 = v180;
          v128 = __swift_project_boxed_opaque_existential_1(&v177, v179);
          *&v174 = &v162;
          v99 = 1;
          BYTE8(v174) = 1;
          MEMORY[0x1EEE9AC00](v128);
          v142 = &v155;
          v143 = &v156;
          v154 = v148;
          ViewList.applyIDs(from:listAttribute:transform:to:)(&v171, v149 | (v148 << 32), &v174, closure #1 in closure #1 in SectionAccumulator.RowIDs.Chunk.init(list:listAttribute:transform:start:count:lowerBound:)partial apply, v141, v126, v127);

          v45 = v155;
        }

        __swift_destroy_boxed_opaque_existential_1(&v177);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
        }

        v46 = v11;
        v135 = *(v30 + 2);
        v134 = *(v30 + 3);
        if (v135 >= v134 >> 1)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v134 > 1), v135 + 1, 1, v30);
        }

        *(v30 + 2) = v135 + 1;
        v136 = &v30[56 * v135];
        *(v136 + 4) = v45;
        *(v136 + 5) = 0;
        *(v136 + 6) = 0;
        *(v136 + 7) = 0;
        v136[64] = v99;
        v137 = v150;
        v5 = v151;
        *(v136 + 9) = v11;
        *(v136 + 10) = v137;
        outlined destroy of SectionAccumulator.RowIDAccumulator(v5);
        *v5 = v30;
        *(v5 + 97) = 0;
      }

      v138 = *(v5 + 184);
      v43 = __OFADD__(v138, v46);
      v139 = v138 + v46;
      if (!v43)
      {
        *(v5 + 184) = v139;
        __swift_destroy_boxed_opaque_existential_1(&v157);
LABEL_99:
        v20 = 1;
        return v20 & 1;
      }

      __break(1u);
      goto LABEL_112;
    }
  }

  v15 = v159;
  v16 = __swift_project_boxed_opaque_existential_1(&v157, *(&v158 + 1));
  *&v162 = v8;
  *v181 = v9;
  v181[8] = v153;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v142 = v18;
  v19 = *(v15 + 64);
  LOBYTE(v177) = v11;
  v20 = v19(v152, &v162, v10 | (v11 << 32), v181, partial apply for closure #2 in SectionAccumulator.apply(start:style:node:transform:), v17);
  __swift_destroy_boxed_opaque_existential_1(&v157);
  return v20 & 1;
}

uint64_t sub_18D2DD524()
{

  return swift_deallocObject();
}

uint64_t LocationBox.get()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - v5;
  v7 = *(v2 + 184);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  (*(*(v2 + 176) + 48))(v3);
  return (*(v4 + 8))(v6, v3);
}

uint64_t destroy for SectionAccumulator.RowIDAccumulator(uint64_t a1)
{
  v2 = *(a1 + 97);
  if (v2 >= 2)
  {
    v2 = *a1 + 2;
  }

  if (v2 == 1)
  {

    if (*(a1 + 40))
    {
      result = __swift_destroy_boxed_opaque_existential_1(a1 + 16);
    }

    if (*(a1 + 80))
    {

      return __swift_destroy_boxed_opaque_existential_1(a1 + 56);
    }
  }

  else
  {
  }

  return result;
}

uint64_t protocol witness for ViewList.applyNodes(from:style:list:transform:to:) in conformance _ViewList_Section(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t *, int *, uint64_t *))
{
  v8 = *a4;
  v9 = *(a4 + 8);
  v10 = *v5;
  v11 = *(v5 + 1);
  v12 = *(v5 + 2);
  v13 = *(v5 + 24);
  v23 = *a2;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = 3;
  v16 = v8;
  v17 = v9;

  v14 = a5(a1, &v23, &v18, &v16);
  outlined destroy of _ViewList_Node(&v18);
  return v14 & 1;
}

Swift::Int __swiftcall _ViewList_Section.count(style:)(Swift::Int style)
{
  v2 = *style;
  v3 = *(v1 + 8);
  if (*(v1 + 24) == 1)
  {
    if (*(v3 + 16))
    {
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v3 + 32, v21, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      outlined init with take of AnyTrackedValue(v21, v22);
      v4 = v23;
      v5 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      v6 = v2 & 0xFFFFFFFFFFFFFFFELL;
      if ((v2 & 0xFFFFFFFFFFFFFFFELL) != 2)
      {
        ++v6;
      }

      *&v21[0] = v6;
      v7 = (*(v5 + 16))(v21, v4, v5);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (*(v3 + 16) < 2uLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v3 + 80, v21, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
  outlined init with take of AnyTrackedValue(v21, v22);
  v8 = v23;
  v9 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  *&v21[0] = v2;
  v10 = (*(v9 + 16))(v21, v8, v9);
  style = __swift_destroy_boxed_opaque_existential_1(v22);
  v11 = v2 >> 1;
  if (v2 >> 1 == 1)
  {
    goto LABEL_31;
  }

  if (v2 < 2)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v12 = v10 % v11;
  if (!(v10 % v11))
  {
    goto LABEL_31;
  }

  v13 = __OFSUB__(v11, v12);
  v14 = v11 - v12;
  if (v13)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v13 = __OFADD__(v10, v14);
  v10 += v14;
  if (!v13)
  {
LABEL_31:
    if (*(v3 + 16))
    {
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v3 + 32, v21, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      outlined init with take of AnyTrackedValue(v21, v22);
      v15 = v23;
      v16 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      if (v11 == 1)
      {
        v17 = v2 & 0xFFFFFFFFFFFFFFFELL;
      }

      else
      {
        v17 = (v2 & 0xFFFFFFFFFFFFFFFELL) + 1;
      }

      *&v21[0] = v17;
      style = (*(v16 + 16))(v21, v15, v16);
      v18 = v10 + style;
      if (!__OFADD__(v10, style))
      {
        style = __swift_destroy_boxed_opaque_existential_1(v22);
        if (*(v3 + 16) >= 3uLL)
        {
          outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v3 + 128, v21, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
          outlined init with take of AnyTrackedValue(v21, v22);
          v19 = v23;
          v20 = v24;
          __swift_project_boxed_opaque_existential_1(v22, v23);
          *&v21[0] = v17;
          style = (*(v20 + 16))(v21, v19, v20);
          v7 = v18 + style;
          if (!__OFADD__(v18, style))
          {
LABEL_19:
            __swift_destroy_boxed_opaque_existential_1(v22);
            return v7;
          }

          goto LABEL_25;
        }

LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_28:
  __break(1u);
  return style;
}

uint64_t ProjectedLocation.get()(void *a1)
{
  v2 = a1[4];
  v3 = a1[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v10 - v7;
  (*(v2 + 48))(v3, v2, v6);
  (*(a1[5] + 32))(v8, a1[3]);
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

void specialized MutableCollection<>.reverse()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return;
  }

  v3 = v2 - 1;
  if (v2 == 1)
  {
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_17:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
  }

  v4 = v1 + 4;
  v2 = &v1[5 * v2 - 1];
  v5 = 1;
  while (1)
  {
    if (v5 - 1 == v3)
    {
      goto LABEL_6;
    }

    v7 = v1[2];
    if (v5 - 1 >= v7)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    outlined init with copy of AnyTrackedValue(v4, v8);
    if (v3 >= v7)
    {
      goto LABEL_16;
    }

    __swift_assign_boxed_opaque_existential_1(v4, v2);
    if (v3 >= v1[2])
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(v2);
    outlined init with take of AnyTrackedValue(v8, v2);
LABEL_6:
    --v3;
    v2 -= 40;
    v4 += 5;
    if (v5++ >= v3)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  *v0 = v1;
}

{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (!v2)
  {
    return;
  }

  v3 = v2 - 1;
  if (v2 == 1)
  {
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_17:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
  }

  v2 = &v1[16 * v2 + 24];
  v4 = (v1 + 40);
  v5 = 1;
  while (1)
  {
    if (v5 - 1 == v3)
    {
      goto LABEL_6;
    }

    v7 = *(v1 + 2);
    if (v5 - 1 >= v7)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v3 >= v7)
    {
      goto LABEL_16;
    }

    v8 = *(v4 - 1);
    v9 = *v4;
    v10 = *v2;
    *(v4 - 1) = *(v2 - 8);
    *v4 = v10;
    v11 = *(v1 + 2);

    if (v3 >= v11)
    {
      break;
    }

    *(v2 - 8) = v8;
    *v2 = v9;

LABEL_6:
    --v3;
    v2 -= 16;
    v4 += 2;
    if (v5++ >= v3)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  *v0 = v1;
}

{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_14:
        v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      }

      v4 = (32 * v2) | 0x10;
      v5 = 1;
      v6 = 48;
      do
      {
        if (v5 - 1 != v3)
        {
          v8 = *(v1 + 2);
          if (v5 - 1 >= v8)
          {
            __break(1u);
LABEL_13:
            __break(1u);
            goto LABEL_14;
          }

          if (v3 >= v8)
          {
            goto LABEL_13;
          }

          v9 = &v1[v6];
          v10 = &v1[v4];
          v11 = *&v1[v6 - 16];
          *(v9 - 1) = *&v1[v4 - 16];
          *(v10 - 1) = v11;
          v12 = *&v1[v6];
          *v9 = *&v1[v4];
          *v10 = v12;
        }

        --v3;
        v4 -= 32;
        v6 += 32;
      }

      while (v5++ < v3);
      *v0 = v1;
    }
  }
}

{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_27;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    v3 = v2 - 1;
    while (!__OFSUB__(v2, 1))
    {
      if (v3 < 1)
      {
        return;
      }

      v4 = 0;
      v5 = v2 + 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v6 = v2 - 1;
        if ((v1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x193AC03C0](v4, v1);
          v9 = MEMORY[0x193AC03C0](v2 - 1, v1);
          goto LABEL_10;
        }

        v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4 >= v7)
        {
          break;
        }

        if (v6 >= v7)
        {
          goto LABEL_25;
        }

        v8 = *(v1 + 8 * v4 + 32);
        v9 = *(v1 + 8 * v2 + 24);

LABEL_10:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
          v10 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v10) = 0;
        }

        v11 = v1 & 0xFFFFFFFFFFFFFF8;
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v9;

        if ((v1 & 0x8000000000000000) != 0 || v10)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
          v11 = v1 & 0xFFFFFFFFFFFFFF8;
        }

        if (v6 >= *(v11 + 16))
        {
          goto LABEL_24;
        }

        *(v11 + 8 * v2 + 24) = v8;

        *v0 = v1;
        if (v5 == v4)
        {
          goto LABEL_26;
        }

        ++v4;
        v12 = v2 - 2;
        --v2;
        if (v4 >= v12)
        {
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      if (!__CocoaSet.count.getter())
      {
        return;
      }

      v2 = __CocoaSet.count.getter();
      v3 = v2 - 1;
    }

    __break(1u);
  }
}

void type metadata accessor for EnvironmentPropertyKey<TextScaleKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t storeEnumTagSinglePayload for PlatformNamedImageRepresentableContext(uint64_t result, int a2, int a3)
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

double _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014DefaultPaddingF033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultPaddingKey>, &type metadata for DefaultPaddingKey, &protocol witness table for DefaultPaddingKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014DefaultPaddingV033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt0B5(a1, v5);
  if (v3)
  {
    return v3[9];
  }

  else
  {
    return 16.0;
  }
}

void key path getter for EnvironmentValues.defaultPadding : EnvironmentValues(uint64_t a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014DefaultPaddingI033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt1g5(v3);
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v4 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014DefaultPaddingF033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt2g5(*a1);
    v6 = v11;
    v8 = v12;
    v10 = v13;
  }

  *a2 = v4;
  *(a2 + 1) = v6;
  *(a2 + 2) = v8;
  *(a2 + 3) = v10;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014DefaultPaddingV033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014DefaultPaddingV033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultPaddingKey>, &type metadata for DefaultPaddingKey, &protocol witness table for DefaultPaddingKey, type metadata accessor for EnvironmentPropertyKey);
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

void type metadata accessor for _ContiguousArrayStorage<Range<Int>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Range<Int>>)
  {
    type metadata accessor for Range<Int>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Range<Int>>);
    }
  }
}

uint64_t iterateRange #1 <A, B><A1, B1><A2>(from:length:in:) in CollectionChanges.formChanges<A, B>(from:to:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X7>, char *a4@<X8>)
{
  v40 = a2;
  v38 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v36 = *(TupleTypeMetadata2 - 8);
  v37 = TupleTypeMetadata2;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v33 - v10;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  v19 = v11[2];
  v19(&v33 - v17, a1, AssociatedTypeWitness, v16);
  v39 = a3;
  dispatch thunk of Collection.endIndex.getter();
  Collection.formIndex(_:offsetBy:limitedBy:)();
  v40 = v11[1];
  v40(v14, AssociatedTypeWitness);
  (v19)(v14, a1, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v22 = v11[4];
    v33 = v11 + 4;
    v23 = v35;
    v22(v35, v18, AssociatedTypeWitness);
    v24 = v37;
    v22(&v23[*(v37 + 48)], v14, AssociatedTypeWitness);
    v25 = v36;
    v26 = *(v36 + 16);
    v39 = AssociatedConformanceWitness;
    v27 = v34;
    v26(v34, v23, v24);
    v28 = *(v24 + 48);
    v29 = v38;
    v22(v38, v27, AssociatedTypeWitness);
    v30 = v40;
    v40(&v27[v28], AssociatedTypeWitness);
    (*(v25 + 32))(v27, v23, v24);
    v31 = *(v24 + 48);
    v32 = type metadata accessor for Range();
    v22(&v29[*(v32 + 36)], &v27[v31], AssociatedTypeWitness);
    return v30(v27, AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CollectionChanges.Projection.init(kind:changes:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v24 = a5;
  v14 = *a1;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = a7;
  v36 = v14;

  v37 = a3;
  v38 = a4;
  v39 = a6;
  v40 = a7;
  type metadata accessor for CollectionChanges.Element();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.firstIndex(where:)();
  v23 = &v21;
  v22 = a3;
  HIDWORD(v21) = a4;
  v41 = a2;
  v25 = a3;
  v26 = a4;
  v27 = v24;
  v28 = a6;
  v29 = a7;
  v30 = v14;
  swift_getWitnessTable();
  BidirectionalCollection.lastIndex(where:)();

  v16 = v37;
  if (v38)
  {
    v16 = -1;
  }

  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v19 = HIDWORD(v21) == 0;
    *a8 = v14;
    v20 = v22;
    if (!v19)
    {
      v20 = 0;
    }

    *(a8 + 8) = a2;
    *(a8 + 16) = v20;
    *(a8 + 24) = v18;
  }

  return result;
}

BOOL partial apply for closure #1 in CollectionChanges.Projection.init(kind:changes:)()
{
  return partial apply for closure #2 in CollectionChanges.Projection.init(kind:changes:)();
}

{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v5[0] = *(v0 + 16);
  v5[1] = v2;
  v3 = type metadata accessor for CollectionChanges.Element();
  CollectionChanges.Element.kind.getter(v3, v5);
  return LOBYTE(v5[0]) == v1;
}

uint64_t CollectionChanges.Element.kind.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    *a2 = 0;
    return (*(v4 + 8))(v7, a1);
  }

  if (EnumCaseMultiPayload == 1)
  {
    *a2 = 1;
    return (*(v4 + 8))(v7, a1);
  }

  v10 = type metadata accessor for Range();
  v11 = type metadata accessor for Range();
  v12 = *(swift_getTupleTypeMetadata2() + 48);
  *a2 = 2;
  (*(*(v11 - 8) + 8))(&v7[v12], v11);
  return (*(*(v10 - 8) + 8))(v7, v10);
}

uint64_t getEnumTagSinglePayload for _ViewList_View(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t destroy for SectionAccumulator(uint64_t a1)
{
  if (*(a1 + 97))
  {

    if (*(a1 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 16);
    }

    if (*(a1 + 80))
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 56);
    }
  }

  else
  {
  }

  if (*(a1 + 136))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 112);
  }
}

void CoreInteractionRepresentableFeatureBuffer.append<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = type metadata accessor for CoreInteractionRepresentableFeatureBuffer._VTable();

  UnsafeHeterogeneousBuffer.append<A>(_:vtable:)(a1, v6, a2, a3);
}

uint64_t static FunctionalLocation.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *MEMORY[0x1E69E9840];
  v13[0] = a1;
  v13[1] = a2;
  v13[2] = a3;
  v13[3] = a4;
  v12[0] = a5;
  v12[1] = a6;
  v12[2] = a7;
  v12[3] = a8;
  v8 = type metadata accessor for FunctionalLocation.Functions();
  v15 = v8;
  v16 = v12;
  v17 = 3;

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v13, closure #1 in compareValues<A>(_:_:options:)partial apply, v14, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v9);

  return v11;
}

uint64_t initializeWithCopy for CoreInteractionEffect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t instantiation function for generic protocol witness table for CoreInteractionRepresentableEffect<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined copy of BodyInputElement?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of BodyInputElement();
  }

  return result;
}

uint64_t closure #1 in static ViewModifierContentProvider.providerMakeView(view:inputs:)(uint64_t a1, __int128 *a2, uint64_t *a3, void (*a4)(uint64_t, _OWORD *))
{
  v5 = a2[1];
  v23 = *a2;
  v24 = v5;
  v25 = a2[2];
  v6 = *a3;
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v7 = *&v12[0];
  outlined init with copy of _GraphInputs(&v23, v12);
  v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v6, v7);
  if (v8)
  {
    v9 = *(v8 + 72);
  }

  else
  {
    v9 = 0;
  }

  v15 = *MEMORY[0x1E698D3F8];
  v16 = MEMORY[0x1E69E7CD0];
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v10 = swift_weakInit();
  v20 = 0;
  v21 = 0;
  v22 = -1;
  v12[0] = v23;
  v12[1] = v24;
  v12[2] = v25;
  v13 = 0;
  v14 = v9;
  a4(v10, v12);
  return outlined destroy of _ViewListInputs(v12);
}

unint64_t lazy protocol witness table accessor for type ContentShapeKinds and conformance ContentShapeKinds()
{
  result = lazy protocol witness table cache variable for type ContentShapeKinds and conformance ContentShapeKinds;
  if (!lazy protocol witness table cache variable for type ContentShapeKinds and conformance ContentShapeKinds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentShapeKinds and conformance ContentShapeKinds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentShapeKinds and conformance ContentShapeKinds;
  if (!lazy protocol witness table cache variable for type ContentShapeKinds and conformance ContentShapeKinds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentShapeKinds and conformance ContentShapeKinds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentShapeKinds and conformance ContentShapeKinds;
  if (!lazy protocol witness table cache variable for type ContentShapeKinds and conformance ContentShapeKinds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentShapeKinds and conformance ContentShapeKinds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentShapeKinds and conformance ContentShapeKinds;
  if (!lazy protocol witness table cache variable for type ContentShapeKinds and conformance ContentShapeKinds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentShapeKinds and conformance ContentShapeKinds);
  }

  return result;
}

uint64_t assignWithCopy for _PreferenceWritingModifier(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(a1, a2, AssociatedTypeWitness);
  return a1;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance CoreViewRepresentableLayoutOptions(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a2 & *v2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t static CoreInteractionRepresentableFeatureBuffer._VTable.modifyViewOutputs<A>(elt:inputs:outputs:proxy:)(uint64_t *a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = *(a2 + 48);
  v16[2] = *(a2 + 32);
  v16[3] = v11;
  v16[4] = *(a2 + 64);
  v17 = *(a2 + 80);
  v12 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v12;
  v13 = *a4;
  v18 = v10;
  v14 = *(v6 + 128);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  LODWORD(v18) = v13;
  return (*(*(v6 + 136) + 16))(v16, a3, &v18, a5, a6, v14);
}

uint64_t _ShapeSet.init(shapes:smoothness:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v16 = MEMORY[0x1E69E7CC0];
    v7 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v8 = 32;
    v9 = v16;
    do
    {
      v10 = *(a1 + v8);
      v11 = (*(*v10 + 128))(v7);
      v13 = *(v16 + 16);
      v12 = *(v16 + 24);

      if (v13 >= v12 >> 1)
      {
        v7 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      *(v16 + 16) = v13 + 1;
      v14 = v16 + 32 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 60) = 0;
      v8 += 8;
      --v6;
    }

    while (v6);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v9;
  *(a2 + 8) = a3;
  return result;
}

uint64_t CoreInteractionRepresentableFeatureBuffer.Element.modifyViewOutputs<A>(inputs:outputs:proxy:)(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v13[4] = *(a1 + 64);
  v14 = *(a1 + 80);
  v7 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v7;
  v8 = *a3;
  v9 = *v5;
  v10 = **v5;
  v15 = v9;
  v12 = v8;
  return (*(v10 + 120))(&v15, v13, a2, &v12, a4, a5);
}

uint64_t View.materialEffect(_:in:)(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a1 + 12);
  v5 = a2[1];
  v6 = *(a1 + 8);
  v10[0] = *a2;
  v10[1] = v5;
  v11 = v3;
  v12 = v6;
  v13 = v4;
  v14 = 1;
  View.modifier<A>(_:)(v10, a3, &type metadata for MaterialEffect);
  v7 = v11;
  v8 = v12;

  outlined copy of Material.ID(v3, v6);

  return outlined consume of Material.ID(v7, v8);
}

uint64_t static ProjectedLocation.== infix(_:_:)()
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    type metadata accessor for ProjectedLocation();
    v0 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t static ZipLocation.== infix(_:_:)()
{
  type metadata accessor for AnyLocation();
  type metadata accessor for AnyLocation();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return == infix<A, B>(_:_:)() & 1;
}

uint64_t static ObjectLocation.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a5)
  {
    return 0;
  }

  type metadata accessor for AnyKeyPath();
  return MEMORY[0x193AC0030](a2, a6) & 1;
}

uint64_t specialized Collection.count.getter(uint64_t result)
{
  v1 = HIDWORD(result);
  if (result < 0 == result < 0)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      return HIDWORD(result) - result;
    }

    goto LABEL_14;
  }

  if (result >= 0)
  {
    v2 = result;
  }

  else
  {
    v2 = -result;
  }

  if (result < 0)
  {
    LODWORD(v1) = -HIDWORD(result);
  }

  v3 = __CFADD__(v2, v1);
  v4 = (v2 + v1);
  if (v3)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (result < 0)
  {
    return v4;
  }

  else
  {
    return -v4;
  }
}

{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result + 56 * v1;
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5)
  {
    goto LABEL_9;
  }

  v7 = *(result + 80);
  if (v6 < v7)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  result = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
    goto LABEL_8;
  }

  return result;
}

void type metadata accessor for ClosedRange<CGFloat>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for _ContiguousArrayStorage<TypedCanonicalViewID<Nil>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<TypedCanonicalViewID<Nil>>)
  {
    type metadata accessor for ClosedRange<CGFloat>(255, &lazy cache variable for type metadata for TypedCanonicalViewID<Nil>, lazy protocol witness table accessor for type Nil and conformance Nil, &type metadata for Nil, type metadata accessor for TypedCanonicalViewID);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TypedCanonicalViewID<Nil>>);
    }
  }
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, void (*a5)(void))
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    a5(0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    a5(0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 56);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  v15 = 56 * v9;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v11;
}

unint64_t lazy protocol witness table accessor for type Nil and conformance Nil()
{
  result = lazy protocol witness table cache variable for type Nil and conformance Nil;
  if (!lazy protocol witness table cache variable for type Nil and conformance Nil)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Nil and conformance Nil);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Nil and conformance Nil;
  if (!lazy protocol witness table cache variable for type Nil and conformance Nil)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Nil and conformance Nil);
  }

  return result;
}

uint64_t one-time initialization function for splitViewVisibility()
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_4(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v1 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - v2;
  __swift_allocate_value_buffer(v4, static Log.splitViewVisibility);
  v5 = __swift_project_value_buffer(v1, static Log.splitViewVisibility);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = MEMORY[0x193ABEC20](0xD000000000000032, 0x800000018DD837C0);
  v8 = [v6 BOOLForKey_];

  if (v8)
  {
    Logger.init(subsystem:category:)();
    v9 = type metadata accessor for Logger();
    (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for Logger();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  }

  return outlined init with take of Logger?(v3, v5);
}

uint64_t type metadata completion function for TypedCanonicalViewID()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for TypedCanonicalViewID<Nil>()
{
  if (!lazy cache variable for type metadata for TypedCanonicalViewID<Nil>)
  {
    lazy protocol witness table accessor for type Nil and conformance Nil();
    v0 = type metadata accessor for TypedCanonicalViewID();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedCanonicalViewID<Nil>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ContiguousArray<TypedCanonicalViewID<Nil>> and conformance <A> ContiguousArray<A>()
{
  result = lazy protocol witness table cache variable for type ContiguousArray<TypedCanonicalViewID<Nil>> and conformance <A> ContiguousArray<A>;
  if (!lazy protocol witness table cache variable for type ContiguousArray<TypedCanonicalViewID<Nil>> and conformance <A> ContiguousArray<A>)
  {
    type metadata accessor for ContiguousArray<TypedCanonicalViewID<Nil>>(255, &lazy cache variable for type metadata for ContiguousArray<TypedCanonicalViewID<Nil>>, type metadata accessor for TypedCanonicalViewID<Nil>, MEMORY[0x1E69E6BE8]);
    lazy protocol witness table accessor for type TypedCanonicalViewID<Nil> and conformance TypedCanonicalViewID<A>(&lazy protocol witness table cache variable for type TypedCanonicalViewID<Nil> and conformance TypedCanonicalViewID<A>, type metadata accessor for TypedCanonicalViewID<Nil>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContiguousArray<TypedCanonicalViewID<Nil>> and conformance <A> ContiguousArray<A>);
  }

  return result;
}

uint64_t specialized AsyncTransaction.append<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v17 = a1;
  v18 = a2;
  v4 = *(v2 + 16);
  v5 = v4[2];
  if (!v5)
  {
    v10 = a2;
    v11 = a1;
    goto LABEL_8;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
  }

  if (v5 > v4[2])
  {
    __break(1u);
    return result;
  }

  v7 = &v4[5 * v5];
  v8 = v7[2];
  v9 = v7[3];
  __swift_mutable_project_boxed_opaque_existential_1((v7 - 1), v8);
  result = (*(v9 + 16))(&v17, &type metadata for CustomGraphMutation, &protocol witness table for CustomGraphMutation, v8, v9);
  *(v2 + 16) = v4;
  if ((result & 1) == 0)
  {
    v11 = v17;
    v10 = v18;
LABEL_8:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
    }

    v13 = v4[2];
    v12 = v4[3];
    if (v13 >= v12 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v4);
    }

    v15 = &type metadata for CustomGraphMutation;
    v16 = &protocol witness table for CustomGraphMutation;
    *&v14 = v11;
    *(&v14 + 1) = v10;
    v4[2] = v13 + 1;
    result = outlined init with take of AnyTrackedValue(&v14, &v4[5 * v13 + 4]);
    *(v3 + 16) = v4;
  }

  return result;
}

{
  v3 = v2;
  v17 = a1;
  v18 = a2;
  v19 = BYTE4(a2);
  v6 = *(v2 + 16);
  v7 = v6[2];
  if (!v7)
  {
    goto LABEL_6;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v6 = result;
  }

  if (v7 > v6[2])
  {
    __break(1u);
    return result;
  }

  v9 = &v6[5 * v7];
  v10 = v9[2];
  v11 = v9[3];
  __swift_mutable_project_boxed_opaque_existential_1((v9 - 1), v10);
  result = (*(v11 + 16))(&v17, &type metadata for MaterialEffectBackdropObserver.LuminanceMutation, &protocol witness table for MaterialEffectBackdropObserver.LuminanceMutation, v10, v11);
  *(v3 + 16) = v6;
  if ((result & 1) == 0)
  {
LABEL_6:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    }

    v13 = v6[2];
    v12 = v6[3];
    if (v13 >= v12 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v6);
    }

    v15 = &type metadata for MaterialEffectBackdropObserver.LuminanceMutation;
    v16 = &protocol witness table for MaterialEffectBackdropObserver.LuminanceMutation;
    *&v14 = a1;
    DWORD2(v14) = a2;
    BYTE12(v14) = BYTE4(a2) & 1;
    v6[2] = v13 + 1;
    result = outlined init with take of AnyTrackedValue(&v14, &v6[5 * v13 + 4]);
    *(v3 + 16) = v6;
  }

  return result;
}

uint64_t one-time initialization function for tintColor()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.tintColor = result;
  return result;
}

void type metadata accessor for Map<EnvironmentValues, Color?>()
{
  if (!lazy cache variable for type metadata for Map<EnvironmentValues, Color?>)
  {
    _sypSgMaTm_8(255, &lazy cache variable for type metadata for Color?, &type metadata for Color, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for Map();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Map<EnvironmentValues, Color?>);
    }
  }
}

uint64_t one-time initialization function for foregroundStyle()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.foregroundStyle = result;
  return result;
}

void type metadata accessor for Map<EnvironmentValues, AnyShapeStyle?>()
{
  if (!lazy cache variable for type metadata for Map<EnvironmentValues, AnyShapeStyle?>)
  {
    _sypSgMaTm_8(255, &lazy cache variable for type metadata for AnyShapeStyle?, &type metadata for AnyShapeStyle, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for Map();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Map<EnvironmentValues, AnyShapeStyle?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Image.Resolved.MakeRepresentableContext and conformance Image.Resolved.MakeRepresentableContext()
{
  result = lazy protocol witness table cache variable for type Image.Resolved.MakeRepresentableContext and conformance Image.Resolved.MakeRepresentableContext;
  if (!lazy protocol witness table cache variable for type Image.Resolved.MakeRepresentableContext and conformance Image.Resolved.MakeRepresentableContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.Resolved.MakeRepresentableContext and conformance Image.Resolved.MakeRepresentableContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Image.MakeRepresentableContext and conformance Image.MakeRepresentableContext()
{
  result = lazy protocol witness table cache variable for type Image.MakeRepresentableContext and conformance Image.MakeRepresentableContext;
  if (!lazy protocol witness table cache variable for type Image.MakeRepresentableContext and conformance Image.MakeRepresentableContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.MakeRepresentableContext and conformance Image.MakeRepresentableContext);
  }

  return result;
}

CGSize __swiftcall ViewRendererHost.idealSize()()
{
  v2 = ViewGraphRootValueUpdater._sizeThatFits(_:)(0, 1, 0, 1, v0, *(v1 + 16));
  result.height = v3;
  result.width = v2;
  return result;
}

uint64_t MaterialProvider.applyForegroundStyle(to:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 107);
  if ((v4 & 8) != 0)
  {
    return SystemColorsStyle._apply(to:)(result);
  }

  *(result + 107) = v4 | 8;
  v6 = *(result + 48);
  v5 = *(result + 56);
  v82 = 1;
  v80 = 1;
  v7 = *(result + 105);
  v8 = *(result + 106);
  v9 = *result;
  v10 = *(result + 8);
  v11 = *(result + 16);
  if (*(result + 24) > 2u)
  {
    *&v64 = v6;
    *(&v64 + 1) = v5;
    v65[0] = v7;
    v65[1] = v8;
    *&v65[8] = 0;
    *&v65[16] = 0;
    v65[24] = v82;
    memset(&v65[32], 0, 24);
    v65[56] = v80;

LABEL_49:
    result = outlined destroy of Material.Context(&v64);
    *(v3 + 107) = v4;
    return result;
  }

  if (!*(result + 24))
  {
    v42 = *(result + 106);
    v44 = v4;
    *&v76 = v6;
    *(&v76 + 1) = v5;
    LOBYTE(v77) = v7;
    BYTE1(v77) = v8;
    *(&v77 + 1) = 0;
    *&v78 = 0;
    v51 = v82;
    BYTE8(v78) = v82;
    memset(v79, 0, 24);
    v41 = v7;
    v53 = v80;
    v79[24] = v80;
    v74 = v78;
    *v75 = 0uLL;
    *&v75[9] = *&v79[9];
    v72 = v76;
    v73 = v77;
    v13 = *(a3 + 24);

    outlined init with copy of Material.Context(&v76, v71);
    v13(&v64, v9, &v72, a2, a3);
    v58 = v74;
    *v59 = *v75;
    *&v59[9] = *&v75[9];
    v56 = v72;
    v57 = v73;
    outlined destroy of Material.Context(&v56);
    if (HIBYTE(*&v65[68]) <= 0xFEuLL)
    {
      v49 = v64;
      v15 = *&v65[64] | (*&v65[68] << 32);
      *&v72 = v6;
      *(&v72 + 1) = v5;
      LOBYTE(v73) = v7;
      BYTE1(v73) = v42;
      *&v74 = 0;
      *(&v73 + 1) = 0;
      BYTE8(v74) = v51;
      memset(v75, 0, 24);
      v75[24] = v53;
      outlined destroy of Material.Context(&v72);
      if (v15 >> 40)
      {
        result = outlined consume of _ShapeStyle_Shape.Result(*(v3 + 32), *(v3 + 40));
        *(v3 + 32) = 0;
      }

      else
      {
        type metadata accessor for ColorBox<AdaptiveColorProvider>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider);
        v16 = swift_allocObject();
        *(v16 + 16) = v49;
        *(v16 + 32) = 2143289344;
        result = outlined consume of _ShapeStyle_Shape.Result(*(v3 + 32), *(v3 + 40));
        *(v3 + 32) = v16;
      }

      *(v3 + 40) = 0;
      goto LABEL_15;
    }

LABEL_14:
    SystemColorsStyle._apply(to:)(v3);
    *&v72 = v6;
    *(&v72 + 1) = v5;
    LOBYTE(v73) = v41;
    BYTE1(v73) = v42;
    *&v74 = 0;
    *(&v73 + 1) = 0;
    BYTE8(v74) = v51;
    memset(v75, 0, 24);
    v75[24] = v53;
    result = outlined destroy of Material.Context(&v72);
LABEL_15:
    *(v3 + 107) = v44;
    return result;
  }

  if (*(result + 24) != 1)
  {
    v42 = *(result + 106);
    v44 = v4;
    *&v76 = v6;
    *(&v76 + 1) = v5;
    LOBYTE(v77) = v7;
    BYTE1(v77) = v8;
    *(&v77 + 1) = 0;
    *&v78 = 0;
    v51 = v82;
    BYTE8(v78) = v82;
    memset(v79, 0, 24);
    v41 = v7;
    v53 = v80;
    v79[24] = v80;
    v74 = v78;
    *v75 = 0uLL;
    *&v75[9] = *&v79[9];
    v72 = v76;
    v73 = v77;
    v17 = *(a3 + 24);

    outlined init with copy of Material.Context(&v76, v71);
    v17(&v64, v9, &v72, a2, a3);
    v58 = v74;
    *v59 = *v75;
    *&v59[9] = *&v75[9];
    v56 = v72;
    v57 = v73;
    outlined destroy of Material.Context(&v56);
    if (HIBYTE(*&v65[68]) <= 0xFEuLL)
    {
      v50 = v64;
      v19 = *&v65[64] | (*&v65[68] << 32);
      *&v72 = v6;
      *(&v72 + 1) = v5;
      LOBYTE(v73) = v7;
      BYTE1(v73) = v42;
      *&v74 = 0;
      *(&v73 + 1) = 0;
      BYTE8(v74) = v51;
      memset(v75, 0, 24);
      v75[24] = v53;
      result = outlined destroy of Material.Context(&v72);
      if (!(v19 >> 41))
      {
        type metadata accessor for ColorBox<AdaptiveColorProvider>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider);
        v20 = swift_allocObject();
        *(v20 + 16) = v50;
        *(v20 + 32) = 2143289344;
        result = outlined consume of _ShapeStyle_Shape.Result(*(v3 + 32), *(v3 + 40));
        *(v3 + 32) = v20;
        *(v3 + 40) = 3;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (*result)
  {

    SystemColorsStyle._apply(to:)(v3);
    *&v64 = v6;
    *(&v64 + 1) = v5;
    v65[0] = v7;
    v65[1] = v8;
    *&v65[8] = 0;
    *&v65[16] = 0;
    v65[24] = v82;
LABEL_48:
    memset(&v65[32], 0, 24);
    v65[56] = v80;
    goto LABEL_49;
  }

  if (v10 == v11)
  {

LABEL_47:
    *&v64 = v6;
    *(&v64 + 1) = v5;
    v65[0] = v7;
    v65[1] = v8;
    *&v65[2] = v83;
    *&v65[6] = v84;
    *&v65[8] = 0;
    *&v65[16] = 0;
    v65[24] = v82;
    *&v65[25] = *v81;
    *&v65[28] = *&v81[3];
    goto LABEL_48;
  }

  if (v11 < v10)
  {
    goto LABEL_51;
  }

  v45 = v4;
  v47 = *(result + 16);
  if (v10 < v11)
  {
    v48 = *(a3 + 24);
    *&v76 = v6;
    *(&v76 + 1) = v5;
    v43 = v8;
    LOBYTE(v77) = v7;
    BYTE1(v77) = v8;
    *(&v77 + 1) = 0;
    *&v78 = 0;
    BYTE8(v78) = v82;
    v79[24] = v80;
    memset(v79, 0, 24);

    v46 = a2;
    while (1)
    {
      v22 = v6;
      v23 = v10 + 1;
      v58 = v78;
      *v59 = *v79;
      *&v59[9] = *&v79[9];
      v56 = v76;
      v57 = v77;
      outlined init with copy of Material.Context(&v76, &v72);
      v48(&v64, v10, &v56, a2, a3);
      v74 = v58;
      *v75 = *v59;
      *&v75[9] = *&v59[9];
      v72 = v56;
      v73 = v57;
      result = outlined destroy of Material.Context(&v72);
      v24 = v64;
      v25 = *v65;
      v68 = *&v65[4];
      v69 = *&v65[20];
      v70[0] = *&v65[36];
      v26 = *&v65[68];
      *(v70 + 12) = *&v65[48];
      if (HIBYTE(*&v65[68]) <= 0xFEuLL)
      {
        v31 = *&v65[64];
        v32 = MEMORY[0x1E69E7CC0];
        if (*(v3 + 40) == 1)
        {
          v32 = *(v3 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v33, 1u);
          *(v3 + 32) = 0;
          *(v3 + 40) = 5;
        }

        v62 = v32;
        v34 = v31 & 0xFFFF0000FFFFFFFFLL | (v26 << 32);
        *&v56 = v32;
        LOBYTE(v54) = 0;
        _ShapeStyle_Pack.subscript.getter(&v54, v10, &v64);
        if (v34 >> 40)
        {
          v6 = v22;
          v58 = *&v65[16];
          *v59 = *&v65[32];
          *&v59[16] = *&v65[48];
          *&v59[30] = *&v65[62];
          v56 = v64;
          v57 = *v65;
          outlined destroy of _ShapeStyle_Pack.Fill(&v56);
          if (v34 >> 40 == 1)
          {
            v64 = v24;
            *v65 = 2143289344;
            v65[69] = 0;
            v54 = v25;
            v55 = 0;
            _ShapeStyle_Pack.Style.applyBlend(_:)(&v54);
          }

          else
          {
            v65[68] = BYTE4(v34);
            v64 = v24;
            *&v65[4] = v68;
            *&v65[20] = v69;
            *&v65[36] = v70[0];
            *&v65[48] = *(v70 + 12);
            *v65 = v25;
            *&v65[64] = v34;
            v65[69] = 5;
          }
        }

        else
        {
          v58 = *&v65[16];
          *v59 = *&v65[32];
          *&v59[16] = *&v65[48];
          *&v59[30] = *&v65[62];
          v56 = v64;
          v57 = *v65;
          outlined destroy of _ShapeStyle_Pack.Fill(&v56);
          v64 = v24;
          *v65 = 2143289344;
          v65[69] = 0;
          v6 = v22;
        }

        *&v59[16] = *&v65[48];
        *&v59[32] = *&v65[64];
        v60 = v66;
        v61 = v67;
        v56 = v64;
        v57 = *v65;
        v58 = *&v65[16];
        *v59 = *&v65[32];
        LOBYTE(v54) = 0;
        _ShapeStyle_Pack.subscript.setter(&v56, &v54, v10);
        v36 = v62;
        v37 = *(v3 + 32);
        v38 = *(v3 + 40);

        outlined consume of _ShapeStyle_Shape.Result(v37, v38);
        *(v3 + 32) = v36;
        *(v3 + 40) = 1;

        goto LABEL_25;
      }

      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_51:
        __break(1u);
        break;
      }

      *v3 = 0;
      *(v3 + 8) = v10;
      *(v3 + 16) = v23;
      *(v3 + 24) = 1;
      if (v10 <= 4)
      {
        if (v10 > 4u)
        {
          goto LABEL_53;
        }

        v6 = v22;
        v27 = v10 + 13;
        if (v5)
        {
LABEL_30:

          v28 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(v6);
          v30 = v29;

          goto LABEL_44;
        }
      }

      else
      {
        v27 = 17;
        v6 = v22;
        if (v5)
        {
          goto LABEL_30;
        }
      }

      v35 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(v6);
      if (v35)
      {
        v28 = v35[9];
        v30 = v35[10];
      }

      else
      {
        v28 = &type metadata for CoreUIDefaultSystemColorDefinition;
        v30 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
      }

LABEL_44:
      LOBYTE(v56) = v27;
      *&v64 = v6;
      *(&v64 + 1) = v5;
      (v30[1])(v71, &v56, &v64, v28, v30);
      *&v65[20] = v57;
      *&v65[36] = v58;
      *&v65[52] = *v59;
      *&v65[68] = v59[16];
      *&v65[4] = v56;
      v64 = v71[0];
      *v65 = 2143289344;
      *&v65[72] = 1065353216;
      *&v66 = 0;
      BYTE8(v66) = -1;
      *(&v66 + 9) = v62;
      HIDWORD(v66) = *(&v62 + 3);
      v39 = MEMORY[0x1E69E7CC0];
      v67 = MEMORY[0x1E69E7CC0];
      v63 = 0;
      if (*(v3 + 40) == 1)
      {
        v39 = *(v3 + 32);

        outlined consume of _ShapeStyle_Shape.Result(v40, 1u);
        *(v3 + 32) = 0;
        *(v3 + 40) = 5;
      }

      v54 = v39;
      _ShapeStyle_Pack.subscript.setter(&v64, &v63, v10);
      v21 = v54;
      outlined consume of _ShapeStyle_Shape.Result(*(v3 + 32), *(v3 + 40));
      *(v3 + 32) = v21;
      *(v3 + 40) = 1;
LABEL_25:
      a2 = v46;
      v10 = v23;
      if (v47 == v23)
      {
        v8 = v43;
        v4 = v45;
        goto LABEL_47;
      }
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t Transaction.subscript.setter(uint64_t a1)
{
  specialized Transaction.subscript.setter(a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(a1, AssociatedTypeWitness);
}

uint64_t specialized Transaction.subscript.setter(uint64_t a1)
{
  v2 = type metadata accessor for TransactionPropertyKey();
  WitnessTable = swift_getWitnessTable();

  return specialized PropertyList.subscript.setter(a1, v2, v2, WitnessTable);
}

uint64_t _ConditionalContent.Info.matches(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for _ConditionalContent.Storage();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v8 = &v19 - v7;
  v9 = type metadata accessor for _ConditionalContent();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  (*(v13 + 16))(&v19 - v11, v2, v10);
  v14 = *(TupleTypeMetadata2 + 48);
  v15 = *(v4 - 8);
  (*(v15 + 32))(v8, v12, v4);
  (*(v15 + 16))(&v8[v14], a1, v4);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (a1 == 1)
  {
    if (EnumCaseMultiPayload != 1)
    {
LABEL_3:
      (*(v6 + 8))(v8, TupleTypeMetadata2);
      return 0;
    }
  }

  else if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_3;
  }

  v18 = *(v15 + 8);
  v18(&v8[v14], v4);
  v18(v8, v4);
  return 1;
}

unsigned __int8 *assignWithCopy for _ConditionalContent.Info(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  if (a1 != a2)
  {
    v8 = *(a3 + 24);
    v9 = *(v8 - 8);
    if (*(v9 + 64) <= *(v7 + 64))
    {
      v10 = *(v7 + 64);
    }

    else
    {
      v10 = *(v9 + 64);
    }

    v11 = a1[v10];
    v12 = v11 - 2;
    if (v11 >= 2)
    {
      if (v10 <= 3)
      {
        v13 = v10;
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

      v15 = (v14 | (v12 << (8 * v10))) + 2;
      v11 = v14 + 2;
      if (v10 < 4)
      {
        v11 = v15;
      }
    }

LABEL_19:
    if (v11 == 1)
    {
      v16 = *(*(a3 + 24) - 8);
    }

    else
    {
      v16 = *(*(a3 + 16) - 8);
    }

    if (v11 == 1)
    {
      v17 = *(a3 + 24);
    }

    else
    {
      v17 = *(a3 + 16);
    }

    (*(v16 + 8))(a1, v17);
    v18 = *(a2 + v10);
    v19 = v18 - 2;
    if (v18 < 2)
    {
      v22 = v7;
    }

    else
    {
      if (v10 <= 3)
      {
        v20 = v10;
      }

      else
      {
        v20 = 4;
      }

      if (v20 > 1)
      {
        if (v20 == 2)
        {
          v21 = *a2;
        }

        else if (v20 == 3)
        {
          v21 = *a2 | (*(a2 + 2) << 16);
        }

        else
        {
          v21 = *a2;
        }

        v22 = v7;
LABEL_39:
        v23 = (v21 | (v19 << (8 * v10))) + 2;
        v18 = v21 + 2;
        if (v10 < 4)
        {
          v18 = v23;
        }

        goto LABEL_41;
      }

      v22 = v7;
      if (v20)
      {
        v21 = *a2;
        goto LABEL_39;
      }
    }

LABEL_41:
    v24 = v18 == 1;
    if (v18 == 1)
    {
      v25 = v9;
    }

    else
    {
      v25 = v22;
    }

    if (v18 == 1)
    {
      v26 = v8;
    }

    else
    {
      v26 = v6;
    }

    (*(v25 + 16))(a1, a2, v26);
    a1[v10] = v24;
  }

  v27 = *(v7 + 64);
  v28 = *(*(a3 + 24) - 8);
  if (*(v28 + 64) > v27)
  {
    v27 = *(v28 + 64);
  }

  v29 = v27 + 8;
  v30 = (&a1[v29] & 0xFFFFFFFFFFFFFFF8);
  v31 = *((a2 + v29) & 0xFFFFFFFFFFFFFFF8);
  v32 = *v30;
  *v30 = v31;
  v33 = v31;

  return a1;
}

uint64_t PropertyList.forEach<A>(keyType:_:)(int a1, void (*a2)(char *, uint64_t), uint64_t a3, void *a4, Swift::Int hashValue, uint64_t a6)
{
  v6 = 1;
  if (a4)
  {
    v9 = a4;
    v12.value = BloomFilter.init(hashValue:)(hashValue).value;
    v13 = v18;
    MEMORY[0x1EEE9AC00](v12.value);
    v16[2] = hashValue;
    v16[3] = a6;
    v16[4] = a2;
    v16[5] = a3;
    v17 = 0;
    while (1)
    {
      while ((v13 & ~v9[7]) != 0)
      {
        v9 = v9[5];
        if (!v9)
        {
          return 1;
        }
      }

      if (v9[3])
      {
        v18 = v13;
        v14 = PropertyList.Element.forEach(filter:_:)(&v18, partial apply for closure #1 in PropertyList.forEach<A>(keyType:_:), v16);
        v17 = (v14 & 1) == 0;
        if ((v14 & 1) == 0)
        {
          break;
        }
      }

      closure #1 in PropertyList.forEach<A>(keyType:_:)(v9, &v17, a2, a3, hashValue);
      if (v17)
      {
        break;
      }

      v9 = v9[4];
      if (!v9)
      {
        return 1;
      }
    }

    return 0;
  }

  return v6;
}

void closure #1 in PropertyList.forEach<A>(keyType:_:)(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v14 - v12;
  if (*(v11 + 16) == a5)
  {
    closure #2 in closure #1 in PropertyList.subscript.getter(v11, v13);
    a3(v13, a2);
    (*(v10 + 8))(v13, AssociatedTypeWitness);
  }
}

uint64_t Color._adaptive.getter(uint64_t a1)
{
  type metadata accessor for ColorBox<AdaptiveColorProvider>(0, &lazy cache variable for type metadata for ColorBox<AdaptiveColorProvider>, lazy protocol witness table accessor for type AdaptiveColorProvider and conformance AdaptiveColorProvider);
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  return v2;
}

void type metadata accessor for ColorBox<AdaptiveColorProvider>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for ColorBox();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for AdaptiveColorProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AdaptiveColorProvider and conformance AdaptiveColorProvider();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AdaptiveColorProvider and conformance AdaptiveColorProvider()
{
  result = lazy protocol witness table cache variable for type AdaptiveColorProvider and conformance AdaptiveColorProvider;
  if (!lazy protocol witness table cache variable for type AdaptiveColorProvider and conformance AdaptiveColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdaptiveColorProvider and conformance AdaptiveColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AdaptiveColorProvider and conformance AdaptiveColorProvider;
  if (!lazy protocol witness table cache variable for type AdaptiveColorProvider and conformance AdaptiveColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdaptiveColorProvider and conformance AdaptiveColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AdaptiveColorProvider and conformance AdaptiveColorProvider;
  if (!lazy protocol witness table cache variable for type AdaptiveColorProvider and conformance AdaptiveColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdaptiveColorProvider and conformance AdaptiveColorProvider);
  }

  return result;
}

uint64_t one-time initialization function for lazyStack()
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_4(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v1 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - v2;
  __swift_allocate_value_buffer(v4, static Log.lazyStack);
  v5 = __swift_project_value_buffer(v1, static Log.lazyStack);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = MEMORY[0x193ABEC20](0xD000000000000022, 0x800000018DD83690);
  v8 = [v6 BOOLForKey_];

  if (v8)
  {
    Logger.init(subsystem:category:)();
    v9 = type metadata accessor for Logger();
    (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for Logger();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  }

  return outlined init with take of Logger?(v3, v5);
}

void type metadata accessor for Unmanaged<DynamicViewList<DebugReplaceableView>.Item>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for DynamicViewList<AnyView>.Item(255, a3, a4, a5, type metadata accessor for DynamicViewList.Item);
    v6 = type metadata accessor for Unmanaged();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for [Unmanaged<DynamicViewList<AnyView>.Item>]()
{
  if (!lazy cache variable for type metadata for [Unmanaged<DynamicViewList<AnyView>.Item>])
  {
    type metadata accessor for Unmanaged<DynamicViewList<DebugReplaceableView>.Item>(255, &lazy cache variable for type metadata for Unmanaged<DynamicViewList<AnyView>.Item>, &lazy cache variable for type metadata for DynamicViewList<AnyView>.Item, lazy protocol witness table accessor for type AnyView and conformance AnyView, &type metadata for AnyView);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Unmanaged<DynamicViewList<AnyView>.Item>]);
    }
  }
}

void type metadata accessor for Unmanaged<DynamicViewList<AnyView>.Item>()
{
  if (!lazy cache variable for type metadata for Unmanaged<DynamicViewList<AnyView>.Item>)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(255, &lazy cache variable for type metadata for DynamicViewList<AnyView>.Item, lazy protocol witness table accessor for type AnyView and conformance AnyView, &type metadata for AnyView, type metadata accessor for DynamicViewList.Item);
    v0 = type metadata accessor for Unmanaged();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Unmanaged<DynamicViewList<AnyView>.Item>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey>, &type metadata for EnvironmentValues.AllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.AllowedDynamicRangeKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t type metadata completion function for _AnimationView()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

BOOL PropertyList.mayNotBeEqual(to:)(unint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return a1 != 0;
  }

  if (!a1)
  {
    return 1;
  }

  v6 = MEMORY[0x1E69E7CC0];

  v4 = compareLists(_:_:ignoredTypes:)(a2, a1, &v6);

  return !v4;
}

unsigned int *storeEnumTagSinglePayload for AnyTransition.RemovalVisitor(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = 0;
      *v18 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v18 = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnyTransition.RemovalVisitor(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

uint64_t one-time initialization function for v3_2()
{
  result = swiftUI_v3_2_os_versions();
  static Semantics.v3_2 = HIDWORD(result);
  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021AllowsVibrantBlendingS0VG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsVibrantBlendingKey>, &type metadata for AllowsVibrantBlendingKey, &protocol witness table for AllowsVibrantBlendingKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021AllowsVibrantBlendingV0VG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021AllowsVibrantBlendingV0VG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021AllowsVibrantBlendingV0VG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsVibrantBlendingKey>, &type metadata for AllowsVibrantBlendingKey, &protocol witness table for AllowsVibrantBlendingKey, type metadata accessor for EnvironmentPropertyKey);
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

uint64_t PlatformViewDisplayList.environment.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;
}

uint64_t initializeWithCopy for PlatformImageRepresentableContext(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 8);
  if (v4 == 255)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    v5 = *a2;
    outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
    *a1 = v5;
    *(a1 + 8) = v4;
  }

  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 104) = *(a2 + 52);
  *(a1 + 106) = *(a2 + 106);
  v6 = a2[16];
  *(a1 + 107) = *(a2 + 107);
  if (v6 >> 1 == 0xFFFFFFFF)
  {
    v7 = *(a2 + 8);
    *(a1 + 112) = *(a2 + 7);
    *(a1 + 128) = v7;
  }

  else
  {
    v8 = a2[14];
    v9 = a2[15];
    v10 = a2[17];
    outlined copy of AccessibilityImageLabel(v8, v9, v6);
    *(a1 + 112) = v8;
    *(a1 + 120) = v9;
    *(a1 + 128) = v6;
    *(a1 + 136) = v10;
  }

  v11 = a2[19];
  *(a1 + 144) = a2[18];
  *(a1 + 152) = v11;
  *(a1 + 160) = *(a2 + 80);
  *(a1 + 164) = *(a2 + 41);
  *(a1 + 168) = *(a2 + 168);
  v12 = a2[22];
  *(a1 + 176) = v12;
  *(a1 + 184) = *(a2 + 92);
  *(a1 + 186) = *(a2 + 186);
  v14 = a2[24];
  v13 = a2[25];
  *(a1 + 192) = v14;
  *(a1 + 200) = v13;
  swift_unknownObjectRetain();

  v15 = v12;

  return a1;
}

uint64_t specialized implicit closure #1 in _GraphInputs.tintColor.getter@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t StaticIf<>.init<>(_:then:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  a2();
  v6 = *(*(a4 - 8) + 8);

  return v6(a1, a4);
}

uint64_t destroy for PlatformImageRepresentableContext(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != 255)
  {
    outlined consume of GraphicsImage.Contents(*a1, v2);
  }

  v3 = *(a1 + 128);
  if (v3 >> 1 != 0xFFFFFFFF)
  {
    outlined consume of AccessibilityImageLabel(*(a1 + 112), *(a1 + 120), v3);
  }

  swift_unknownObjectRelease();
}

id static Material.coreMaterial(bundle:provider:)@<X0>(void *a1@<X0>, uint64_t (*a2)(char *)@<X1>, uint64_t a3@<X8>)
{
  v15 = 0;
  v5 = a2(&v15);
  v7 = v6;
  v14 = 1;
  v8 = a2(&v14);
  v10 = v9;
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = v7;
  v11[4] = v8;
  v11[5] = v10;
  v11[6] = a1;
  *(a3 + 12) = 0;
  *a3 = v11;
  *(a3 + 8) = 0;

  return a1;
}

uint64_t sub_18D2E2EE4()
{

  return swift_deallocObject();
}

uint64_t Material.applyingFiltersInPlace(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *(v2 + 12);
  *a2 = *v2;
  v5 = *(v2 + 8);
  *(a2 + 8) = v5;
  v6 = v4 & 0xFFFFFF7F;
  if (a1)
  {
    v7 = 128;
  }

  else
  {
    v7 = 0;
  }

  *(a2 + 12) = v6 | v7;
  return outlined copy of Material.ID(v3, v5);
}

void *initializeBufferWithCopyOfBuffer for PlatformNamedImageRepresentableContext(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t ImageResolutionContext.init(environment:textStyle:transaction:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  *(a4 + 2) = 0;
  v9 = type metadata accessor for ImageResolutionContext();
  v10 = v9[6];
  v11 = type metadata accessor for Text.Style(0);
  (*(*(v11 - 8) + 56))(&a4[v10], 1, 1, v11);
  v12 = v9[7];
  v13 = &a4[v9[8]];
  *v13 = 520;
  v13[2] = 2;
  a4[v9[9]] = 3;
  a4[v9[10]] = 1;
  *a4 = v7;
  *(a4 + 1) = v8;
  result = outlined assign with take of Text.Style?(a2, &a4[v10]);
  *&a4[v12] = a3;
  return result;
}

uint64_t Image.NamedImageProvider.resolveNamedImage(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 4);
  v8 = *(v2 + 20);
  v33 = *(v2 + 21);
  v34 = *(v2 + 23);
  v9 = v2[3];
  v10 = *(v2 + 3);
  v31 = *(v2 + 2);
  *v32 = v10;
  *&v32[9] = *(v2 + 57);
  v21 = v5;
  *&v27 = v5;
  *(&v27 + 1) = v6;
  LODWORD(v28) = v7;
  BYTE4(v28) = v8;
  *(&v28 + 5) = *(v2 + 21);
  BYTE7(v28) = *(v2 + 23);
  *(&v28 + 1) = v9;
  v11 = *(v2 + 3);
  v29 = *(v2 + 2);
  v30[0] = v11;
  *(v30 + 9) = *(v2 + 57);
  Image.NamedImageProvider.resolve(in:)(a1, v35);
  outlined init with copy of GraphicsImage(v35, &v27);
  result = outlined destroy of Image.Resolved(v35);
  if (v35[8] == 255)
  {
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  else
  {
    outlined destroy of GraphicsImage(v35);
    v13 = *a1;
    v14 = a1[1];
    v15 = *(a1 + *(type metadata accessor for ImageResolutionContext() + 32));
    if (v15 == 8)
    {
      if (v14)
      {

        swift_retain_n();
        v16 = &v27;
        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v13, &v27);
      }

      else
      {

        v18 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(v17);
        if (v18)
        {
          v16 = (v18 + 9);
        }

        else
        {
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }

          v16 = &static SymbolRenderingOptionsKey.defaultValue;
        }
      }

      v15 = *v16;
    }

    else
    {
    }

    *&v27 = v21;
    *(&v27 + 1) = v6;
    LODWORD(v28) = v7;
    BYTE4(v28) = v8;
    *(&v28 + 5) = v33;
    BYTE7(v28) = v34;
    *(&v28 + 1) = v9;
    v29 = v31;
    v30[0] = *v32;
    *(v30 + 9) = *&v32[9];
    v23[0] = v13;
    v23[1] = v14;
    v22 = v9;
    outlined copy of Image.Location(v9);
    outlined copy of Image.Location(v9);
    Image.NamedImageProvider.bitmapInfo(in:from:)(v23, &v22, v24);
    outlined consume of Image.Location(v22);
    v30[0] = v25;
    v30[1] = v26[0];
    *(&v30[1] + 9) = *(v26 + 9);
    v27 = v24[0];
    v28 = v24[1];
    v29 = v24[2];
    if (v25 == 3)
    {
      v19 = 0;
    }

    else
    {
      *&v24[0] = v13;
      *(&v24[0] + 1) = v14;
      LOBYTE(v23[0]) = v30[0];
      v20 = EnvironmentValues.imageIsTemplate(renderingMode:)(v23);
      outlined destroy of NamedImage.BitmapKey(&v27, type metadata accessor for NamedImage._BitmapInfo<GraphicsImage.Contents>?);
      v19 = 0x1000000000000;
      if ((v20 & 1) == 0)
      {
        v19 = 0;
      }
    }

    LOBYTE(v24[0]) = v8 & 1;
    *a2 = v21;
    *(a2 + 8) = v6;
    *(a2 + 16) = v9;
    *(a2 + 24) = v7 | ((v8 & 1) << 32) | (v15 << 40) | v19;
    *(a2 + 32) = v13;
    *(a2 + 40) = v14;
  }

  return result;
}

uint64_t Image.NamedImageProvider.bitmapInfo(in:from:)@<X0>(void **a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for NamedImage.BitmapKey(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *a2;
  v13 = *v3;
  v12 = v3[1];
  v17[1] = a1[1];
  v18 = v11;
  v17[0] = v10;

  outlined copy of Image.Location(v11);

  NamedImage.BitmapKey.init(name:location:in:)(v13, v12, &v18, v17, v9);
  if (one-time initialization token for sharedCache != -1)
  {
    swift_once();
  }

  v14 = *(v9 + 4);
  v17[0] = v14;
  outlined copy of Image.Location(v14);
  NamedImage.Cache.subscript.getter(v9, v17, a3);
  outlined consume of Image.Location(v14);
  return outlined destroy of NamedImage.BitmapKey(v9, type metadata accessor for NamedImage.BitmapKey);
}

uint64_t specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void, void), uint64_t a7)
{
  if (a5 >> 1 == a4)
  {
    return 0;
  }

  if ((a5 >> 1) <= a4)
  {
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v10 = a5;
  v13 = a3 + 16 * a4;
  v14 = *v13;
  v15 = *(v13 + 8);
  v57 = v15;
  if (v14 != 8)
  {
    LOBYTE(v15) = 1;
  }

  v54 = result;
  v55 = a5 >> 1;
  if ((result & 0x100) == 0)
  {
    if (v15)
    {
      v16 = v14;
      v17 = result;
      _s7SwiftUI4TextV5StyleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(ColorScheme?, ColorSchemeContrast)>, type metadata accessor for (ColorScheme?, ColorSchemeContrast), MEMORY[0x1E69E6F90]);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_18DDAB4C0;
      *(v18 + 32) = v17 & 1;
      *(v18 + 33) = 0;
      v19 = (v18 + 34);
      v20 = v18;
      v21 = (v18 + 35);
      goto LABEL_11;
    }

    v24 = &outlined read-only object #1 of specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:);
    v25 = qword_1F00441C8;
    if (qword_1F00441C8)
    {
      goto LABEL_14;
    }

LABEL_56:

    goto LABEL_57;
  }

  if (v15)
  {
    v16 = v14;
    v22 = result;
    _s7SwiftUI4TextV5StyleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(ColorScheme?, ColorSchemeContrast)>, type metadata accessor for (ColorScheme?, ColorSchemeContrast), MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_18DDACA80;
    *(v23 + 32) = v22 & 1;
    *(v23 + 33) = 1;
    *(v23 + 34) = v22 & 1;
    *(v23 + 35) = 512;
    *(v23 + 37) = 1;
    v19 = (v23 + 38);
    v20 = v23;
    v21 = (v23 + 39);
LABEL_11:
    *v19 = 2;
    *v21 = 0;
    v14 = v16;
    v24 = v20;
    v25 = v20[2];
    if (!v25)
    {
      goto LABEL_56;
    }

    goto LABEL_14;
  }

  v24 = &outlined read-only object #0 of specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:);
  v25 = qword_1F00441A0;
  if (!qword_1F00441A0)
  {
    goto LABEL_56;
  }

LABEL_14:
  v50 = v10;
  v51 = a2;
  v7 = 0;
  v26 = v24 + 33;
  v27 = v57;
  v52 = v14;
  v53 = a6;
  do
  {
    if (!v7)
    {
      v28 = *(v26 - 1);
      v29 = 0xD00000000000001BLL;
      if (!*v26)
      {
        v29 = 0x7261657070414955;
      }

      v31 = "UIAppearanceHighContrastAny";
      v30 = 0x800000018DD7CA20;
      if (!*v26)
      {
        v30 = 0xEF796E4165636E61;
      }

      v32 = 0xD00000000000001CLL;
      if (!*v26)
      {
        v32 = 0xD000000000000010;
        v31 = "UIAppearanceHighContrastDark";
      }

      v33 = v31 | 0x8000000000000000;
      if (*v26)
      {
        v34 = 0xD00000000000001DLL;
      }

      else
      {
        v34 = 0xD000000000000011;
      }

      v35 = "UIAppearanceDark";
      if (!*v26)
      {
        v35 = "UIAppearanceHighContrastLight";
      }

      v36 = v35 | 0x8000000000000000;
      if (v28)
      {
        v34 = v32;
        v37 = v33;
      }

      else
      {
        v37 = v36;
      }

      if (v28 == 2)
      {
        v38 = v29;
      }

      else
      {
        v38 = v34;
      }

      if (v28 == 2)
      {
        v39 = v30;
      }

      else
      {
        v39 = v37;
      }

      v40 = a6(v38, v39);
      v7 = v40;
      if (!v40)
      {
LABEL_15:

        goto LABEL_16;
      }

      if (v27)
      {
        if (!v14)
        {
          goto LABEL_15;
        }

        v41 = [v40 appearance];
        if (v41)
        {
          v42 = v41;
          v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;

          if (v43 == v38 && v45 == v39)
          {
          }

          else
          {
            v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v47 & 1) == 0)
            {

              v7 = 0;
            }
          }

          v14 = v52;
          a6 = v53;
          v27 = v57;
        }

        else
        {

          v7 = 0;
          v27 = v57;
        }
      }

      else
      {

        if ([v7 idiom] != v14)
        {

          v7 = 0;
        }
      }
    }

LABEL_16:
    v26 += 2;
    --v25;
  }

  while (v25);

  a2 = v51;
  v10 = v50;
  if (v7)
  {
    return v7;
  }

LABEL_57:
  if (__OFSUB__(v55, a4))
  {
    goto LABEL_63;
  }

  v48 = a4 + 1;
  if (__OFADD__(a4, 1))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v55 < v48)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v48 >= a4)
  {
    swift_unknownObjectRetain();
    v49 = specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:)(v54 & 0x101, a2, a3, v48, v10, a6, a7);
    swift_unknownObjectRelease();
    return v49;
  }

LABEL_66:
  __break(1u);
  return result;
}

uint64_t getEnumTag for GroupElementsOfContent.Storage(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = 64;
  if (*(v2 + 64) > 0x40uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return v4;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 2;
    LODWORD(v4) = v7 + 2;
    if (v3 >= 4)
    {
      return v4;
    }

    else
    {
      return v8;
    }
  }

  return v4;
}

void destructiveInjectEnumTag for GroupElementsOfContent.Storage(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x40uLL)
  {
    v3 = 64;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (a2 > 1)
  {
    v4 = a2 - 2;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 2;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 2;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

unint64_t instantiation function for generic protocol witness table for EmptyVisualEffect(uint64_t a1)
{
  result = lazy protocol witness table accessor for type EmptyVisualEffect and conformance EmptyVisualEffect();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type EmptyVisualEffect and conformance EmptyVisualEffect()
{
  result = lazy protocol witness table cache variable for type EmptyVisualEffect and conformance EmptyVisualEffect;
  if (!lazy protocol witness table cache variable for type EmptyVisualEffect and conformance EmptyVisualEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyVisualEffect and conformance EmptyVisualEffect);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for RendererVisualEffect<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for CombinedVisualEffect<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type RendererVisualEffect<_OpacityEffect> and conformance RendererVisualEffect<A>()
{
  result = lazy protocol witness table cache variable for type RendererVisualEffect<_OpacityEffect> and conformance RendererVisualEffect<A>;
  if (!lazy protocol witness table cache variable for type RendererVisualEffect<_OpacityEffect> and conformance RendererVisualEffect<A>)
  {
    type metadata accessor for _OpacityShapeStyle<AnyShapeStyle>(255, &lazy cache variable for type metadata for RendererVisualEffect<_OpacityEffect>, &type metadata for _OpacityEffect, &protocol witness table for _OpacityEffect, type metadata accessor for RendererVisualEffect);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererVisualEffect<_OpacityEffect> and conformance RendererVisualEffect<A>);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _TransactionModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v8);
  v7 = v4;
  v5 = off_1F00B84C8(&v7, v8);
  a3(v5, v8);
  return outlined destroy of _ViewListInputs(v8);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance _TransactionModifier(uint64_t a1, uint64_t a2)
{
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ChildTransaction and conformance ChildTransaction();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(a2 + 28) = result;
  return result;
}

uint64_t type metadata completion function for StrokeBorderShapeView()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for _StrokedShape();
    swift_getWitnessTable();
    type metadata accessor for _ShapeView();
    type metadata accessor for _BackgroundModifier();
    result = type metadata accessor for ModifiedContent();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ScrollPositionBindingModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(int *, _BYTE *))
{
  v9 = *a1;
  outlined init with copy of _ViewListInputs(a2, v13);
  v12 = v9;
  v10 = a7(&v12, v13);
  a3(v10, v13);
  return outlined destroy of _ViewListInputs(v13);
}

uint64_t specialized static ScrollPositionBindingModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v10[0] = AGGraphCreateOffsetAttribute2();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI7BindingVyAA14ScrollPositionVGMaTm_0(0, &lazy cache variable for type metadata for UnitPoint?, &type metadata for UnitPoint, MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type ScrollPositionBindingModifier.AdjustedAnchor and conformance ScrollPositionBindingModifier.AdjustedAnchor();
  v4 = Attribute.init<A>(body:value:flags:update:)();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE014ScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(a2, 0xFF00000000);

  v5 = *MEMORY[0x1E698D3F8];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020ScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(a2, v5);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020ScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(a2, v4);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE014ScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(a2, OffsetAttribute2);

  v6 = *(a2 + 28);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  v10[0] = OffsetAttribute2;
  v10[1] = v4;
  v10[2] = v6;
  outlined init with copy of ScrollPositionBindingModifier.MakeRequest(v10, v9);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ScrollStateRequest?();
  lazy protocol witness table accessor for type ScrollPositionBindingModifier.MakeRequest and conformance ScrollPositionBindingModifier.MakeRequest();
  v7 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of ScrollPositionBindingModifier.MakeRequest(v9);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE018ScrollStateRequestF033_27D2EB338D4F8E5F7B4BD25A553BF598LLV_Tt2g5(a2, v7);
  outlined destroy of ScrollPositionBindingModifier.MakeRequest(v10);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance AnchorGeometryTransform<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for AnchorGeometryTransform<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for Binding<ScrollPosition>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI7BindingVyAA14ScrollPositionVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ScrollPositionBindingModifier.AdjustedAnchor and conformance ScrollPositionBindingModifier.AdjustedAnchor()
{
  result = lazy protocol witness table cache variable for type ScrollPositionBindingModifier.AdjustedAnchor and conformance ScrollPositionBindingModifier.AdjustedAnchor;
  if (!lazy protocol witness table cache variable for type ScrollPositionBindingModifier.AdjustedAnchor and conformance ScrollPositionBindingModifier.AdjustedAnchor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollPositionBindingModifier.AdjustedAnchor and conformance ScrollPositionBindingModifier.AdjustedAnchor);
  }

  return result;
}

uint64_t initializeWithCopy for ScrollPositionBindingModifier.MakeRequest(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  v2 = *(a2 + 80);
  if (v2)
  {
    if (*(a2 + 73))
    {
      v3 = *(a2 + 32);
      *(result + 16) = *(a2 + 16);
      *(result + 32) = v3;
      *(result + 48) = *(a2 + 48);
      *(result + 58) = *(a2 + 58);
    }

    else
    {
      v6 = *(a2 + 40);
      *(result + 40) = v6;
      v7 = result;
      v8 = a2;
      (**(v6 - 8))(result + 16, a2 + 16);
      a2 = v8;
      result = v7;
      *(v7 + 56) = *(v8 + 56);
      *(v7 + 72) = *(v8 + 72);
      *(v7 + 73) = 0;
      v2 = *(v8 + 80);
    }

    v9 = *(a2 + 88);
    v10 = *(a2 + 96);
    *(result + 80) = v2;
    *(result + 88) = v9;
    *(result + 96) = v10;
  }

  else
  {
    v4 = *(a2 + 64);
    *(result + 48) = *(a2 + 48);
    *(result + 64) = v4;
    *(result + 80) = *(a2 + 80);
    *(result + 96) = *(a2 + 96);
    v5 = *(a2 + 32);
    *(result + 16) = *(a2 + 16);
    *(result + 32) = v5;
  }

  return result;
}

void type metadata accessor for ScrollStateRequest?()
{
  if (!lazy cache variable for type metadata for ScrollStateRequest?)
  {
    type metadata accessor for ScrollStateRequest();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ScrollStateRequest?);
    }
  }
}

unint64_t type metadata accessor for ScrollStateRequest()
{
  result = lazy cache variable for type metadata for ScrollStateRequest;
  if (!lazy cache variable for type metadata for ScrollStateRequest)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ScrollStateRequest);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollPositionBindingModifier.MakeRequest and conformance ScrollPositionBindingModifier.MakeRequest()
{
  result = lazy protocol witness table cache variable for type ScrollPositionBindingModifier.MakeRequest and conformance ScrollPositionBindingModifier.MakeRequest;
  if (!lazy protocol witness table cache variable for type ScrollPositionBindingModifier.MakeRequest and conformance ScrollPositionBindingModifier.MakeRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollPositionBindingModifier.MakeRequest and conformance ScrollPositionBindingModifier.MakeRequest);
  }

  return result;
}

uint64_t outlined destroy of ScrollPositionBindingModifier.MakeRequest(uint64_t result)
{
  if (*(result + 80))
  {
    if (!*(result + 73))
    {
      v1 = result;
      __swift_destroy_boxed_opaque_existential_1(result + 16);
      return v1;
    }
  }

  return result;
}

void *Color.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for NamedResource();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ResourceReference();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x193ABE0F0](v8);
  if ((*(v7 + 88))(v10, v6) == *MEMORY[0x1E6966780])
  {
    (*(v7 + 96))(v10, v6);
    v11 = (*(v3 + 32))(v5, v10, v2);
    v12 = MEMORY[0x193ABE130](v11);
    v14 = v13;
    v15 = NamedResource.bundle.getter();
    v16 = type metadata accessor for ColorResource();
    (*(*(v16 - 8) + 8))(a1, v16);
    (*(v3 + 8))(v5, v2);
    type metadata accessor for ColorBox<Color.NamedColor>();
    result = swift_allocObject();
    result[2] = v12;
    result[3] = v14;
    result[4] = v15;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void type metadata accessor for ColorBox<Color.NamedColor>()
{
  if (!lazy cache variable for type metadata for ColorBox<Color.NamedColor>)
  {
    lazy protocol witness table accessor for type Color.NamedColor and conformance Color.NamedColor();
    v0 = type metadata accessor for ColorBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ColorBox<Color.NamedColor>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Color.NamedColor and conformance Color.NamedColor()
{
  result = lazy protocol witness table cache variable for type Color.NamedColor and conformance Color.NamedColor;
  if (!lazy protocol witness table cache variable for type Color.NamedColor and conformance Color.NamedColor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.NamedColor and conformance Color.NamedColor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.NamedColor and conformance Color.NamedColor;
  if (!lazy protocol witness table cache variable for type Color.NamedColor and conformance Color.NamedColor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.NamedColor and conformance Color.NamedColor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.NamedColor and conformance Color.NamedColor;
  if (!lazy protocol witness table cache variable for type Color.NamedColor and conformance Color.NamedColor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.NamedColor and conformance Color.NamedColor);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Color.NamedColor(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Color.NamedColor and conformance Color.NamedColor();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for ScaledShape()
{
  return type metadata completion function for ScaledShape();
}

{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(uint64_t *a1, int a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollTargetRoleKey);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE016ScrollTargetRoleV033_D49197C3D3C61F0DA0F0CF1D72D0077ALLV_Tt0B5(v4, v7);
  if (!result || *(result + 72) != a2)
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.ScrollTargetRoleKey>, &type metadata for _GraphInputs.ScrollTargetRoleKey, &protocol witness table for _GraphInputs.ScrollTargetRoleKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.ScrollTargetRoleKey, 0, v6);
  }

  return result;
}

uint64_t _GraphInputs.scrollTargetRole.setter(int a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v1, a1);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.RemovePreferenceInput);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE21RemovePreferenceInput33_D49197C3D3C61F0DA0F0CF1D72D0077ALLV_Tt0B5(v4, v7);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.RemovePreferenceInput>, &type metadata for _GraphInputs.RemovePreferenceInput, &protocol witness table for _GraphInputs.RemovePreferenceInput, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.RemovePreferenceInput, 0, v6);
  }

  return result;
}

uint64_t _GraphInputs.scrollTargetRemovePreference.setter(char a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v1, a1);
}

uint64_t getEnumTagSinglePayload for ScrollPositionStorage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
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

uint64_t assignWithTake for _VariadicView_Children(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t partial apply for specialized closure #2 in KeyPath.makeGetFunction()(uint64_t a1)
{
  return specialized closure #2 in KeyPath.makeGetFunction()(a1);
}

{
  return specialized closure #2 in KeyPath.makeGetFunction()(a1);
}

uint64_t specialized closure #2 in KeyPath.makeGetFunction()(uint64_t a1)
{
  outlined init with copy of _VariadicView_Children.Element(a1, v2);
  swift_getAtKeyPath();
  return outlined destroy of _VariadicView_Children.Element(v2);
}

{
  outlined init with copy of Subview(a1, v2);
  swift_getAtKeyPath();
  return outlined destroy of Subview(v2);
}

unint64_t lazy protocol witness table accessor for type Image.SymbolRenderingOptionsProvider and conformance Image.SymbolRenderingOptionsProvider()
{
  result = lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider and conformance Image.SymbolRenderingOptionsProvider;
  if (!lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider and conformance Image.SymbolRenderingOptionsProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider and conformance Image.SymbolRenderingOptionsProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider and conformance Image.SymbolRenderingOptionsProvider;
  if (!lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider and conformance Image.SymbolRenderingOptionsProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider and conformance Image.SymbolRenderingOptionsProvider);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Image.SymbolRenderingOptionsProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Image.SymbolRenderingOptionsProvider and conformance Image.SymbolRenderingOptionsProvider();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Item?()
{
  if (!lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Item?)
  {
    _s7SwiftUI12ForEachStateC4InfoVyAA22_VariadicView_ChildrenVs11AnyHashableVAG7ElementV_GMaTm_0(255, &lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Item, type metadata accessor for ForEachState.Item);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Item?);
    }
  }
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = AnyHashable._rawHashValue(seed:)(*(a2 + 40)), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    do
    {
      outlined init with copy of AnyHashable(*(a2 + 48) + 40 * v6, v10);
      v8 = MEMORY[0x193AC01F0](v10, a1);
      outlined destroy of AnyHashable(v10);
      if (v8)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

{
  v3 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v3 = a1;
  v4 = *(a1 + 32);
  v415 = *(a1 + 16);
  v416 = *a1;
  v426[0] = *a1;
  v426[1] = v415;
  v427 = *(a1 + 32);
  Hasher.init(_seed:)();
  GlassContainer.Entry.ModelID.hash(into:)(v421);
  v5 = Hasher._finalize()();
  v6 = v2 + 56;
  v7 = -1 << *(v2 + 32);
  v8 = v5 & ~v7;
  if (((*(v2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v413 = v2 + 56;
  v414 = ~v7;
  v412 = v2;
  while (1)
  {
    v9 = *(v2 + 48) + 40 * v8;
    v10 = *v9;
    v11 = *(v9 + 8);
    v13 = *(v9 + 16);
    v12 = *(v9 + 24);
    v14 = *(v9 + 32);
    v421[0] = v10;
    v421[1] = v11;
    v421[2] = v13;
    v421[3] = v12;
    v422 = v14;
    v423 = v416;
    v424 = v415;
    v425 = v4;
    if (!v14)
    {
      if (v3[2].i8[0])
      {
        outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
        v16 = v10;
        v17 = v11;
        v18 = v13;
        v19 = v12;
        v20 = 0;
        goto LABEL_21;
      }

      v22 = v3->i64[0];
      v23 = v3->u8[8];
      if (v11 >> 6)
      {
        if (v11 >> 6 == 1)
        {
          if ((v23 & 0xC0) != 0x40)
          {
            goto LABEL_33;
          }

          v407 = v3->i8[9];
          v408 = v3[1].i64[0];
          v390 = v3[1].i64[1];
          v419 = v10;
          v420 = v11 & 0x3F;
          v417 = v22;
          v418 = v23 & 0x3F;
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined copy of _Glass.Variant.ID(v22, v23);
          outlined copy of _Glass.Variant.ID(v10, v11);
          if ((specialized static Material.ID.== infix(_:_:)(&v419, &v417) & 1) == 0)
          {
            outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(v421, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
            outlined consume of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
LABEL_67:
            outlined consume of _Glass.Variant.ID(v10, v11);
            outlined consume of _Glass.Variant.ID(v22, v23);
            outlined destroy of GlassContainer.Entry.ModelID(v3);
            v43 = v10;
            v44 = v11;
            v45 = v13;
            v46 = v12;
            v47 = 0;
LABEL_68:
            outlined consume of GlassContainer.Entry.ModelID(v43, v44, v45, v46, v47);
            goto LABEL_69;
          }

          outlined consume of _Glass.Variant.ID(v10, v11);
          v24 = v22;
          v25 = v23;
        }

        else
        {
          if (v10 | v11 ^ 0x80)
          {
            v40 = v23 & 0xC0;
            if (v11 == 128 && v10 == 1)
            {
              if (v40 != 128 || v22 != 1 || v23 != 128)
              {
                goto LABEL_65;
              }

              v407 = v3->i8[9];
              v408 = v3[1].i64[0];
              v390 = v3[1].i64[1];
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined consume of _Glass.Variant.ID(v10, v11);
              v24 = 1;
            }

            else
            {
              if (v40 != 128 || v22 != 2 || v23 != 128)
              {
                goto LABEL_65;
              }

              v407 = v3->i8[9];
              v408 = v3[1].i64[0];
              v390 = v3[1].i64[1];
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined consume of _Glass.Variant.ID(v10, v11);
              v24 = 2;
            }
          }

          else
          {
            if ((v23 & 0xC0) != 0x80 || v22 || v23 != 128)
            {
LABEL_65:
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              v38 = v22;
              v39 = v23;
              goto LABEL_66;
            }

            v407 = v3->i8[9];
            v408 = v3[1].i64[0];
            v390 = v3[1].i64[1];
            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            outlined consume of _Glass.Variant.ID(v10, v11);
            v24 = 0;
          }

          v25 = 0x80;
        }

        outlined consume of _Glass.Variant.ID(v24, v25);
        goto LABEL_62;
      }

      if (v23 >= 0x40)
      {
LABEL_33:
        outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
        outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
        outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
        outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
        outlined copy of _Glass.Variant.ID(v22, v23);
        v38 = v10;
        v39 = v11;
LABEL_66:
        outlined copy of _Glass.Variant.ID(v38, v39);
        outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(v421, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
        goto LABEL_67;
      }

      v411 = v3->u8[8];
      v26 = *(v10 + 16);
      v27 = *(v10 + 24);
      v28 = *(v10 + 48);
      v29 = *(v22 + 16);
      v30 = *(v22 + 24);
      v404 = v3->i64[0];
      v31 = *(v22 + 48);
      v405 = v4;
      if (v27 >> 6)
      {
        if (v27 >> 6 == 1)
        {
          if ((v30 & 0xC0) != 0x40)
          {
            goto LABEL_106;
          }

          v369 = *(v10 + 32);
          v370 = *(v22 + 32);
          v367 = *(v22 + 40);
          v368 = *(v10 + 40);
          v407 = v3->i8[9];
          v408 = v3[1].i64[0];
          v390 = v3[1].i64[1];
          v419 = *(v10 + 16);
          v420 = v27 & 0x3F;
          v417 = v29;
          v418 = v30 & 0x3F;
          v32 = v26;
          v380 = v26;
          v33 = v29;
          v371 = v29;
          v34 = v27;
          v35 = v30;
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          v36 = v32;
          LOBYTE(v32) = v34;
          v375 = v34;
          outlined copy of _Glass.Variant.ID(v36, v34);
          outlined copy of _Glass.Variant.ID(v33, v35);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          v37 = v411;
          outlined copy of _Glass.Variant.ID(v404, v411);
          outlined copy of _Glass.Variant.ID(v10, v11);
          outlined copy of _Glass.Variant.ID(v380, v32);
          outlined copy of _Glass.Variant.ID(v371, v35);
          v391 = specialized static Material.ID.== infix(_:_:)(&v419, &v417);
          outlined consume of _Glass.Variant.ID(v380, v375);
          outlined consume of _Glass.Variant.ID(v371, v35);
          outlined consume of _Glass.Variant.ID(v371, v35);
          v22 = v404;
          outlined consume of _Glass.Variant.ID(v380, v375);
          v2 = v412;
          if ((v391 & 1) == 0)
          {
            goto LABEL_359;
          }
        }

        else
        {
          if (v26 | v27 ^ 0x80)
          {
            v59 = v30 & 0xC0;
            if (*(v10 + 24) == 128 && v26 == 1)
            {
              if (v59 != 128 || v29 != 1 || v30 != 128)
              {
                goto LABEL_106;
              }

              v377 = *(v10 + 24);
              v382 = *(v10 + 16);
              v369 = *(v10 + 32);
              v370 = *(v22 + 32);
              v367 = *(v22 + 40);
              v368 = *(v10 + 40);
              v407 = v3->i8[9];
              v408 = v3[1].i64[0];
              v390 = v3[1].i64[1];
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              v61 = 1;
            }

            else
            {
              if (v59 != 128 || v29 != 2 || v30 != 128)
              {
                goto LABEL_106;
              }

              v377 = *(v10 + 24);
              v382 = *(v10 + 16);
              v369 = *(v10 + 32);
              v370 = *(v22 + 32);
              v367 = *(v22 + 40);
              v368 = *(v10 + 40);
              v407 = v3->i8[9];
              v408 = v3[1].i64[0];
              v390 = v3[1].i64[1];
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              v61 = 2;
            }
          }

          else
          {
            if ((v30 & 0xC0) != 0x80 || v29 || v30 != 128)
            {
LABEL_106:
              v70 = *(v22 + 16);
              v71 = v10;
              v394 = v3;
              v72 = v10;
              v73 = v13;
              v74 = v12;
              v75 = v27;
              v386 = *(v22 + 24);
              outlined copy of GlassContainer.Entry.ModelID(v71, v11, v73, v74, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v394, v426);
              outlined copy of GlassContainer.Entry.ModelID(v72, v11, v73, v74, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v394, v426);
              outlined copy of GlassContainer.Entry.ModelID(v72, v11, v73, v74, 0);
              outlined copy of _Glass.Variant.ID(v22, v411);
              outlined copy of _Glass.Variant.ID(v72, v11);
              outlined copy of _Glass.Variant.ID(v26, v75);
              outlined copy of _Glass.Variant.ID(v29, v386);
              v76 = v75;
              v12 = v74;
              v13 = v73;
              v10 = v72;
              v3 = v394;
              outlined consume of _Glass.Variant.ID(v26, v76);
              v37 = v411;
              outlined consume of _Glass.Variant.ID(v70, v386);
              goto LABEL_358;
            }

            v377 = *(v10 + 24);
            v382 = *(v10 + 16);
            v369 = *(v10 + 32);
            v370 = *(v22 + 32);
            v367 = *(v22 + 40);
            v368 = *(v10 + 40);
            v407 = v3->i8[9];
            v408 = v3[1].i64[0];
            v390 = v3[1].i64[1];
            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
            v61 = 0;
          }

          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined copy of _Glass.Variant.ID(v22, v411);
          outlined copy of _Glass.Variant.ID(v10, v11);
          outlined consume of _Glass.Variant.ID(v382, v377);
          outlined consume of _Glass.Variant.ID(v61, 0x80u);
          v2 = v412;
        }

LABEL_101:
        if (v368 >> 6)
        {
          v66 = v369;
          v67 = v367;
          if (v368 >> 6 == 1)
          {
            if ((v367 & 0xC0) != 0x40)
            {
              goto LABEL_150;
            }

            *&v426[0] = v369;
            BYTE8(v426[0]) = v368 & 0x3F;
            v419 = v370;
            v420 = v367 & 0x3F;
            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v370, v367);
            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v370, v367);
            v393 = specialized static Material.ID.== infix(_:_:)(v426, &v419);
            outlined consume of _Glass.Variant.ID(v369, v368);
            outlined consume of _Glass.Variant.ID(v370, v367);
            outlined consume of _Glass.Variant.ID(v370, v367);
            v68 = v411;
            outlined consume of _Glass.Variant.ID(v369, v368);
            v69 = v404;
            if ((v393 & 1) == 0)
            {
              goto LABEL_413;
            }
          }

          else
          {
            if (v369 | v368 ^ 0x80)
            {
              v84 = v367 & 0xC0;
              if (v368 == 128 && v369 == 1)
              {
                if (v84 != 128 || v370 != 1 || v367 != 128)
                {
                  goto LABEL_150;
                }

                v86 = v411;
                v87 = 1;
              }

              else
              {
                if (v84 != 128 || v370 != 2 || v367 != 128)
                {
                  goto LABEL_150;
                }

                v86 = v411;
                v87 = 2;
              }
            }

            else
            {
              if ((v367 & 0xC0) != 0x80 || v370 || v367 != 128)
              {
LABEL_150:
                v98 = v66;
                v99 = v67;
                outlined copy of _Glass.Variant.ID(v66, v368);
                outlined copy of _Glass.Variant.ID(v370, v99);
                v68 = v411;
                outlined consume of _Glass.Variant.ID(v98, v368);
                outlined consume of _Glass.Variant.ID(v370, v99);
                v69 = v404;
                goto LABEL_413;
              }

              v86 = v411;
              v87 = 0;
            }

            outlined consume of _Glass.Variant.ID(v369, v368);
            outlined consume of _Glass.Variant.ID(v87, 0x80u);
            v69 = v404;
            v68 = v86;
          }

          goto LABEL_148;
        }

        v67 = v367;
        v66 = v369;
        if (v367 >= 0x40)
        {
          goto LABEL_150;
        }

        v77 = *(v369 + 16);
        v78 = *(v369 + 24);
        v79 = *(v369 + 48);
        v80 = *(v370 + 16);
        v81 = *(v370 + 24);
        v373 = v80;
        v82 = *(v370 + 48);
        v383 = *(v369 + 24);
        v387 = v77;
        v378 = *(v370 + 24);
        if (v78 >> 6)
        {
          if (v78 >> 6 == 1)
          {
            if ((v81 & 0xC0) != 0x40)
            {
              goto LABEL_243;
            }

            v349 = *(v369 + 40);
            v351 = *(v370 + 32);
            v357 = *(v370 + 40);
            v361 = *(v369 + 32);
            *&v426[0] = *(v369 + 16);
            BYTE8(v426[0]) = v78 & 0x3F;
            v419 = v80;
            v420 = v81 & 0x3F;
            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v370, v367);
            outlined copy of _Glass.Variant.ID(v77, v78);
            outlined copy of _Glass.Variant.ID(v373, v378);
            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v370, v367);
            outlined copy of _Glass.Variant.ID(v77, v78);
            outlined copy of _Glass.Variant.ID(v373, v378);
            v395 = specialized static Material.ID.== infix(_:_:)(v426, &v419);
            outlined consume of _Glass.Variant.ID(v77, v78);
            outlined consume of _Glass.Variant.ID(v373, v378);
            v83 = v370;
            outlined consume of _Glass.Variant.ID(v373, v378);
            outlined consume of _Glass.Variant.ID(v77, v383);
            if ((v395 & 1) == 0)
            {
              goto LABEL_411;
            }
          }

          else
          {
            if (v77 | v78 ^ 0x80)
            {
              v134 = v81 & 0xC0;
              if (*(v369 + 24) == 128 && v77 == 1)
              {
                if (v134 != 128 || v80 != 1 || v81 != 128)
                {
                  goto LABEL_243;
                }

                v349 = *(v369 + 40);
                v351 = *(v370 + 32);
                v357 = *(v370 + 40);
                v361 = *(v369 + 32);
                v136 = 1;
              }

              else
              {
                if (v134 != 128 || v80 != 2 || v81 != 128)
                {
                  goto LABEL_243;
                }

                v349 = *(v369 + 40);
                v351 = *(v370 + 32);
                v357 = *(v370 + 40);
                v361 = *(v369 + 32);
                v136 = 2;
              }

              v399 = v136;
            }

            else
            {
              if ((v81 & 0xC0) != 0x80 || v80 || v81 != 128)
              {
LABEL_243:
                outlined copy of _Glass.Variant.ID(v369, v368);
                outlined copy of _Glass.Variant.ID(v370, v367);
                outlined copy of _Glass.Variant.ID(v369, v368);
                outlined copy of _Glass.Variant.ID(v370, v367);
                outlined copy of _Glass.Variant.ID(v77, v78);
                outlined copy of _Glass.Variant.ID(v373, v378);
                v83 = v370;
                outlined consume of _Glass.Variant.ID(v77, v383);
                outlined consume of _Glass.Variant.ID(v373, v378);
                goto LABEL_411;
              }

              v349 = *(v369 + 40);
              v351 = *(v370 + 32);
              v357 = *(v370 + 40);
              v361 = *(v369 + 32);
              v399 = 0;
            }

            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v370, v367);
            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v370, v367);
            outlined consume of _Glass.Variant.ID(v77, v383);
            outlined consume of _Glass.Variant.ID(v399, 0x80u);
          }

LABEL_237:
          if (v349 >> 6)
          {
            v152 = v357;
            if (v349 >> 6 == 1)
            {
              if ((v357 & 0xC0) != 0x40)
              {
                goto LABEL_372;
              }

              *&v426[0] = v361;
              BYTE8(v426[0]) = v349 & 0x3F;
              v419 = v351;
              v420 = v357 & 0x3F;
              outlined copy of _Glass.Variant.ID(v361, v349);
              outlined copy of _Glass.Variant.ID(v351, v357);
              outlined copy of _Glass.Variant.ID(v361, v349);
              outlined copy of _Glass.Variant.ID(v351, v357);
              v400 = specialized static Material.ID.== infix(_:_:)(v426, &v419);
              outlined consume of _Glass.Variant.ID(v361, v349);
              outlined consume of _Glass.Variant.ID(v351, v357);
              outlined consume of _Glass.Variant.ID(v351, v357);
              outlined consume of _Glass.Variant.ID(v361, v349);
              outlined consume of _Glass.Variant.ID(v369, v368);
              outlined consume of _Glass.Variant.ID(v370, v367);
              outlined consume of _Glass.Variant.ID(v370, v367);
              outlined consume of _Glass.Variant.ID(v369, v368);
              v69 = v404;
              v68 = v411;
              if ((v400 & 1) == 0 || v79 != v82)
              {
                goto LABEL_413;
              }

              goto LABEL_148;
            }

            if (v361 | v349 ^ 0x80)
            {
              v168 = v357 & 0xC0;
              if (v349 == 128 && v361 == 1)
              {
                if (v168 != 128 || v351 != 1 || v357 != 128)
                {
                  goto LABEL_372;
                }

                v170 = v349;
                v171 = 1;
              }

              else
              {
                if (v168 != 128 || v351 != 2 || v357 != 128)
                {
                  goto LABEL_372;
                }

                v170 = v349;
                v171 = 2;
              }
            }

            else
            {
              if ((v357 & 0xC0) != 0x80 || v351 || v357 != 128)
              {
LABEL_372:
                outlined copy of _Glass.Variant.ID(v361, v349);
                outlined copy of _Glass.Variant.ID(v351, v152);
                outlined consume of _Glass.Variant.ID(v361, v349);
                v201 = v351;
                v202 = v152;
                goto LABEL_410;
              }

              v170 = v349;
              v171 = 0;
            }

            outlined consume of _Glass.Variant.ID(v361, v170);
            outlined consume of _Glass.Variant.ID(v171, 0x80u);
            outlined consume of _Glass.Variant.ID(v369, v368);
            outlined consume of _Glass.Variant.ID(v370, v367);
            outlined consume of _Glass.Variant.ID(v370, v367);
            v69 = v404;
          }

          else
          {
            v152 = v357;
            if (v357 >= 0x40)
            {
              goto LABEL_372;
            }

            v401 = v3;
            v261 = v13;
            v163 = *(v361 + 16);
            v374 = *(v361 + 32);
            v344 = *(v361 + 40);
            v164 = *(v361 + 48);
            v384 = *(v351 + 16);
            v388 = *(v361 + 24);
            v165 = *(v351 + 24);
            v339 = *(v351 + 32);
            v335 = *(v351 + 40);
            v166 = *(v351 + 48);
            v379 = v165;
            if (v388 >> 6)
            {
              if (v388 >> 6 == 1)
              {
                if ((v165 & 0xC0) != 0x40)
                {
                  goto LABEL_517;
                }

                *&v426[0] = *(v361 + 16);
                BYTE8(v426[0]) = v388 & 0x3F;
                v419 = v384;
                v420 = v165 & 0x3F;
                outlined copy of _Glass.Variant.ID(v361, v349);
                outlined copy of _Glass.Variant.ID(v351, v357);
                outlined copy of _Glass.Variant.ID(v163, v388);
                outlined copy of _Glass.Variant.ID(v384, v379);
                outlined copy of _Glass.Variant.ID(v361, v349);
                outlined copy of _Glass.Variant.ID(v351, v357);
                outlined copy of _Glass.Variant.ID(v163, v388);
                outlined copy of _Glass.Variant.ID(v384, v379);
                v167 = specialized static Material.ID.== infix(_:_:)(v426, &v419);
                outlined consume of _Glass.Variant.ID(v163, v388);
                outlined consume of _Glass.Variant.ID(v384, v379);
                outlined consume of _Glass.Variant.ID(v384, v379);
                outlined consume of _Glass.Variant.ID(v163, v388);
                if ((v167 & 1) == 0)
                {
                  goto LABEL_518;
                }
              }

              else
              {
                if (v163 | v388 ^ 0x80)
                {
                  if (v388 == 128 && v163 == 1)
                  {
                    v2 = v412;
                    if ((v165 & 0xC0) != 0x80 || v384 != 1 || v165 != 128)
                    {
                      goto LABEL_517;
                    }

                    v245 = 1;
                  }

                  else
                  {
                    v2 = v412;
                    if ((v165 & 0xC0) != 0x80 || v384 != 2 || v165 != 128)
                    {
                      goto LABEL_517;
                    }

                    v245 = 2;
                  }
                }

                else
                {
                  v2 = v412;
                  if ((v165 & 0xC0) != 0x80 || v384 || v165 != 128)
                  {
LABEL_517:
                    outlined copy of _Glass.Variant.ID(v361, v349);
                    outlined copy of _Glass.Variant.ID(v351, v357);
                    outlined copy of _Glass.Variant.ID(v361, v349);
                    outlined copy of _Glass.Variant.ID(v351, v357);
                    outlined copy of _Glass.Variant.ID(v163, v388);
                    outlined copy of _Glass.Variant.ID(v384, v379);
                    outlined consume of _Glass.Variant.ID(v163, v388);
                    outlined consume of _Glass.Variant.ID(v384, v379);
                    goto LABEL_518;
                  }

                  v245 = 0;
                }

                outlined copy of _Glass.Variant.ID(v361, v349);
                outlined copy of _Glass.Variant.ID(v351, v357);
                outlined copy of _Glass.Variant.ID(v361, v349);
                outlined copy of _Glass.Variant.ID(v351, v357);
                outlined consume of _Glass.Variant.ID(v163, v388);
                outlined consume of _Glass.Variant.ID(v245, 0x80u);
                v2 = v412;
              }
            }

            else
            {
              if (v165 >= 0x40)
              {
                goto LABEL_517;
              }

              v296 = *(v163 + 32);
              v290 = *(v163 + 40);
              v237 = *(v163 + 48);
              v238 = *(v384 + 16);
              v286 = *(v384 + 32);
              v279 = *(v384 + 40);
              v239 = *(v384 + 48);
              v240 = *(v163 + 24);
              v300 = v240;
              v241 = *(v384 + 24);
              v309 = v241;
              *&v426[0] = *(v163 + 16);
              v304 = *&v426[0];
              BYTE8(v426[0]) = v240;
              v419 = v238;
              v420 = v241;
              outlined copy of _Glass.Variant.ID(v361, v349);
              outlined copy of _Glass.Variant.ID(v351, v357);
              outlined copy of _Glass.Variant.ID(v163, v388);
              outlined copy of _Glass.Variant.ID(v384, v379);
              outlined copy of _Glass.Variant.ID(v361, v349);
              outlined copy of _Glass.Variant.ID(v351, v357);
              outlined copy of _Glass.Variant.ID(v163, v388);
              outlined copy of _Glass.Variant.ID(v384, v379);
              outlined copy of _Glass.Variant.ID(v304, v300);
              outlined copy of _Glass.Variant.ID(v238, v309);
              v242 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
              outlined consume of _Glass.Variant.ID(v419, v420);
              outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
              if ((v242 & 1) == 0)
              {
                outlined consume of _Glass.Variant.ID(v163, v388);
                outlined consume of _Glass.Variant.ID(v384, v379);
                outlined consume of _Glass.Variant.ID(v384, v379);
                outlined consume of _Glass.Variant.ID(v163, v388);
                v2 = v412;
LABEL_518:
                outlined consume of _Glass.Variant.ID(v361, v349);
                outlined consume of _Glass.Variant.ID(v351, v357);
                outlined consume of _Glass.Variant.ID(v351, v357);
                outlined consume of _Glass.Variant.ID(v361, v349);
                v83 = v370;
                v13 = v261;
                v3 = v401;
LABEL_411:
                outlined consume of _Glass.Variant.ID(v369, v368);
                outlined consume of _Glass.Variant.ID(v83, v367);
                outlined consume of _Glass.Variant.ID(v83, v367);
                v69 = v404;
LABEL_412:
                outlined consume of _Glass.Variant.ID(v369, v368);
                v68 = v411;
LABEL_413:
                outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(v421, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
                outlined consume of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
                outlined consume of _Glass.Variant.ID(v10, v11);
                v199 = v69;
                v200 = v68;
LABEL_360:
                outlined consume of _Glass.Variant.ID(v199, v200);
                outlined destroy of GlassContainer.Entry.ModelID(v3);
                outlined consume of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
                v4 = v405;
LABEL_69:
                v6 = v413;
                goto LABEL_6;
              }

              *&v426[0] = v296;
              BYTE8(v426[0]) = v290;
              v419 = v286;
              v420 = v279;
              outlined copy of _Glass.Variant.ID(v296, v290);
              outlined copy of _Glass.Variant.ID(v286, v279);
              v243 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
              outlined consume of _Glass.Variant.ID(v419, v420);
              outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
              outlined consume of _Glass.Variant.ID(v163, v388);
              outlined consume of _Glass.Variant.ID(v384, v379);
              outlined consume of _Glass.Variant.ID(v384, v379);
              outlined consume of _Glass.Variant.ID(v163, v388);
              v2 = v412;
              if ((v243 & 1) == 0 || v237 != v239)
              {
                goto LABEL_518;
              }
            }

            *&v426[0] = v374;
            BYTE8(v426[0]) = v344;
            v419 = v339;
            v420 = v335;
            outlined copy of _Glass.Variant.ID(v374, v344);
            outlined copy of _Glass.Variant.ID(v339, v335);
            v389 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
            outlined consume of _Glass.Variant.ID(v419, v420);
            outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
            outlined consume of _Glass.Variant.ID(v361, v349);
            outlined consume of _Glass.Variant.ID(v351, v357);
            outlined consume of _Glass.Variant.ID(v351, v357);
            outlined consume of _Glass.Variant.ID(v361, v349);
            outlined consume of _Glass.Variant.ID(v369, v368);
            outlined consume of _Glass.Variant.ID(v370, v367);
            outlined consume of _Glass.Variant.ID(v370, v367);
            v3 = v401;
            v69 = v404;
            v13 = v261;
            if ((v389 & 1) == 0 || v164 != v166)
            {
              goto LABEL_412;
            }
          }

          outlined consume of _Glass.Variant.ID(v369, v368);
          v68 = v411;
          if (v79 != v82)
          {
            goto LABEL_413;
          }

LABEL_148:
          if (v28 != v31)
          {
            goto LABEL_413;
          }

          outlined consume of _Glass.Variant.ID(v10, v11);
          outlined consume of _Glass.Variant.ID(v69, v68);
          v4 = v405;
LABEL_62:
          v6 = v413;
          if (((v11 & 0x100) == 0) == (v407 & 1))
          {
            outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(v421, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
            outlined consume of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            outlined destroy of GlassContainer.Entry.ModelID(v3);
            outlined consume of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          }

          else
          {
            v428[0] = v408;
            if (v13 == v408)
            {

              outlined init with copy of AnyHashable2(v428, v426);
              outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(v421, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
              outlined consume of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined destroy of AnyHashable2(v428);

              outlined destroy of GlassContainer.Entry.ModelID(v3);
              outlined consume of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            }

            else
            {
              v406 = v4;
              v62 = v2;
              v63 = *(*v13 + 112);

              outlined init with copy of AnyHashable2(v428, v426);
              v64 = v63(v408);
              v6 = v413;
              v2 = v62;
              v4 = v406;
              v65 = v64;
              outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(v421, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
              outlined consume of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined destroy of AnyHashable2(v428);

              outlined destroy of GlassContainer.Entry.ModelID(v3);
              outlined consume of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              if ((v65 & 1) == 0)
              {
                goto LABEL_6;
              }
            }

            if (v12 == v390)
            {
              return 1;
            }
          }

          goto LABEL_6;
        }

        if (v81 >= 0x40)
        {
          goto LABEL_243;
        }

        v127 = *(v77 + 16);
        v128 = *(v77 + 24);
        v129 = *(v77 + 48);
        v130 = *(v80 + 16);
        v131 = *(v80 + 24);
        v132 = *(v80 + 48);
        v343 = *(v77 + 24);
        v398 = v127;
        v338 = *(v80 + 24);
        v334 = v130;
        if (v128 >> 6)
        {
          if (v128 >> 6 == 1)
          {
            if ((v131 & 0xC0) != 0x40)
            {
              goto LABEL_406;
            }

            v299 = *(v80 + 32);
            v303 = *(v80 + 40);
            v307 = *(v77 + 32);
            v312 = *(v77 + 40);
            v349 = *(v369 + 40);
            v351 = *(v370 + 32);
            v357 = *(v370 + 40);
            v361 = *(v369 + 32);
            *&v426[0] = *(v77 + 16);
            BYTE8(v426[0]) = v128 & 0x3F;
            v419 = v130;
            v420 = v131 & 0x3F;
            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v370, v367);
            outlined copy of _Glass.Variant.ID(v77, v383);
            outlined copy of _Glass.Variant.ID(v373, v378);
            outlined copy of _Glass.Variant.ID(v398, v343);
            outlined copy of _Glass.Variant.ID(v334, v338);
            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v370, v367);
            outlined copy of _Glass.Variant.ID(v77, v383);
            outlined copy of _Glass.Variant.ID(v373, v378);
            outlined copy of _Glass.Variant.ID(v398, v343);
            outlined copy of _Glass.Variant.ID(v334, v338);
            v322 = specialized static Material.ID.== infix(_:_:)(v426, &v419);
            outlined consume of _Glass.Variant.ID(v398, v343);
            outlined consume of _Glass.Variant.ID(v334, v338);
            outlined consume of _Glass.Variant.ID(v334, v338);
            outlined consume of _Glass.Variant.ID(v398, v343);
            v133 = v77;
            if ((v322 & 1) == 0)
            {
              goto LABEL_408;
            }
          }

          else
          {
            if (v127 | v128 ^ 0x80)
            {
              v188 = v131 & 0xC0;
              if (*(v77 + 24) == 128 && v127 == 1)
              {
                if (v188 != 128 || v130 != 1 || v131 != 128)
                {
                  goto LABEL_406;
                }

                v299 = *(v80 + 32);
                v303 = *(v80 + 40);
                v307 = *(v77 + 32);
                v312 = *(v77 + 40);
                v349 = *(v369 + 40);
                v351 = *(v370 + 32);
                v357 = *(v370 + 40);
                v361 = *(v369 + 32);
                v190 = 1;
              }

              else
              {
                if (v188 != 128 || v130 != 2 || v131 != 128)
                {
                  goto LABEL_406;
                }

                v299 = *(v80 + 32);
                v303 = *(v80 + 40);
                v307 = *(v77 + 32);
                v312 = *(v77 + 40);
                v349 = *(v369 + 40);
                v351 = *(v370 + 32);
                v357 = *(v370 + 40);
                v361 = *(v369 + 32);
                v190 = 2;
              }

              v340 = v190;
            }

            else
            {
              if ((v131 & 0xC0) != 0x80 || v130 || v131 != 128)
              {
LABEL_406:
                outlined copy of _Glass.Variant.ID(v369, v368);
                outlined copy of _Glass.Variant.ID(v370, v367);
                outlined copy of _Glass.Variant.ID(v77, v383);
                outlined copy of _Glass.Variant.ID(v373, v378);
                outlined copy of _Glass.Variant.ID(v369, v368);
                outlined copy of _Glass.Variant.ID(v370, v367);
                outlined copy of _Glass.Variant.ID(v77, v383);
                outlined copy of _Glass.Variant.ID(v373, v378);
                outlined copy of _Glass.Variant.ID(v398, v343);
                outlined copy of _Glass.Variant.ID(v334, v338);
                outlined consume of _Glass.Variant.ID(v398, v343);
                v207 = v334;
                v208 = v338;
                goto LABEL_407;
              }

              v299 = *(v80 + 32);
              v303 = *(v80 + 40);
              v307 = *(v77 + 32);
              v312 = *(v77 + 40);
              v349 = *(v369 + 40);
              v351 = *(v370 + 32);
              v357 = *(v370 + 40);
              v361 = *(v369 + 32);
              v340 = 0;
            }

            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v370, v367);
            outlined copy of _Glass.Variant.ID(v77, v383);
            outlined copy of _Glass.Variant.ID(v373, v378);
            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v370, v367);
            outlined copy of _Glass.Variant.ID(v77, v383);
            outlined copy of _Glass.Variant.ID(v373, v378);
            outlined consume of _Glass.Variant.ID(v398, v343);
            outlined consume of _Glass.Variant.ID(v340, 0x80u);
          }
        }

        else
        {
          if (v131 >= 0x40)
          {
            goto LABEL_406;
          }

          v299 = *(v80 + 32);
          v303 = *(v80 + 40);
          v307 = *(v77 + 32);
          v312 = *(v77 + 40);
          v349 = *(v369 + 40);
          v351 = *(v370 + 32);
          v357 = *(v370 + 40);
          v361 = *(v369 + 32);
          v278 = *(v127 + 40);
          v182 = *(v127 + 48);
          v284 = *(v127 + 32);
          v329 = *(v130 + 16);
          v274 = *(v130 + 32);
          v270 = *(v130 + 40);
          v183 = *(v130 + 48);
          v184 = *(v127 + 24);
          v293 = v184;
          v185 = *(v130 + 24);
          v317 = v185;
          *&v426[0] = *(v127 + 16);
          v289 = *&v426[0];
          BYTE8(v426[0]) = v184;
          v419 = v329;
          v420 = v185;
          v186 = v127;
          outlined copy of _Glass.Variant.ID(v369, v368);
          outlined copy of _Glass.Variant.ID(v370, v367);
          outlined copy of _Glass.Variant.ID(v77, v383);
          outlined copy of _Glass.Variant.ID(v373, v378);
          outlined copy of _Glass.Variant.ID(v186, v343);
          outlined copy of _Glass.Variant.ID(v334, v338);
          outlined copy of _Glass.Variant.ID(v369, v368);
          outlined copy of _Glass.Variant.ID(v370, v367);
          outlined copy of _Glass.Variant.ID(v77, v383);
          outlined copy of _Glass.Variant.ID(v373, v378);
          outlined copy of _Glass.Variant.ID(v398, v343);
          outlined copy of _Glass.Variant.ID(v334, v338);
          outlined copy of _Glass.Variant.ID(v289, v293);
          outlined copy of _Glass.Variant.ID(v329, v317);
          v187 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
          outlined consume of _Glass.Variant.ID(v419, v420);
          outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
          if ((v187 & 1) == 0)
          {
            outlined consume of _Glass.Variant.ID(v398, v343);
            outlined consume of _Glass.Variant.ID(v334, v338);
            outlined consume of _Glass.Variant.ID(v334, v338);
            v207 = v398;
            v208 = v343;
LABEL_407:
            outlined consume of _Glass.Variant.ID(v207, v208);
            v133 = v77;
LABEL_408:
            outlined consume of _Glass.Variant.ID(v133, v383);
            v205 = v378;
            outlined consume of _Glass.Variant.ID(v373, v378);
            v206 = v373;
LABEL_409:
            outlined consume of _Glass.Variant.ID(v206, v205);
            v201 = v133;
            v202 = v383;
LABEL_410:
            outlined consume of _Glass.Variant.ID(v201, v202);
            v83 = v370;
            goto LABEL_411;
          }

          *&v426[0] = v284;
          BYTE8(v426[0]) = v278;
          v419 = v274;
          v420 = v270;
          outlined copy of _Glass.Variant.ID(v284, v278);
          outlined copy of _Glass.Variant.ID(v274, v270);
          v330 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
          outlined consume of _Glass.Variant.ID(v419, v420);
          outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
          outlined consume of _Glass.Variant.ID(v398, v343);
          outlined consume of _Glass.Variant.ID(v334, v338);
          outlined consume of _Glass.Variant.ID(v334, v338);
          outlined consume of _Glass.Variant.ID(v398, v343);
          v133 = v77;
          if ((v330 & 1) == 0 || v182 != v183)
          {
            goto LABEL_408;
          }
        }

        v403 = v3;
        v319 = v10;
        v332 = v11;
        v263 = v13;
        if (v312 >> 6)
        {
          if (v312 >> 6 == 1)
          {
            v204 = v303;
            if ((v303 & 0xC0) != 0x40)
            {
              goto LABEL_453;
            }

            *&v426[0] = v307;
            BYTE8(v426[0]) = v312 & 0x3F;
            v419 = v299;
            v420 = v303 & 0x3F;
            outlined copy of _Glass.Variant.ID(v299, v303);
            outlined copy of _Glass.Variant.ID(v307, v312);
            outlined copy of _Glass.Variant.ID(v299, v303);
            outlined copy of _Glass.Variant.ID(v307, v312);
            v345 = specialized static Material.ID.== infix(_:_:)(v426, &v419);
            outlined consume of _Glass.Variant.ID(v307, v312);
            outlined consume of _Glass.Variant.ID(v299, v303);
            outlined consume of _Glass.Variant.ID(v299, v303);
            outlined consume of _Glass.Variant.ID(v307, v312);
            v133 = v387;
            outlined consume of _Glass.Variant.ID(v387, v383);
            v205 = v378;
            outlined consume of _Glass.Variant.ID(v373, v378);
            v206 = v373;
            if ((v345 & 1) == 0)
            {
              goto LABEL_409;
            }

            goto LABEL_503;
          }

          v234 = v2;
          if (v307 | v312 ^ 0x80)
          {
            if (v312 == 128 && v307 == 1)
            {
              v231 = v303;
              v232 = v299;
              if ((v303 & 0xC0) != 0x80 || v299 != 1 || v303 != 128)
              {
                goto LABEL_454;
              }

              v236 = 1;
            }

            else
            {
              v231 = v303;
              v232 = v299;
              if ((v303 & 0xC0) != 0x80 || v299 != 2 || v303 != 128)
              {
                goto LABEL_454;
              }

              v236 = 2;
            }
          }

          else
          {
            v231 = v303;
            v232 = v299;
            if ((v303 & 0xC0) != 0x80 || v299 || v303 != 128)
            {
              goto LABEL_454;
            }

            v236 = 0;
          }

          outlined copy of _Glass.Variant.ID(v236, 0x80u);
          outlined consume of _Glass.Variant.ID(v307, v312);
          outlined consume of _Glass.Variant.ID(v236, 0x80u);
          outlined consume of _Glass.Variant.ID(v307, v312);
          v2 = v234;
          v133 = v77;
        }

        else
        {
          v204 = v303;
          if (v303 >= 0x40)
          {
LABEL_453:
            outlined copy of _Glass.Variant.ID(v307, v312);
            v231 = v204;
            v232 = v299;
LABEL_454:
            v233 = v231;
            outlined copy of _Glass.Variant.ID(v232, v231);
            outlined consume of _Glass.Variant.ID(v307, v312);
            outlined consume of _Glass.Variant.ID(v232, v233);
            goto LABEL_455;
          }

          v346 = *(v307 + 32);
          v341 = *(v307 + 40);
          v224 = *(v307 + 48);
          v226 = *(v299 + 16);
          v336 = *(v299 + 32);
          v295 = *(v299 + 40);
          v227 = *(v299 + 48);
          v228 = *(v307 + 24);
          v229 = *(v299 + 24);
          *&v426[0] = *(v307 + 16);
          v225 = *&v426[0];
          BYTE8(v426[0]) = v228;
          v419 = v226;
          v420 = v229;
          outlined copy of _Glass.Variant.ID(v299, v303);
          outlined copy of _Glass.Variant.ID(v307, v312);
          outlined copy of _Glass.Variant.ID(v299, v303);
          outlined copy of _Glass.Variant.ID(v307, v312);
          outlined copy of _Glass.Variant.ID(v225, v228);
          outlined copy of _Glass.Variant.ID(v226, v229);
          v230 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
          outlined consume of _Glass.Variant.ID(v419, v420);
          outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
          if ((v230 & 1) == 0)
          {
            outlined consume of _Glass.Variant.ID(v307, v312);
            outlined consume of _Glass.Variant.ID(v299, v303);
            outlined consume of _Glass.Variant.ID(v299, v303);
            outlined consume of _Glass.Variant.ID(v307, v312);
            v2 = v412;
LABEL_455:
            v133 = v387;
            v13 = v263;
            v10 = v319;
            LOBYTE(v11) = v332;
            v3 = v403;
            goto LABEL_408;
          }

          *&v426[0] = v346;
          BYTE8(v426[0]) = v341;
          v419 = v336;
          v420 = v295;
          outlined copy of _Glass.Variant.ID(v346, v341);
          outlined copy of _Glass.Variant.ID(v336, v295);
          v347 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
          outlined consume of _Glass.Variant.ID(v419, v420);
          outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
          outlined consume of _Glass.Variant.ID(v307, v312);
          outlined consume of _Glass.Variant.ID(v299, v303);
          outlined consume of _Glass.Variant.ID(v299, v303);
          outlined consume of _Glass.Variant.ID(v307, v312);
          v2 = v412;
          v133 = v387;
          v13 = v263;
          v10 = v319;
          LOWORD(v11) = v332;
          v3 = v403;
          if ((v347 & 1) == 0 || v224 != v227)
          {
            goto LABEL_408;
          }
        }

        outlined consume of _Glass.Variant.ID(v133, v383);
        v205 = v378;
        outlined consume of _Glass.Variant.ID(v373, v378);
        v206 = v373;
LABEL_503:
        outlined consume of _Glass.Variant.ID(v206, v205);
        outlined consume of _Glass.Variant.ID(v133, v383);
        v83 = v370;
        if (v129 != v132)
        {
          goto LABEL_411;
        }

        goto LABEL_237;
      }

      if (v30 >= 0x40)
      {
        goto LABEL_106;
      }

      v49 = *(v26 + 16);
      v50 = *(v26 + 24);
      v51 = *(v26 + 48);
      v52 = *(v29 + 16);
      v53 = *(v29 + 24);
      v54 = *(v29 + 48);
      v376 = *(v10 + 24);
      v381 = *(v10 + 16);
      v385 = *(v22 + 24);
      v372 = *(v22 + 16);
      v360 = *(v26 + 24);
      v392 = v49;
      v356 = *(v29 + 24);
      v350 = v52;
      if (v50 >> 6)
      {
        if (v50 >> 6 == 1)
        {
          if ((v53 & 0xC0) != 0x40)
          {
            goto LABEL_166;
          }

          v342 = *(v26 + 32);
          v348 = *(v29 + 32);
          v333 = *(v29 + 40);
          v337 = *(v26 + 40);
          v369 = *(v10 + 32);
          v370 = *(v22 + 32);
          v367 = *(v22 + 40);
          v368 = *(v10 + 40);
          v407 = v3->i8[9];
          v408 = v3[1].i64[0];
          v390 = v3[1].i64[1];
          v419 = *(v26 + 16);
          v420 = v50 & 0x3F;
          v417 = v52;
          v418 = v53 & 0x3F;
          v55 = v29;
          v56 = v27;
          v57 = v30;
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined copy of _Glass.Variant.ID(v26, v56);
          outlined copy of _Glass.Variant.ID(v55, v57);
          outlined copy of _Glass.Variant.ID(v392, v360);
          outlined copy of _Glass.Variant.ID(v350, v356);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined copy of _Glass.Variant.ID(v404, v411);
          outlined copy of _Glass.Variant.ID(v10, v11);
          outlined copy of _Glass.Variant.ID(v26, v376);
          outlined copy of _Glass.Variant.ID(v55, v57);
          outlined copy of _Glass.Variant.ID(v392, v360);
          outlined copy of _Glass.Variant.ID(v350, v356);
          v320 = specialized static Material.ID.== infix(_:_:)(&v419, &v417);
          outlined consume of _Glass.Variant.ID(v392, v360);
          outlined consume of _Glass.Variant.ID(v350, v356);
          v58 = v376;
          outlined consume of _Glass.Variant.ID(v350, v356);
          outlined consume of _Glass.Variant.ID(v392, v360);
          if ((v320 & 1) == 0)
          {
            goto LABEL_356;
          }
        }

        else
        {
          if (v49 | v50 ^ 0x80)
          {
            v92 = v53 & 0xC0;
            if (*(v26 + 24) == 128 && v49 == 1)
            {
              if (v92 != 128 || v52 != 1 || v53 != 128)
              {
                goto LABEL_166;
              }

              v342 = *(v26 + 32);
              v348 = *(v29 + 32);
              v333 = *(v29 + 40);
              v337 = *(v26 + 40);
              v369 = *(v10 + 32);
              v370 = *(v22 + 32);
              v367 = *(v22 + 40);
              v368 = *(v10 + 40);
              v407 = v3->i8[9];
              v408 = v3[1].i64[0];
              v390 = v3[1].i64[1];
              v94 = *(v10 + 16);
              v95 = *(v10 + 24);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              v96 = v95;
              outlined copy of _Glass.Variant.ID(v94, v95);
              outlined copy of _Glass.Variant.ID(v29, v385);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              v97 = 1;
            }

            else
            {
              if (v92 != 128 || v52 != 2 || v53 != 128)
              {
                goto LABEL_166;
              }

              v342 = *(v26 + 32);
              v348 = *(v29 + 32);
              v333 = *(v29 + 40);
              v337 = *(v26 + 40);
              v369 = *(v10 + 32);
              v370 = *(v22 + 32);
              v367 = *(v22 + 40);
              v368 = *(v10 + 40);
              v407 = v3->i8[9];
              v408 = v3[1].i64[0];
              v390 = v3[1].i64[1];
              v102 = *(v10 + 16);
              v103 = *(v10 + 24);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              v96 = v103;
              outlined copy of _Glass.Variant.ID(v102, v103);
              outlined copy of _Glass.Variant.ID(v29, v385);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              v97 = 2;
            }
          }

          else
          {
            if ((v53 & 0xC0) != 0x80 || v52 || v53 != 128)
            {
LABEL_166:
              v107 = *(v22 + 16);
              v108 = *(v10 + 24);
              v109 = v30;
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined copy of _Glass.Variant.ID(v26, v108);
              outlined copy of _Glass.Variant.ID(v107, v109);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined copy of _Glass.Variant.ID(v404, v411);
              outlined copy of _Glass.Variant.ID(v10, v11);
              outlined copy of _Glass.Variant.ID(v26, v108);
              outlined copy of _Glass.Variant.ID(v107, v109);
              outlined copy of _Glass.Variant.ID(v392, v360);
              outlined copy of _Glass.Variant.ID(v350, v356);
              v58 = v376;
              outlined consume of _Glass.Variant.ID(v392, v360);
              outlined consume of _Glass.Variant.ID(v350, v356);
              goto LABEL_356;
            }

            v342 = *(v26 + 32);
            v348 = *(v29 + 32);
            v333 = *(v29 + 40);
            v337 = *(v26 + 40);
            v369 = *(v10 + 32);
            v370 = *(v22 + 32);
            v367 = *(v22 + 40);
            v368 = *(v10 + 40);
            v407 = v3->i8[9];
            v408 = v3[1].i64[0];
            v390 = v3[1].i64[1];
            v100 = *(v10 + 16);
            v101 = *(v10 + 24);
            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            v96 = v101;
            outlined copy of _Glass.Variant.ID(v100, v101);
            outlined copy of _Glass.Variant.ID(v29, v385);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
            v97 = 0;
          }

          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined copy of _Glass.Variant.ID(v404, v411);
          outlined copy of _Glass.Variant.ID(v10, v11);
          outlined copy of _Glass.Variant.ID(v381, v96);
          outlined copy of _Glass.Variant.ID(v29, v385);
          outlined consume of _Glass.Variant.ID(v392, v360);
          outlined consume of _Glass.Variant.ID(v97, 0x80u);
        }

LABEL_160:
        if (v337 >> 6)
        {
          v105 = v342;
          v104 = v348;
          v106 = v333;
          if (v337 >> 6 == 1)
          {
            if ((v333 & 0xC0) != 0x40)
            {
              goto LABEL_226;
            }

            *&v426[0] = v342;
            BYTE8(v426[0]) = v337 & 0x3F;
            v419 = v348;
            v420 = v333 & 0x3F;
            outlined copy of _Glass.Variant.ID(v342, v337);
            outlined copy of _Glass.Variant.ID(v348, v333);
            outlined copy of _Glass.Variant.ID(v342, v337);
            outlined copy of _Glass.Variant.ID(v348, v333);
            v396 = specialized static Material.ID.== infix(_:_:)(v426, &v419);
            outlined consume of _Glass.Variant.ID(v342, v337);
            outlined consume of _Glass.Variant.ID(v348, v333);
            outlined consume of _Glass.Variant.ID(v348, v333);
            outlined consume of _Glass.Variant.ID(v342, v337);
            outlined consume of _Glass.Variant.ID(v381, v376);
            outlined consume of _Glass.Variant.ID(v372, v385);
            outlined consume of _Glass.Variant.ID(v372, v385);
            outlined consume of _Glass.Variant.ID(v381, v376);
            v37 = v411;
            v22 = v404;
            v2 = v412;
            if ((v396 & 1) == 0 || v51 != v54)
            {
              goto LABEL_359;
            }

            goto LABEL_101;
          }

          if (v342 | v337 ^ 0x80)
          {
            v124 = v333 & 0xC0;
            if (v337 == 128 && v342 == 1)
            {
              if (v124 != 128 || v348 != 1 || v333 != 128)
              {
                goto LABEL_226;
              }

              v126 = 1;
            }

            else
            {
              if (v124 != 128 || v348 != 2 || v333 != 128)
              {
                goto LABEL_226;
              }

              v126 = 2;
            }
          }

          else
          {
            if ((v333 & 0xC0) != 0x80 || v348 || v333 != 128)
            {
LABEL_226:
              outlined copy of _Glass.Variant.ID(v105, v337);
              outlined copy of _Glass.Variant.ID(v104, v106);
              outlined consume of _Glass.Variant.ID(v105, v337);
              v150 = v104;
              v151 = v106;
              goto LABEL_355;
            }

            v126 = 0;
          }

          v149 = v411;
          outlined consume of _Glass.Variant.ID(v342, v337);
          outlined consume of _Glass.Variant.ID(v126, 0x80u);
          v58 = v376;
          outlined consume of _Glass.Variant.ID(v381, v376);
          outlined consume of _Glass.Variant.ID(v372, v385);
          outlined consume of _Glass.Variant.ID(v372, v385);
LABEL_224:
          outlined consume of _Glass.Variant.ID(v381, v58);
          v22 = v404;
          v37 = v149;
          v2 = v412;
          if (v51 != v54)
          {
            goto LABEL_359;
          }

          goto LABEL_101;
        }

        v106 = v333;
        v105 = v342;
        v104 = v348;
        if (v333 >= 0x40)
        {
          goto LABEL_226;
        }

        v110 = *(v342 + 16);
        v111 = *(v342 + 24);
        v112 = *(v342 + 48);
        v113 = *(v348 + 16);
        v114 = *(v348 + 24);
        v115 = *(v348 + 48);
        v397 = *(v342 + 24);
        v362 = v113;
        v358 = *(v348 + 24);
        if (v111 >> 6)
        {
          if (v111 >> 6 == 1)
          {
            if ((v114 & 0xC0) != 0x40)
            {
              goto LABEL_388;
            }

            v306 = *(v342 + 32);
            v311 = *(v348 + 32);
            v302 = *(v348 + 40);
            v298 = *(v342 + 40);
            *&v426[0] = *(v342 + 16);
            BYTE8(v426[0]) = v111 & 0x3F;
            v419 = v113;
            v420 = v114 & 0x3F;
            v116 = v111;
            v117 = v110;
            v118 = v113;
            outlined copy of _Glass.Variant.ID(v342, v337);
            outlined copy of _Glass.Variant.ID(v348, v333);
            outlined copy of _Glass.Variant.ID(v117, v116);
            outlined copy of _Glass.Variant.ID(v118, v358);
            outlined copy of _Glass.Variant.ID(v342, v337);
            outlined copy of _Glass.Variant.ID(v348, v333);
            v119 = v117;
            outlined copy of _Glass.Variant.ID(v117, v397);
            outlined copy of _Glass.Variant.ID(v362, v358);
            v120 = specialized static Material.ID.== infix(_:_:)(v426, &v419);
            outlined consume of _Glass.Variant.ID(v117, v397);
            outlined consume of _Glass.Variant.ID(v362, v358);
            v121 = v348;
            outlined consume of _Glass.Variant.ID(v362, v358);
            v122 = v119;
            v123 = v333;
            outlined consume of _Glass.Variant.ID(v122, v397);
            if ((v120 & 1) == 0)
            {
              goto LABEL_389;
            }
          }

          else
          {
            if (v110 | v111 ^ 0x80)
            {
              v179 = v114 & 0xC0;
              if (*(v342 + 24) == 128 && v110 == 1)
              {
                if (v179 != 128 || v113 != 1 || v114 != 128)
                {
                  goto LABEL_388;
                }

                v353 = *(v342 + 16);
                v306 = *(v342 + 32);
                v311 = *(v348 + 32);
                v302 = *(v348 + 40);
                v298 = *(v342 + 40);
                v181 = 1;
              }

              else
              {
                if (v179 != 128 || v113 != 2 || v114 != 128)
                {
                  goto LABEL_388;
                }

                v353 = *(v342 + 16);
                v306 = *(v342 + 32);
                v311 = *(v348 + 32);
                v302 = *(v348 + 40);
                v298 = *(v342 + 40);
                v181 = 2;
              }

              v363 = v181;
            }

            else
            {
              if ((v114 & 0xC0) != 0x80 || v113 || v114 != 128)
              {
LABEL_388:
                v354 = *(v342 + 16);
                outlined copy of _Glass.Variant.ID(v342, v337);
                v123 = v333;
                outlined copy of _Glass.Variant.ID(v348, v333);
                outlined copy of _Glass.Variant.ID(v342, v337);
                outlined copy of _Glass.Variant.ID(v348, v333);
                outlined copy of _Glass.Variant.ID(v354, v397);
                outlined copy of _Glass.Variant.ID(v362, v358);
                v121 = v348;
                outlined consume of _Glass.Variant.ID(v354, v397);
                outlined consume of _Glass.Variant.ID(v362, v358);
LABEL_389:
                outlined consume of _Glass.Variant.ID(v342, v337);
                outlined consume of _Glass.Variant.ID(v121, v123);
LABEL_390:
                outlined consume of _Glass.Variant.ID(v121, v123);
                v151 = v337;
                v150 = v342;
                goto LABEL_355;
              }

              v353 = *(v342 + 16);
              v306 = *(v342 + 32);
              v311 = *(v348 + 32);
              v302 = *(v348 + 40);
              v298 = *(v342 + 40);
              v363 = 0;
            }

            outlined copy of _Glass.Variant.ID(v342, v337);
            outlined copy of _Glass.Variant.ID(v348, v333);
            outlined copy of _Glass.Variant.ID(v342, v337);
            outlined copy of _Glass.Variant.ID(v348, v333);
            outlined consume of _Glass.Variant.ID(v353, v397);
            outlined consume of _Glass.Variant.ID(v363, 0x80u);
          }
        }

        else
        {
          if (v114 >= 0x40)
          {
            goto LABEL_388;
          }

          v306 = *(v342 + 32);
          v311 = *(v348 + 32);
          v302 = *(v348 + 40);
          v283 = *(v110 + 32);
          v277 = *(v110 + 40);
          v172 = *(v110 + 48);
          v298 = *(v342 + 40);
          v327 = *(v113 + 16);
          v273 = *(v113 + 32);
          v269 = *(v113 + 40);
          v173 = *(v113 + 48);
          v174 = *(v110 + 24);
          v288 = v174;
          v175 = *(v113 + 24);
          v316 = v175;
          *&v426[0] = *(v110 + 16);
          v292 = *&v426[0];
          BYTE8(v426[0]) = v174;
          v419 = v327;
          v420 = v175;
          v176 = v110;
          v352 = v110;
          v177 = v113;
          outlined copy of _Glass.Variant.ID(v342, v337);
          outlined copy of _Glass.Variant.ID(v348, v333);
          outlined copy of _Glass.Variant.ID(v176, v397);
          outlined copy of _Glass.Variant.ID(v177, v358);
          outlined copy of _Glass.Variant.ID(v342, v337);
          outlined copy of _Glass.Variant.ID(v348, v333);
          outlined copy of _Glass.Variant.ID(v352, v397);
          outlined copy of _Glass.Variant.ID(v177, v358);
          outlined copy of _Glass.Variant.ID(v292, v288);
          outlined copy of _Glass.Variant.ID(v327, v316);
          v178 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
          outlined consume of _Glass.Variant.ID(v419, v420);
          outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
          if ((v178 & 1) == 0)
          {
            outlined consume of _Glass.Variant.ID(v352, v397);
            outlined consume of _Glass.Variant.ID(v362, v358);
            outlined consume of _Glass.Variant.ID(v362, v358);
            outlined consume of _Glass.Variant.ID(v352, v397);
            v123 = v333;
            v121 = v348;
            goto LABEL_389;
          }

          *&v426[0] = v283;
          BYTE8(v426[0]) = v277;
          v419 = v273;
          v420 = v269;
          outlined copy of _Glass.Variant.ID(v283, v277);
          outlined copy of _Glass.Variant.ID(v273, v269);
          v328 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
          outlined consume of _Glass.Variant.ID(v419, v420);
          outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
          outlined consume of _Glass.Variant.ID(v352, v397);
          outlined consume of _Glass.Variant.ID(v362, v358);
          outlined consume of _Glass.Variant.ID(v362, v358);
          outlined consume of _Glass.Variant.ID(v352, v397);
          v123 = v333;
          v121 = v348;
          if ((v328 & 1) == 0 || v172 != v173)
          {
            goto LABEL_389;
          }
        }

        v402 = v3;
        v318 = v10;
        v331 = v11;
        v262 = v13;
        if (v298 >> 6)
        {
          if (v298 >> 6 == 1)
          {
            v203 = v302;
            if ((v302 & 0xC0) != 0x40)
            {
              goto LABEL_435;
            }

            *&v426[0] = v306;
            BYTE8(v426[0]) = v298 & 0x3F;
            v419 = v311;
            v420 = v302 & 0x3F;
            outlined copy of _Glass.Variant.ID(v311, v302);
            outlined copy of _Glass.Variant.ID(v306, v298);
            outlined copy of _Glass.Variant.ID(v311, v302);
            outlined copy of _Glass.Variant.ID(v306, v298);
            v364 = specialized static Material.ID.== infix(_:_:)(v426, &v419);
            outlined consume of _Glass.Variant.ID(v306, v298);
            outlined consume of _Glass.Variant.ID(v311, v302);
            outlined consume of _Glass.Variant.ID(v311, v302);
            outlined consume of _Glass.Variant.ID(v306, v298);
            outlined consume of _Glass.Variant.ID(v342, v337);
            v121 = v348;
            v123 = v333;
            outlined consume of _Glass.Variant.ID(v348, v333);
            if ((v364 & 1) == 0)
            {
              goto LABEL_390;
            }

            goto LABEL_491;
          }

          if (v306 | v298 ^ 0x80)
          {
            v221 = v298;
            if (v298 == 128 && v306 == 1)
            {
              v217 = v302;
              if ((v302 & 0xC0) != 0x80 || v311 != 1 || v302 != 128)
              {
                goto LABEL_436;
              }

              v223 = 1;
            }

            else
            {
              v217 = v302;
              if ((v302 & 0xC0) != 0x80 || v311 != 2 || v302 != 128)
              {
                goto LABEL_436;
              }

              v223 = 2;
            }
          }

          else
          {
            v217 = v302;
            if ((v302 & 0xC0) != 0x80 || v311 || v302 != 128)
            {
              goto LABEL_436;
            }

            v221 = v298;
            v223 = 0;
          }

          outlined copy of _Glass.Variant.ID(v223, 0x80u);
          outlined consume of _Glass.Variant.ID(v306, v221);
          outlined consume of _Glass.Variant.ID(v223, 0x80u);
          outlined consume of _Glass.Variant.ID(v306, v221);
          v123 = v333;
          v121 = v348;
        }

        else
        {
          v203 = v302;
          if (v302 >= 0x40)
          {
LABEL_435:
            v216 = v203;
            outlined copy of _Glass.Variant.ID(v306, v298);
            v217 = v216;
LABEL_436:
            v218 = v217;
            outlined copy of _Glass.Variant.ID(v311, v217);
            outlined consume of _Glass.Variant.ID(v306, v298);
            v219 = v311;
            v220 = v218;
            goto LABEL_437;
          }

          v365 = *(v306 + 32);
          v359 = *(v306 + 40);
          v209 = *(v306 + 48);
          v211 = *(v311 + 16);
          v355 = *(v311 + 32);
          v294 = *(v311 + 40);
          v212 = *(v311 + 48);
          v213 = *(v306 + 24);
          v214 = *(v311 + 24);
          *&v426[0] = *(v306 + 16);
          v210 = *&v426[0];
          BYTE8(v426[0]) = v213;
          v419 = v211;
          v420 = v214;
          outlined copy of _Glass.Variant.ID(v311, v302);
          outlined copy of _Glass.Variant.ID(v306, v298);
          outlined copy of _Glass.Variant.ID(v311, v302);
          outlined copy of _Glass.Variant.ID(v306, v298);
          outlined copy of _Glass.Variant.ID(v210, v213);
          outlined copy of _Glass.Variant.ID(v211, v214);
          v215 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
          outlined consume of _Glass.Variant.ID(v419, v420);
          outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
          if ((v215 & 1) == 0)
          {
            outlined consume of _Glass.Variant.ID(v306, v298);
            outlined consume of _Glass.Variant.ID(v311, v302);
            outlined consume of _Glass.Variant.ID(v311, v302);
            v219 = v306;
            v220 = v298;
LABEL_437:
            outlined consume of _Glass.Variant.ID(v219, v220);
            v123 = v333;
            v121 = v348;
            v13 = v262;
            v10 = v318;
            LOBYTE(v11) = v331;
            v3 = v402;
            goto LABEL_389;
          }

          *&v426[0] = v365;
          BYTE8(v426[0]) = v359;
          v419 = v355;
          v420 = v294;
          outlined copy of _Glass.Variant.ID(v365, v359);
          outlined copy of _Glass.Variant.ID(v355, v294);
          v366 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
          outlined consume of _Glass.Variant.ID(v419, v420);
          outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
          outlined consume of _Glass.Variant.ID(v306, v298);
          outlined consume of _Glass.Variant.ID(v311, v302);
          outlined consume of _Glass.Variant.ID(v311, v302);
          outlined consume of _Glass.Variant.ID(v306, v298);
          v123 = v333;
          v121 = v348;
          v13 = v262;
          v10 = v318;
          LOWORD(v11) = v331;
          v3 = v402;
          if ((v366 & 1) == 0 || v209 != v212)
          {
            goto LABEL_389;
          }
        }

        outlined consume of _Glass.Variant.ID(v342, v337);
        outlined consume of _Glass.Variant.ID(v121, v123);
LABEL_491:
        v246 = v121;
        v149 = v411;
        outlined consume of _Glass.Variant.ID(v246, v123);
        outlined consume of _Glass.Variant.ID(v342, v337);
        v58 = v376;
        outlined consume of _Glass.Variant.ID(v381, v376);
        outlined consume of _Glass.Variant.ID(v372, v385);
        outlined consume of _Glass.Variant.ID(v372, v385);
        if (v112 != v115)
        {
          goto LABEL_357;
        }

        goto LABEL_224;
      }

      if (v53 >= 0x40)
      {
        goto LABEL_166;
      }

      v310 = *(v49 + 16);
      v297 = *(v49 + 32);
      v88 = *(v49 + 48);
      v314 = *(v52 + 16);
      v321 = *(v52 + 24);
      v301 = *(v52 + 32);
      v305 = *(v49 + 24);
      v291 = *(v52 + 40);
      v89 = *(v52 + 48);
      if (v305 >> 6)
      {
        if (v305 >> 6 == 1)
        {
          if ((v321 & 0xC0) != 0x40)
          {
            goto LABEL_260;
          }

          v287 = *(v49 + 40);
          v342 = *(v26 + 32);
          v348 = *(v29 + 32);
          v333 = *(v29 + 40);
          v337 = *(v26 + 40);
          v369 = *(v10 + 32);
          v370 = *(v22 + 32);
          v367 = *(v22 + 40);
          v368 = *(v10 + 40);
          v407 = v3->i8[9];
          v408 = v3[1].i64[0];
          v390 = v3[1].i64[1];
          v419 = *(v49 + 16);
          v420 = v305 & 0x3F;
          v417 = v314;
          v418 = v321 & 0x3F;
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined copy of _Glass.Variant.ID(v26, v376);
          outlined copy of _Glass.Variant.ID(v372, v385);
          outlined copy of _Glass.Variant.ID(v392, v360);
          outlined copy of _Glass.Variant.ID(v350, v356);
          outlined copy of _Glass.Variant.ID(v310, v305);
          outlined copy of _Glass.Variant.ID(v314, v321);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined copy of _Glass.Variant.ID(v22, v411);
          outlined copy of _Glass.Variant.ID(v10, v11);
          outlined copy of _Glass.Variant.ID(v26, v376);
          outlined copy of _Glass.Variant.ID(v372, v385);
          outlined copy of _Glass.Variant.ID(v392, v360);
          outlined copy of _Glass.Variant.ID(v350, v356);
          outlined copy of _Glass.Variant.ID(v310, v305);
          outlined copy of _Glass.Variant.ID(v314, v321);
          v280 = specialized static Material.ID.== infix(_:_:)(&v419, &v417);
          outlined consume of _Glass.Variant.ID(v310, v305);
          outlined consume of _Glass.Variant.ID(v314, v321);
          v90 = v360;
          outlined consume of _Glass.Variant.ID(v314, v321);
          v91 = v392;
          outlined consume of _Glass.Variant.ID(v310, v305);
          if ((v280 & 1) == 0)
          {
            goto LABEL_353;
          }
        }

        else
        {
          if (v310 | v305 ^ 0x80)
          {
            if (*(v49 + 24) == 128 && v310 == 1)
            {
              if ((v321 & 0xC0) != 0x80 || v314 != 1 || v321 != 128)
              {
                goto LABEL_260;
              }

              v287 = *(v49 + 40);
              v342 = *(v26 + 32);
              v348 = *(v29 + 32);
              v333 = *(v29 + 40);
              v337 = *(v26 + 40);
              v369 = *(v10 + 32);
              v370 = *(v22 + 32);
              v367 = *(v22 + 40);
              v368 = *(v10 + 40);
              v407 = v3->i8[9];
              v408 = v3[1].i64[0];
              v390 = v3[1].i64[1];
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined copy of _Glass.Variant.ID(v26, v376);
              v144 = v29;
              v145 = v385;
              outlined copy of _Glass.Variant.ID(v372, v385);
              v146 = v360;
              outlined copy of _Glass.Variant.ID(v392, v360);
              v147 = v350;
              outlined copy of _Glass.Variant.ID(v350, v356);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              v148 = 1;
            }

            else
            {
              if ((v321 & 0xC0) != 0x80 || v314 != 2 || v321 != 128)
              {
                goto LABEL_260;
              }

              v287 = *(v49 + 40);
              v342 = *(v26 + 32);
              v348 = *(v29 + 32);
              v333 = *(v29 + 40);
              v337 = *(v26 + 40);
              v369 = *(v10 + 32);
              v370 = *(v22 + 32);
              v367 = *(v22 + 40);
              v368 = *(v10 + 40);
              v407 = v3->i8[9];
              v408 = v3[1].i64[0];
              v390 = v3[1].i64[1];
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined copy of _Glass.Variant.ID(v26, v376);
              v144 = v29;
              v145 = v385;
              outlined copy of _Glass.Variant.ID(v372, v385);
              v146 = v360;
              outlined copy of _Glass.Variant.ID(v392, v360);
              v147 = v350;
              outlined copy of _Glass.Variant.ID(v350, v356);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              v148 = 2;
            }

            v323 = v148;
          }

          else
          {
            if ((v321 & 0xC0) != 0x80 || v314 || v321 != 128)
            {
LABEL_260:
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined copy of _Glass.Variant.ID(v26, v376);
              outlined copy of _Glass.Variant.ID(v372, v385);
              outlined copy of _Glass.Variant.ID(v392, v360);
              outlined copy of _Glass.Variant.ID(v350, v356);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined copy of _Glass.Variant.ID(v22, v411);
              outlined copy of _Glass.Variant.ID(v10, v11);
              outlined copy of _Glass.Variant.ID(v26, v376);
              outlined copy of _Glass.Variant.ID(v372, v385);
              outlined copy of _Glass.Variant.ID(v392, v360);
              outlined copy of _Glass.Variant.ID(v350, v356);
              outlined copy of _Glass.Variant.ID(v310, v305);
              outlined copy of _Glass.Variant.ID(v314, v321);
              v90 = v360;
              v91 = v392;
              outlined consume of _Glass.Variant.ID(v310, v305);
              outlined consume of _Glass.Variant.ID(v314, v321);
              goto LABEL_353;
            }

            v287 = *(v49 + 40);
            v342 = *(v26 + 32);
            v348 = *(v29 + 32);
            v333 = *(v29 + 40);
            v337 = *(v26 + 40);
            v369 = *(v10 + 32);
            v370 = *(v22 + 32);
            v367 = *(v22 + 40);
            v368 = *(v10 + 40);
            v407 = v3->i8[9];
            v408 = v3[1].i64[0];
            v390 = v3[1].i64[1];
            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            outlined copy of _Glass.Variant.ID(v26, v376);
            v144 = v29;
            v145 = v385;
            outlined copy of _Glass.Variant.ID(v372, v385);
            v146 = v360;
            outlined copy of _Glass.Variant.ID(v392, v360);
            v147 = v350;
            outlined copy of _Glass.Variant.ID(v350, v356);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
            v323 = 0;
          }

          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined copy of _Glass.Variant.ID(v404, v411);
          outlined copy of _Glass.Variant.ID(v10, v11);
          outlined copy of _Glass.Variant.ID(v381, v376);
          outlined copy of _Glass.Variant.ID(v144, v145);
          outlined copy of _Glass.Variant.ID(v392, v146);
          outlined copy of _Glass.Variant.ID(v147, v356);
          outlined consume of _Glass.Variant.ID(v310, v305);
          outlined consume of _Glass.Variant.ID(v323, 0x80u);
        }
      }

      else
      {
        if (v321 >= 0x40)
        {
          goto LABEL_260;
        }

        v342 = *(v26 + 32);
        v348 = *(v29 + 32);
        v333 = *(v29 + 40);
        v337 = *(v26 + 40);
        v369 = *(v10 + 32);
        v370 = *(v22 + 32);
        v367 = *(v22 + 40);
        v368 = *(v10 + 40);
        v407 = v3->i8[9];
        v408 = v3[1].i64[0];
        v390 = v3[1].i64[1];
        v281 = *(v310 + 16);
        v287 = *(v49 + 40);
        v137 = *(v310 + 24);
        v266 = *(v310 + 40);
        v138 = *(v310 + 48);
        v267 = *(v310 + 32);
        v271 = *(v314 + 16);
        v139 = *(v314 + 24);
        v265 = *(v314 + 32);
        v264 = *(v314 + 40);
        v140 = *(v314 + 48);
        outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
        v275 = v137;
        if (v137 >> 6)
        {
          if (v137 >> 6 == 1)
          {
            v141 = v139;
            if ((v139 & 0xC0) != 0x40)
            {
              goto LABEL_327;
            }

            v419 = v281;
            v420 = v137 & 0x3F;
            v417 = v271;
            v418 = v139 & 0x3F;
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            v260 = v139;
            outlined copy of _Glass.Variant.ID(v381, v376);
            outlined copy of _Glass.Variant.ID(v372, v385);
            outlined copy of _Glass.Variant.ID(v392, v360);
            outlined copy of _Glass.Variant.ID(v350, v356);
            outlined copy of _Glass.Variant.ID(v310, v305);
            outlined copy of _Glass.Variant.ID(v314, v321);
            outlined copy of _Glass.Variant.ID(v271, v139);
            outlined copy of _Glass.Variant.ID(v281, v137);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            outlined copy of _Glass.Variant.ID(v22, v411);
            outlined copy of _Glass.Variant.ID(v10, v11);
            v142 = v310;
            outlined copy of _Glass.Variant.ID(v381, v376);
            outlined copy of _Glass.Variant.ID(v372, v385);
            outlined copy of _Glass.Variant.ID(v392, v360);
            outlined copy of _Glass.Variant.ID(v350, v356);
            outlined copy of _Glass.Variant.ID(v310, v305);
            outlined copy of _Glass.Variant.ID(v314, v321);
            outlined copy of _Glass.Variant.ID(v271, v260);
            outlined copy of _Glass.Variant.ID(v281, v137);
            v257 = specialized static Material.ID.== infix(_:_:)(&v419, &v417);
            outlined consume of _Glass.Variant.ID(v281, v137);
            outlined consume of _Glass.Variant.ID(v271, v260);
            outlined consume of _Glass.Variant.ID(v271, v260);
            outlined consume of _Glass.Variant.ID(v281, v137);
            if ((v257 & 1) == 0)
            {
              goto LABEL_329;
            }
          }

          else
          {
            if (v281 | v137 ^ 0x80)
            {
              v195 = v137 == 128 && v281 == 1;
              v192 = v321;
              v141 = v139;
              v196 = v139 & 0xC0;
              if (v195)
              {
                if (v196 != 128 || v271 != 1 || v139 != 128)
                {
                  goto LABEL_328;
                }

                outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
                outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
                outlined copy of _Glass.Variant.ID(v381, v376);
                outlined copy of _Glass.Variant.ID(v372, v385);
                outlined copy of _Glass.Variant.ID(v392, v360);
                v197 = v356;
                outlined copy of _Glass.Variant.ID(v350, v356);
                outlined copy of _Glass.Variant.ID(v310, v305);
                outlined copy of _Glass.Variant.ID(v314, v321);
                outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
                v198 = 1;
              }

              else
              {
                if (v196 != 128 || v271 != 2 || v139 != 128)
                {
                  goto LABEL_328;
                }

                outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
                outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
                outlined copy of _Glass.Variant.ID(v381, v376);
                outlined copy of _Glass.Variant.ID(v372, v385);
                outlined copy of _Glass.Variant.ID(v392, v360);
                v197 = v356;
                outlined copy of _Glass.Variant.ID(v350, v356);
                outlined copy of _Glass.Variant.ID(v310, v305);
                outlined copy of _Glass.Variant.ID(v314, v321);
                outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
                v198 = 2;
              }
            }

            else
            {
              v141 = v139;
              v192 = v321;
              if ((v139 & 0xC0) != 0x80 || v271 || v139 != 128)
              {
                goto LABEL_328;
              }

              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
              outlined copy of _Glass.Variant.ID(v381, v376);
              outlined copy of _Glass.Variant.ID(v372, v385);
              outlined copy of _Glass.Variant.ID(v392, v360);
              v197 = v356;
              outlined copy of _Glass.Variant.ID(v350, v356);
              outlined copy of _Glass.Variant.ID(v310, v305);
              outlined copy of _Glass.Variant.ID(v314, v321);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
              v198 = 0;
            }

            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            outlined copy of _Glass.Variant.ID(v22, v411);
            outlined copy of _Glass.Variant.ID(v10, v11);
            outlined copy of _Glass.Variant.ID(v381, v376);
            outlined copy of _Glass.Variant.ID(v372, v385);
            outlined copy of _Glass.Variant.ID(v392, v360);
            outlined copy of _Glass.Variant.ID(v350, v197);
            outlined copy of _Glass.Variant.ID(v310, v305);
            outlined copy of _Glass.Variant.ID(v314, v192);
            outlined copy of _Glass.Variant.ID(v198, 0x80u);
            outlined consume of _Glass.Variant.ID(v281, v275);
            outlined consume of _Glass.Variant.ID(v198, 0x80u);
            v142 = v310;
          }
        }

        else
        {
          v141 = v139;
          if (v139 >= 0x40)
          {
LABEL_327:
            outlined copy of _Glass.Variant.ID(v281, v137);
            v192 = v321;
LABEL_328:
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            outlined copy of _Glass.Variant.ID(v381, v376);
            outlined copy of _Glass.Variant.ID(v372, v385);
            outlined copy of _Glass.Variant.ID(v392, v360);
            outlined copy of _Glass.Variant.ID(v350, v356);
            outlined copy of _Glass.Variant.ID(v310, v305);
            outlined copy of _Glass.Variant.ID(v314, v192);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
            outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
            outlined copy of _Glass.Variant.ID(v22, v411);
            outlined copy of _Glass.Variant.ID(v10, v11);
            outlined copy of _Glass.Variant.ID(v381, v376);
            outlined copy of _Glass.Variant.ID(v372, v385);
            outlined copy of _Glass.Variant.ID(v392, v360);
            outlined copy of _Glass.Variant.ID(v350, v356);
            v142 = v310;
            outlined copy of _Glass.Variant.ID(v310, v305);
            outlined copy of _Glass.Variant.ID(v314, v321);
            outlined copy of _Glass.Variant.ID(v271, v141);
            outlined consume of _Glass.Variant.ID(v281, v275);
            outlined consume of _Glass.Variant.ID(v271, v141);
            goto LABEL_329;
          }

          v253 = *(v281 + 32);
          v252 = *(v281 + 40);
          v258 = *(v271 + 16);
          v251 = *(v271 + 32);
          v250 = *(v271 + 40);
          v248 = *(v271 + 48);
          v249 = *(v281 + 48);
          v254 = *(v281 + 24);
          v256 = *(v271 + 24);
          v419 = *(v281 + 16);
          v255 = v419;
          v420 = v254;
          v417 = v258;
          v418 = v256;
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined copy of _Glass.Variant.ID(v381, v376);
          outlined copy of _Glass.Variant.ID(v372, v385);
          outlined copy of _Glass.Variant.ID(v392, v360);
          outlined copy of _Glass.Variant.ID(v350, v356);
          outlined copy of _Glass.Variant.ID(v310, v305);
          outlined copy of _Glass.Variant.ID(v314, v321);
          outlined copy of _Glass.Variant.ID(v271, v139);
          outlined copy of _Glass.Variant.ID(v281, v137);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
          outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined copy of _Glass.Variant.ID(v22, v411);
          outlined copy of _Glass.Variant.ID(v10, v11);
          outlined copy of _Glass.Variant.ID(v381, v376);
          outlined copy of _Glass.Variant.ID(v372, v385);
          outlined copy of _Glass.Variant.ID(v392, v360);
          outlined copy of _Glass.Variant.ID(v350, v356);
          outlined copy of _Glass.Variant.ID(v310, v305);
          outlined copy of _Glass.Variant.ID(v314, v321);
          outlined copy of _Glass.Variant.ID(v271, v139);
          outlined copy of _Glass.Variant.ID(v281, v137);
          outlined copy of _Glass.Variant.ID(v255, v254);
          outlined copy of _Glass.Variant.ID(v258, v256);
          v191 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v419, &v417);
          outlined consume of _Glass.Variant.ID(v417, v418);
          outlined consume of _Glass.Variant.ID(v419, v420);
          if ((v191 & 1) == 0)
          {
            outlined consume of _Glass.Variant.ID(v281, v137);
            outlined consume of _Glass.Variant.ID(v271, v139);
            outlined consume of _Glass.Variant.ID(v271, v139);
            outlined consume of _Glass.Variant.ID(v281, v137);
            v142 = v310;
LABEL_329:
            outlined consume of _Glass.Variant.ID(v142, v305);
            outlined consume of _Glass.Variant.ID(v314, v321);
            outlined consume of _Glass.Variant.ID(v314, v321);
            v193 = v142;
            v194 = v305;
            goto LABEL_352;
          }

          *&v426[0] = v253;
          BYTE8(v426[0]) = v252;
          v419 = v251;
          v420 = v250;
          outlined copy of _Glass.Variant.ID(v253, v252);
          outlined copy of _Glass.Variant.ID(v251, v250);
          v259 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
          outlined consume of _Glass.Variant.ID(v419, v420);
          outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
          outlined consume of _Glass.Variant.ID(v281, v137);
          outlined consume of _Glass.Variant.ID(v271, v139);
          outlined consume of _Glass.Variant.ID(v271, v139);
          outlined consume of _Glass.Variant.ID(v281, v137);
          v142 = v310;
          if ((v259 & 1) == 0 || v249 != v248)
          {
            goto LABEL_329;
          }
        }

        *&v426[0] = v267;
        BYTE8(v426[0]) = v266;
        v419 = v265;
        v420 = v264;
        outlined copy of _Glass.Variant.ID(v267, v266);
        outlined copy of _Glass.Variant.ID(v265, v264);
        v285 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
        outlined consume of _Glass.Variant.ID(v419, v420);
        outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
        outlined consume of _Glass.Variant.ID(v142, v305);
        outlined consume of _Glass.Variant.ID(v314, v321);
        outlined consume of _Glass.Variant.ID(v314, v321);
        outlined consume of _Glass.Variant.ID(v142, v305);
        v90 = v360;
        v91 = v392;
        if ((v285 & 1) == 0 || v138 != v140)
        {
          goto LABEL_353;
        }
      }

      if (v287 >> 6)
      {
        v153 = v291;
        if (v287 >> 6 == 1)
        {
          if ((v291 & 0xC0) != 0x40)
          {
            goto LABEL_351;
          }

          *&v426[0] = v297;
          BYTE8(v426[0]) = v287 & 0x3F;
          v419 = v301;
          v420 = v291 & 0x3F;
          outlined copy of _Glass.Variant.ID(v297, v287);
          outlined copy of _Glass.Variant.ID(v301, v291);
          outlined copy of _Glass.Variant.ID(v297, v287);
          outlined copy of _Glass.Variant.ID(v301, v291);
          v324 = specialized static Material.ID.== infix(_:_:)(v426, &v419);
          outlined consume of _Glass.Variant.ID(v297, v287);
          outlined consume of _Glass.Variant.ID(v301, v291);
          outlined consume of _Glass.Variant.ID(v301, v291);
          outlined consume of _Glass.Variant.ID(v297, v287);
          outlined consume of _Glass.Variant.ID(v392, v360);
          outlined consume of _Glass.Variant.ID(v350, v356);
          outlined consume of _Glass.Variant.ID(v350, v356);
          outlined consume of _Glass.Variant.ID(v392, v360);
          v58 = v376;
          if ((v324 & 1) == 0 || v88 != v89)
          {
            goto LABEL_356;
          }

          goto LABEL_160;
        }

        if (v297 | v287 ^ 0x80)
        {
          v160 = v291 & 0xC0;
          if (v287 == 128 && v297 == 1)
          {
            if (v160 != 128 || v301 != 1 || v291 != 128)
            {
              goto LABEL_351;
            }

            v162 = 1;
          }

          else
          {
            if (v160 != 128 || v301 != 2 || v291 != 128)
            {
              goto LABEL_351;
            }

            v162 = 2;
          }
        }

        else
        {
          if ((v291 & 0xC0) != 0x80 || v301 || v291 != 128)
          {
LABEL_351:
            outlined copy of _Glass.Variant.ID(v297, v287);
            outlined copy of _Glass.Variant.ID(v301, v153);
            outlined consume of _Glass.Variant.ID(v297, v287);
            v193 = v301;
            v194 = v153;
            goto LABEL_352;
          }

          v162 = 0;
        }

        outlined consume of _Glass.Variant.ID(v297, v287);
        outlined consume of _Glass.Variant.ID(v162, 0x80u);
        outlined consume of _Glass.Variant.ID(v392, v360);
        outlined consume of _Glass.Variant.ID(v350, v356);
        v159 = v392;
        v90 = v360;
        outlined consume of _Glass.Variant.ID(v350, v356);
      }

      else
      {
        v153 = v291;
        if (v291 >= 0x40)
        {
          goto LABEL_351;
        }

        v282 = *(v297 + 32);
        v276 = *(v297 + 40);
        v154 = *(v297 + 48);
        v325 = *(v301 + 16);
        v272 = *(v301 + 32);
        v268 = *(v301 + 40);
        v155 = *(v301 + 48);
        v156 = *(v297 + 24);
        v308 = v156;
        v157 = *(v301 + 24);
        v315 = v157;
        *&v426[0] = *(v297 + 16);
        v313 = *&v426[0];
        BYTE8(v426[0]) = v156;
        v419 = v325;
        v420 = v157;
        outlined copy of _Glass.Variant.ID(v297, v287);
        outlined copy of _Glass.Variant.ID(v301, v291);
        outlined copy of _Glass.Variant.ID(v297, v287);
        outlined copy of _Glass.Variant.ID(v301, v291);
        outlined copy of _Glass.Variant.ID(v313, v308);
        outlined copy of _Glass.Variant.ID(v325, v315);
        v158 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
        outlined consume of _Glass.Variant.ID(v419, v420);
        outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
        if ((v158 & 1) == 0)
        {
          outlined consume of _Glass.Variant.ID(v297, v287);
          outlined consume of _Glass.Variant.ID(v301, v291);
          outlined consume of _Glass.Variant.ID(v301, v291);
          v193 = v297;
          v194 = v287;
LABEL_352:
          outlined consume of _Glass.Variant.ID(v193, v194);
          v90 = v360;
          v91 = v392;
LABEL_353:
          outlined consume of _Glass.Variant.ID(v91, v90);
          v159 = v91;
          outlined consume of _Glass.Variant.ID(v350, v356);
          outlined consume of _Glass.Variant.ID(v350, v356);
LABEL_354:
          v150 = v159;
          v151 = v90;
LABEL_355:
          outlined consume of _Glass.Variant.ID(v150, v151);
          v58 = v376;
LABEL_356:
          v149 = v411;
          outlined consume of _Glass.Variant.ID(v381, v58);
          outlined consume of _Glass.Variant.ID(v372, v385);
          outlined consume of _Glass.Variant.ID(v372, v385);
LABEL_357:
          outlined consume of _Glass.Variant.ID(v381, v58);
          v22 = v404;
          v37 = v149;
LABEL_358:
          v2 = v412;
LABEL_359:
          outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(v421, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
          outlined consume of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 0);
          outlined consume of _Glass.Variant.ID(v10, v11);
          v199 = v22;
          v200 = v37;
          goto LABEL_360;
        }

        *&v426[0] = v282;
        BYTE8(v426[0]) = v276;
        v419 = v272;
        v420 = v268;
        outlined copy of _Glass.Variant.ID(v282, v276);
        outlined copy of _Glass.Variant.ID(v272, v268);
        v326 = specialized static _Glass.Variant.ID.== infix(_:_:)(v426, &v419);
        outlined consume of _Glass.Variant.ID(v419, v420);
        outlined consume of _Glass.Variant.ID(*&v426[0], BYTE8(v426[0]));
        outlined consume of _Glass.Variant.ID(v297, v287);
        outlined consume of _Glass.Variant.ID(v301, v291);
        outlined consume of _Glass.Variant.ID(v301, v291);
        outlined consume of _Glass.Variant.ID(v297, v287);
        v90 = v360;
        outlined consume of _Glass.Variant.ID(v392, v360);
        outlined consume of _Glass.Variant.ID(v350, v356);
        v159 = v392;
        outlined consume of _Glass.Variant.ID(v350, v356);
        if ((v326 & 1) == 0 || v154 != v155)
        {
          goto LABEL_354;
        }
      }

      outlined consume of _Glass.Variant.ID(v159, v90);
      v58 = v376;
      if (v88 != v89)
      {
        goto LABEL_356;
      }

      goto LABEL_160;
    }

    if (v14 != 1)
    {
      if (v3[2].i8[0] == 2)
      {
        v21 = vorrq_s8(*v3, v3[1]);
        if (!*&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)))
        {
          outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(v421, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
          return 1;
        }
      }

      outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
      goto LABEL_5;
    }

    if (v3[2].i8[0] != 1 || v3->i32[0] != v10)
    {
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
      v16 = v10;
      v17 = v11;
      v18 = v13;
      v19 = v12;
      v20 = 1;
LABEL_21:
      outlined copy of GlassContainer.Entry.ModelID(v16, v17, v18, v19, v20);
LABEL_5:
      outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(v421, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
      goto LABEL_6;
    }

    v15 = v3->i64[1];
    if (!v11)
    {
      break;
    }

    if (!v15)
    {
      outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 1);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
      outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 1);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
      v42 = v11;
      goto LABEL_47;
    }

    v410 = v3[1].i64[0];
    if (v11 == v15)
    {
      outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 1);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
      outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 1);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
      outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 1);
    }

    else
    {
      v409 = *(*v11 + 112);
      outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 1);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
      outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 1);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
      outlined copy of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 1);
      swift_retain_n();
      v2 = v412;
      v48 = v409(v15);

      if ((v48 & 1) == 0)
      {

        goto LABEL_48;
      }
    }

    outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(v421, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
    outlined destroy of GlassContainer.Entry.ModelID(v3);
    outlined consume of GlassContainer.Entry.ModelID(v10, v11, v13, v12, 1);
    v6 = v413;
    if (v13 == v410)
    {
      return 1;
    }

LABEL_6:
    v8 = (v8 + 1) & v414;
    if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  outlined copy of GlassContainer.Entry.ModelID(v10, 0, v13, v12, 1);
  if (v15)
  {
    outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
    outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
    outlined copy of GlassContainer.Entry.ModelID(v10, 0, v13, v12, 1);
    outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
    v42 = 0;
LABEL_47:
    outlined copy of GlassContainer.Entry.ModelID(v10, v42, v13, v12, 1);

LABEL_48:
    outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(v421, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
    outlined destroy of GlassContainer.Entry.ModelID(v3);
    v43 = v10;
    v44 = v11;
    v45 = v13;
    v46 = v12;
    v47 = 1;
    goto LABEL_68;
  }

  outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
  outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
  outlined copy of GlassContainer.Entry.ModelID(v10, 0, v13, v12, 1);
  outlined init with copy of GlassContainer.Entry.ModelID(v3, v426);
  outlined copy of GlassContainer.Entry.ModelID(v10, 0, v13, v12, 1);
  outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(v421, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
  outlined destroy of GlassContainer.Entry.ModelID(v3);
  outlined consume of GlassContainer.Entry.ModelID(v10, 0, v13, v12, 1);
  return 1;
}